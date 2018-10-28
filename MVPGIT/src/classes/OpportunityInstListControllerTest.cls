@isTest
public class OpportunityInstListControllerTest {
    @isTest static void testNoParamater()
    {
        OpportunityInstitutionsListController controller = new OpportunityInstitutionsListController();
        System.assertEquals(null, controller.OpptyId);
        System.assertEquals(null, controller.OpptyAccountId);
    }
    
    @isTest static void testWithParamater()
    {
        ApexPages.currentPage().getParameters().put('OpptyId', '0067A000003sqtx');
        ApexPages.currentPage().getParameters().put('OpptyAccountId', '0017A00000Hx3Um');
        OpportunityInstitutionsListController controller = new OpportunityInstitutionsListController();
        System.assertEquals('0067A000003sqtx', controller.OpptyId);
        System.assertEquals('0017A00000Hx3Um', controller.OpptyAccountId);
    }
    
    @isTest static void testCancel()
    {
        ApexPages.currentPage().getParameters().put('OpptyId', '0067A000003sqtx');
        ApexPages.currentPage().getParameters().put('OpptyAccountId', '0017A00000Hx3Um');
        OpportunityInstitutionsListController controller = new OpportunityInstitutionsListController();
        String nextPage = controller.cancel().getUrl();
        System.assertEquals('/0067A000003sqtx', nextPage);
    } 
    
    @isTest static void testSelectAll()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        Opportunity oppty = new Opportunity(Name='Test Oppty', AccountId = a.Id, CloseDate = date.today(), StageName='Prospecting');
        insert oppty;
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',School_type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',School_type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        insert childrenAccounts;
        
        ApexPages.currentPage().getParameters().put('OpptyId', oppty.Id);
        ApexPages.currentPage().getParameters().put('OpptyAccountId', parentAccount.Id);
        OpportunityInstitutionsListController controller = new OpportunityInstitutionsListController();
        controller.getOpptyInstitutionObjects();
        controller.selectAll();
        for(OpportunityInstitutionsListController.cOpptyInstitution oi : controller.opptyInstitutionList)
        {
            System.assertEquals(true, oi.selected);
        }
    }

    @isTest static void testUnselectAll()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        Opportunity oppty = new Opportunity(Name='Test Oppty', AccountId = a.Id, CloseDate = date.today(), StageName='Prospecting');
        insert oppty;
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',School_Type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',School_Type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        insert childrenAccounts;
        
        ApexPages.currentPage().getParameters().put('OpptyId', oppty.Id);
        ApexPages.currentPage().getParameters().put('OpptyAccountId', parentAccount.Id);
        OpportunityInstitutionsListController controller = new OpportunityInstitutionsListController();
        controller.getOpptyInstitutionObjects();
        controller.unselectAll();
        for(OpportunityInstitutionsListController.cOpptyInstitution oi : controller.opptyInstitutionList)
        {
            System.assertEquals(false, oi.selected);
        }
    }
    
    @isTest static void testInstitutionHierarchy()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        Opportunity oppty = new Opportunity(Name='Test Oppty', AccountId = a.Id, CloseDate = date.today(), StageName='Prospecting');
        insert oppty;
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',School_Type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',School_Type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        insert childrenAccounts;
        
        ApexPages.currentPage().getParameters().put('OpptyId', oppty.Id);
        ApexPages.currentPage().getParameters().put('OpptyAccountId', parentAccount.Id);
        OpportunityInstitutionsListController controller = new OpportunityInstitutionsListController();
        controller.getOpptyInstitutionObjects();
    }
    
    @isTest static void testProcessStelectionSelected()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        Opportunity oppty = new Opportunity(Name='Test Oppty', AccountId = a.Id, CloseDate = date.today(), StageName='Prospecting');
        insert oppty;
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',School_Type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',School_Type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        insert childrenAccounts;
        
        ApexPages.currentPage().getParameters().put('OpptyId', oppty.Id);
        ApexPages.currentPage().getParameters().put('OpptyAccountId', parentAccount.Id);
        OpportunityInstitutionsListController controller = new OpportunityInstitutionsListController();
        controller.getOpptyInstitutionObjects();
        controller.unselectAll();
        controller.processSelection();
    }
    
    @isTest static void testProcessStelectionUnselected()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        Opportunity oppty = new Opportunity(Name='Test Oppty', AccountId = a.Id, CloseDate = date.today(), StageName='Prospecting');
        insert oppty;
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',School_Type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',School_Type__c = 'Other',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        insert childrenAccounts;
        
        ApexPages.currentPage().getParameters().put('OpptyId', oppty.Id);
        ApexPages.currentPage().getParameters().put('OpptyAccountId', parentAccount.Id);
        OpportunityInstitutionsListController controller = new OpportunityInstitutionsListController();
        controller.getOpptyInstitutionObjects();
        controller.unselectAll();
        controller.processSelection();
    }
}