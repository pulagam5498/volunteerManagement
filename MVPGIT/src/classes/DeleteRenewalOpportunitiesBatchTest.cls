@isTest
private class DeleteRenewalOpportunitiesBatchTest {
    @isTest static void deleteRenewalOppsTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account a = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c = FALSE);
        insert opp;
        
        DeleteRenewalOpportunitiesBatch deleteOpp = new DeleteRenewalOpportunitiesBatch();
        Database.executeBatch(deleteOpp, 10);
    }
}