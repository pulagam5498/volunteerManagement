global class ClearRenewalProcessFlagBatch implements Database.Batchable<sObject> {
	public String option { get; set; } 
    public Set<Id> opUnitIds { get; set; } 
    
    global ClearRenewalProcessFlagBatch(){}

    global ClearRenewalProcessFlagBatch(String selectedOption, Set<Id> operatingUnitIds)
    {
        option = selectedOption;
        opUnitIds = operatingUnitIds;
    }
    
    //Start Method
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id, Name, Operating_Unit__c, Accreditation_Bill_To__c, Processed_for_Renewal__c '; 
        query += 'FROM Account ';
        //query += 'WHERE Accreditation_Annual__c = TRUE ';     
        query += 'WHERE Annual_Accreditation_Billing_Code__c != \'\' ';
        query += 'AND Operating_Unit__c IN :opUnitIds ';
        query += 'AND Active__c = TRUE ';
        query += 'AND Processed_for_Renewal__c = TRUE ';
        
        if(option == 'School')
        {
            query += 'AND Accreditation_Billing_Account__c = \'\' ';
            query += 'AND (ChildrenAccounts__c = null OR ChildrenAccounts__c = 0) ';
        }
        else if (option == 'District')
        {
            query += 'AND Accreditation_Billing_Account__c != \'\' ';
            //soqlQuery += 'AND (ChildrenAccounts__c != null AND ChildrenAccounts__c != 0) ';
        }       
        return Database.getQueryLocator(query);
    }
    
    //Execute method
    global void execute (Database.BatchableContext BC, List<Account> scope) 
    {
        //List<Account> updateAccount = new List<Account>();
        for(Account a : scope)
        {
            a.Processed_for_Renewal__c = false;
        }
        update scope;
    }
    
    //Finish Method
  	global void finish(Database.BatchableContext BC)
    {
        String query = 'SELECT Id, Name, Operating_Unit__c, Accreditation_Bill_To__c, Processed_for_Renewal__c '; 
        query += 'FROM Account ';
        //query += 'WHERE Accreditation_Annual__c = TRUE ';     
        query += 'WHERE Annual_Accreditation_Billing_Code__c != \'\' ';
        query += 'AND Operating_Unit__c IN :opUnitIds ';
        query += 'AND Active__c = TRUE ';
        query += 'AND Processed_for_Renewal__c = TRUE ';
        
        if(option == 'School')
        {
            query += 'AND Accreditation_Billing_Account__c = \'\' ';
            query += 'AND (ChildrenAccounts__c = null OR ChildrenAccounts__c = 0) ';
        }
        else if (option == 'District')
        {
            query += 'AND Accreditation_Billing_Account__c != \'\' ';
            //soqlQuery += 'AND (ChildrenAccounts__c != null AND ChildrenAccounts__c != 0) ';
        }       
        
        List<Account> accs = Database.query(query);
        
        if(accs.size() > 0)
        {
            Database.executeBatch(new ClearRenewalProcessFlagBatch(option, opUnitIds), 10);
        }
        else
        {
            AsyncApexJob a =  [SELECT Id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email
                               FROM AsyncApexJob WHERE Id = :BC.getJobId()];
            // Send an email to the Apex job's submitter 
            // //   notifying of job completion. 
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[] {a.CreatedBy.Email};
            mail.setToAddresses(toAddresses);
            mail.setSubject('Clear Renewal Processed Flag Status: ' + a.Status);
            mail.setPlainTextBody('The batch Apex job Clear Renewal Processed Flag processed ' + a.TotalJobItems +
                                  ' batches with '+ a.NumberOfErrors + ' failures.');
            
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
    }
    
}