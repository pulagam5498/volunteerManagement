global class CreateRenewalOpportunitiesBatch implements Database.Batchable<sObject> {
    public String option { get; set; } 
    public Set<Id> opUnitIds { get; set; } 
    public String countryOption { get; set; } 
    
    global CreateRenewalOpportunitiesBatch(){}
    
    global CreateRenewalOpportunitiesBatch(String selectedOption, String selectedCountryOption, Set<Id> operatingUnitIds)
    {
        option = selectedOption;
        opUnitIds = operatingUnitIds;
        countryOption = selectedCountryOption;
    }
    
    //Start Method
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id, Name, Operating_Unit__c, Accreditation_Bill_To__c, Processed_for_Renewal__c '; 
        query += 'FROM Account ';
        query += 'WHERE Accreditation_Annual__c = TRUE ';     
        query += 'AND Annual_Accreditation_Billing_Code__c != \'\' ';     
        query += 'AND Operating_Unit__c IN :opUnitIds ';
        query += 'AND Active__c = TRUE ';
        query += 'AND Processed_for_Renewal__c = FALSE ';
        //query += 'AND Processed_for_Renewal__c = ' + renewalProcessed + ' ';
        
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
        Map<String, String> billToAccounts = new Map<String, String>();   
        for(Account a : accs)
        {
            billToAccounts.put(a.Accreditation_Bill_To__c, a.Accreditation_Bill_To__c);
        }
        Set<String> accountIds = billToAccounts.keySet();
        
        query = 'SELECT Id, Name, Accreditation_Bill_To__c FROM Account WHERE Id = :accountIds ';
        if(countryOption != 'All')
        {
            query += 'AND PriceBookCountry__c = \'' + countryOption + '\'';
        }
        return Database.getQueryLocator(query);
        
            
        //return Database.getQueryLocator('SELECT Id, Name, Accreditation_Bill_To__c FROM Account WHERE Id = :accountIds ');
    }
    
    //Execute method
    global void execute (Database.BatchableContext BC, List<Account> scope) 
    {
        for(Account a : scope)
        {
            Map<String, object> varMap = new Map<String, object>();
            varMap.put('BillToAccountId', a.Id);
            //varMap.put('CountryOption', countryOption);
            Flow.Interview.Account_Renewal_Opportunity_Create_Renewal_Oppty createOppty = new Flow.Interview.Account_Renewal_Opportunity_Create_Renewal_Oppty(varMap);
            createOppty.start();
                
            varMap.clear();
        }
    }
    
    //Finish Method
    global void finish(Database.BatchableContext BC)
    {
        String query = 'SELECT Id, Name, Operating_Unit__c, Accreditation_Bill_To__c, Processed_for_Renewal__c '; 
        query += 'FROM Account ';
        query += 'WHERE Accreditation_Annual__c = TRUE ';     
        query += 'AND Annual_Accreditation_Billing_Code__c != \'\' ';
        query += 'AND Operating_Unit__c IN :opUnitIds ';
        query += 'AND Active__c = TRUE ';
        query += 'AND Processed_for_Renewal__c = FALSE ';
        //query += 'AND Processed_for_Renewal__c = ' + renewalProcessed + ' ';
        
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
        Map<String, String> billToAccounts = new Map<String, String>();   
        for(Account a : accs)
        {
            billToAccounts.put(a.Accreditation_Bill_To__c, a.Accreditation_Bill_To__c);
        }
        Set<String> accountIds = billToAccounts.keySet();
        
        query = 'SELECT Id, Name, Accreditation_Bill_To__c FROM Account WHERE Id = :accountIds ';
        if(countryOption != 'All')
        {
            query += 'AND PriceBookCountry__c = \'' + countryOption + '\'';
        }

        accs.clear();
        accs = Database.query(query);
        
        if(accs.size() > 0)
        {
            Database.executeBatch(new CreateRenewalOpportunitiesBatch(option, countryOption, opUnitIds), 10);
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
            mail.setSubject('Create Renewal Opportunities Status: ' + a.Status);
            mail.setPlainTextBody('The batch Apex job Create Renewal Opportunities processed ' + a.TotalJobItems +
                              ' batches with '+ a.NumberOfErrors + ' failures.');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
    }
    
}