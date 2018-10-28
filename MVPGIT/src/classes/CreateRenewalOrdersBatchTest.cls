@isTest 
private class CreateRenewalOrdersBatchTest {

    @isTest static void createRenewOrders()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account a = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Actual_Org_Status__c='Accredited');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', AccountId = a.Id, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c=FALSE);
        insert opp;
        
        Set<Id> accountIds = new Set<Id>();
        accountIds.add(oppUnit.Id);       
        
        CreateRenewalOrdersBatch b = new CreateRenewalOrdersBatch();
        b = new CreateRenewalOrdersBatch(accountIds);
        Database.executeBatch(b, 10);
    }
}