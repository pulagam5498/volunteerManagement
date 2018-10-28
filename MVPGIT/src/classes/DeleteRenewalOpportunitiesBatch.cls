global class DeleteRenewalOpportunitiesBatch implements Database.Batchable<sObject> {
    global DeleteRenewalOpportunitiesBatch(){}
    
    //Start Method
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id, Name '; 
        query += 'FROM Opportunity ';
        query += 'WHERE Renewal_Process__c = TRUE ';     
        return Database.getQueryLocator(query);
    }
    
    //Execute method
    global void execute (Database.BatchableContext BC, List<Opportunity> scope) 
    {
        delete scope;
    }
    
    //Finish Method
  	global void finish(Database.BatchableContext BC)
    {       
        AsyncApexJob a =  [SELECT Id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email
                           FROM AsyncApexJob WHERE Id = :BC.getJobId()];
        // Send an email to the Apex job's submitter 
        // //   notifying of job completion. 
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {a.CreatedBy.Email};
        mail.setToAddresses(toAddresses);
        mail.setSubject('Delete Renewal Opportunities Status: ' + a.Status);
        mail.setPlainTextBody('The batch Apex job Delete Renewal Opportunities processed ' + a.TotalJobItems +
                              ' batches with '+ a.NumberOfErrors + ' failures.');
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
 
}