@isTest public class CreateRenewalOpportunitiesControllerTest {
    
    @isTest static void CreateRenewalOpportunitiesControllerTest()
    {
        CreateRenewalOpportunitiesController controller = new CreateRenewalOpportunitiesController();
    }

    
    @isTest static void selectAllOpUnitTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District');
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School'));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School'));    
        insert childrenAccounts;
        
        CreateRenewalOpportunitiesController controller = new CreateRenewalOpportunitiesController();
        controller.getOperatingUnits();
        controller.selectAllOpUnit();
    }
    
    @isTest static void unselectAllOpUnitTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District');
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School'));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School'));    
        insert childrenAccounts;
        
        CreateRenewalOpportunitiesController controller = new CreateRenewalOpportunitiesController();
        controller.getOperatingUnits();
        controller.selectAllOpUnit();
        controller.unselectAllOpUnit();
    }
    
    @isTest static void processOpUnitSelectionTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District');
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School',Accreditation_Billing_Account__c = a.Id, Accreditation_Annual__c=TRUE));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School',Accreditation_Billing_Account__c = a.Id, Accreditation_Annual__c=TRUE));    
        insert childrenAccounts;
        
        CreateRenewalOpportunitiesController controller = new CreateRenewalOpportunitiesController();
        controller.getOperatingUnits();
        controller.selectAllOpUnit();
        controller.processOpUnitSelection();
    }
    
    @isTest static void clearRenewalProcessedFlagTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District',Processed_for_Renewal__c=true);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School',Accreditation_Billing_Account__c = a.Id, Accreditation_Annual__c=TRUE,Processed_for_Renewal__c=true));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, School_Type__c='School',Accreditation_Billing_Account__c = a.Id, Accreditation_Annual__c=TRUE,Processed_for_Renewal__c=true));    
        insert childrenAccounts;
        
        CreateRenewalOpportunitiesController controller = new CreateRenewalOpportunitiesController();
        controller.getOperatingUnits();
        controller.selectAllOpUnit();
        controller.clearRenewalProcessedFlag();
        
    }
    @isTest static void deleteRenewalOpptyTest()
    {
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account a = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c = FALSE);
        insert opp;
        CreateRenewalOpportunitiesController controller = new CreateRenewalOpportunitiesController();
        controller.deleteRenewalOppty();
    }
    
    @isTest static void createRenewalOrdersTest()
    {
        /*Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        Account a = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', AccountId = a.Id, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c = FALSE);
        insert opp;
        
        Set<Id> opUnitIds = new Set<Id>();
        opUnitIds.add(opp.Id);*/
        
        CreateRenewalOpportunitiesController controller = new CreateRenewalOpportunitiesController();
        controller.createRenewalOrders();
    }
    
}