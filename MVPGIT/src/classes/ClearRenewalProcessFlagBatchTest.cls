@isTest 
private class ClearRenewalProcessFlagBatchTest {
     @isTest static void clearRenewalProcessFlagBatchAllTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Accreditation_Annual__c = TRUE, Active__c = TRUE, Actual_Org_Status__c = 'Accredited', Processed_for_Renewal__c = TRUE);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School', Accreditation_Billing_Account__c = a.Id, Accreditation_Annual__c = TRUE, Active__c = TRUE, Actual_Org_Status__c = 'Accredited', Processed_for_Renewal__c = TRUE));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School', Accreditation_Billing_Account__c = a.Id, Accreditation_Annual__c = TRUE, Active__c = TRUE, Actual_Org_Status__c = 'Accredited', Processed_for_Renewal__c = TRUE));    
        insert childrenAccounts;
        
        Test.startTest();
        Set<Id> opUnitIds = new Set<Id>();
        opUnitIds.add(oppUnit.Id);
        ClearRenewalProcessFlagBatch b = new ClearRenewalProcessFlagBatch('All',opUnitIds);
        Database.executeBatch(b);
        Test.stopTest();
    }
    
    @isTest static void clearRenewalProcessFlagBatchDistrictTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Accreditation_Annual__c = TRUE, Active__c = TRUE,Actual_Org_Status__c = 'Accredited', Processed_for_Renewal__c = TRUE);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School', Accreditation_Billing_Account__c = a.Id, Accreditation_Annual__c = TRUE, Active__c = TRUE, Actual_Org_Status__c = 'Accredited', Processed_for_Renewal__c = TRUE));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School', Accreditation_Billing_Account__c = a.Id, Accreditation_Annual__c = TRUE, Active__c = TRUE, Actual_Org_Status__c = 'Accredited', Processed_for_Renewal__c = TRUE));    
        insert childrenAccounts;
        
        Test.startTest();
        Set<Id> opUnitIds = new Set<Id>();
        opUnitIds.add(oppUnit.Id);
        ClearRenewalProcessFlagBatch b = new ClearRenewalProcessFlagBatch('District',opUnitIds);
        Database.executeBatch(b);
        Test.stopTest();
    }
    
     @isTest static void clearRenewalProcessFlagBatchSchoolTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account parentAccount = new Account(Name = 'ParentAccount', Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='School', Accreditation_Annual__c = TRUE, Active__c = TRUE, Actual_Org_Status__c= 'Accredited', Processed_for_Renewal__c = TRUE);
        insert parentAccount;
        
        Test.startTest();
        Set<Id> opUnitIds = new Set<Id>();
        opUnitIds.add(oppUnit.Id);
        ClearRenewalProcessFlagBatch b = new ClearRenewalProcessFlagBatch('School',opUnitIds);
        Database.executeBatch(b);
        Test.stopTest();
    }

}