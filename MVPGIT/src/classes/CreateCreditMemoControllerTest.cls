@isTest
private class CreateCreditMemoControllerTest {

    @isTest static void CreateCreditMemoControllerTest()
    {
        CreateCreditMemoController controller = new CreateCreditMemoController();
    }
    
    @isTest static void getOrderItemListNoItemsTest()
    {
        Product2 p = new Product2(Name= 'Test', ProductCode = 'Test', IsActive = true, Number_of_Months_Term__c= 12, Default_Qty__c = 1);
        insert p;
        
        Pricebook2 pb = new Pricebook2(Name= 'Test', Description = 'Test pricebook', Region__c= 'Domestic', IsActive = true);
        insert pb;
        
        Id standardPB = Test.getStandardPricebookId();
        PricebookEntry pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = standardPB, Product2Id = p.Id);
        insert pbe;
        
        pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = pb.Id, Product2Id = p.Id);
        insert pbe;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account a = new Account(Name = 'Account', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Actual_Org_Status__c='Accredited');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c=FALSE);
        insert opp;
        
        Order o = new Order(OpportunityId = opp.Id, AccountId = a.Id, Status = 'Draft', EffectiveDate = Date.today(), Type = 'Sales Order', Pricebook2Id = pb.Id);
        insert o;
        
        CreateCreditMemoController controller = new CreateCreditMemoController();
        controller.orderId = o.Id;
        controller.getOrderItemList();
    }
    
    @isTest static void getOrderItemListTest()
    {
        Product2 p = new Product2(Name= 'Test', ProductCode = 'Test', IsActive = true, Number_of_Months_Term__c= 12, Default_Qty__c = 1);
        insert p;
        
        Pricebook2 pb = new Pricebook2(Name= 'Test', Description = 'Test pricebook', Region__c= 'Domestic', IsActive = true);
        insert pb;
        
        Id standardPB = Test.getStandardPricebookId();
        PricebookEntry pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = standardPB, Product2Id = p.Id);
        insert pbe;
        
        pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = pb.Id, Product2Id = p.Id);
        insert pbe;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account a = new Account(Name = 'Account', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Actual_Org_Status__c='Accredited');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c=FALSE);
        insert opp;
        
        Order o = new Order(OpportunityId = opp.Id, AccountId = a.Id, Status = 'Draft', EffectiveDate = Date.today(), Type = 'Sales Order', Pricebook2Id = pb.Id);
        insert o;
        
        OrderItem oi = new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, Quantity = 1, UnitPrice = 500, Account__c = a.Id, Term_Months__c = 12);
        insert oi;
        
        CreateCreditMemoController controller = new CreateCreditMemoController();
        controller.orderId = o.Id;
        controller.getOrderItemList();
    }
    
    @isTest static void cancelTest()
    {
        Product2 p = new Product2(Name= 'Test', ProductCode = 'Test', IsActive = true, Number_of_Months_Term__c= 12, Default_Qty__c = 1);
        insert p;
        
        Pricebook2 pb = new Pricebook2(Name= 'Test', Description = 'Test pricebook', Region__c= 'Domestic', IsActive = true);
        insert pb;
        
        Id standardPB = Test.getStandardPricebookId();
        PricebookEntry pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = standardPB, Product2Id = p.Id);
        insert pbe;
        
        pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = pb.Id, Product2Id = p.Id);
        insert pbe;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account a = new Account(Name = 'Account', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Actual_Org_Status__c='Accredited');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c=FALSE);
        insert opp;
        
        Order o = new Order(OpportunityId = opp.Id, AccountId = a.Id, Status = 'Draft', EffectiveDate = Date.today(), Type = 'Sales Order', Pricebook2Id = pb.Id);
        insert o;
        
        OrderItem oi = new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, Quantity = 1, UnitPrice = 500, Account__c = a.Id, Term_Months__c = 12);
        insert oi;
        
        CreateCreditMemoController controller = new CreateCreditMemoController();
        controller.orderId = o.Id;
        controller.getOrderItemList();
        controller.cancel();
    }
    
    @isTest static void selectAllTest()
    {
        Product2 p = new Product2(Name= 'Test', ProductCode = 'Test', IsActive = true, Number_of_Months_Term__c= 12, Default_Qty__c = 1);
        insert p;
        
        Pricebook2 pb = new Pricebook2(Name= 'Test', Description = 'Test pricebook', Region__c= 'Domestic', IsActive = true);
        insert pb;
        
        Id standardPB = Test.getStandardPricebookId();
        PricebookEntry pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = standardPB, Product2Id = p.Id);
        insert pbe;
        
        pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = pb.Id, Product2Id = p.Id);
        insert pbe;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account a = new Account(Name = 'Account', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Actual_Org_Status__c='Accredited');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c=FALSE);
        insert opp;
        
        Order o = new Order(OpportunityId = opp.Id, AccountId = a.Id, Status = 'Draft', EffectiveDate = Date.today(), Type = 'Sales Order', Pricebook2Id = pb.Id);
        insert o;
        
        OrderItem oi = new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, Quantity = 1, UnitPrice = 500, Account__c = a.Id, Term_Months__c = 12);
        insert oi;
        
        CreateCreditMemoController controller = new CreateCreditMemoController();
        controller.orderId = o.Id;
        controller.getOrderItemList();
        controller.selectAll();
    }
    
    @isTest static void unselectAllTest()
    {
        Product2 p = new Product2(Name= 'Test', ProductCode = 'Test', IsActive = true, Number_of_Months_Term__c= 12, Default_Qty__c = 1);
        insert p;
        
        Pricebook2 pb = new Pricebook2(Name= 'Test', Description = 'Test pricebook', Region__c= 'Domestic', IsActive = true);
        insert pb;
        
        Id standardPB = Test.getStandardPricebookId();
        PricebookEntry pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = standardPB, Product2Id = p.Id);
        insert pbe;
        
        pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = pb.Id, Product2Id = p.Id);
        insert pbe;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account a = new Account(Name = 'Account', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Actual_Org_Status__c='Accredited');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c=FALSE);
        insert opp;
        
        Order o = new Order(OpportunityId = opp.Id, AccountId = a.Id, Status = 'Draft', EffectiveDate = Date.today(), Type = 'Sales Order', Pricebook2Id = pb.Id);
        insert o;
        
        OrderItem oi = new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, Quantity = 1, UnitPrice = 500, Account__c = a.Id, Term_Months__c = 12);
        insert oi;
        
        CreateCreditMemoController controller = new CreateCreditMemoController();
        controller.orderId = o.Id;
        controller.getOrderItemList();
        controller.unselectAll();
    }
    
    @isTest static void processSelectionNoItemsTest()
    {
        Product2 p = new Product2(Name= 'Test', ProductCode = 'Test', IsActive = true, Number_of_Months_Term__c= 12, Default_Qty__c = 1);
        insert p;
        
        Pricebook2 pb = new Pricebook2(Name= 'Test', Description = 'Test pricebook', Region__c= 'Domestic', IsActive = true);
        insert pb;
        
        Id standardPB = Test.getStandardPricebookId();
        PricebookEntry pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = standardPB, Product2Id = p.Id);
        insert pbe;
        
        pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = pb.Id, Product2Id = p.Id);
        insert pbe;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account a = new Account(Name = 'Account', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Actual_Org_Status__c='Accredited');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c=FALSE);
        insert opp;
        
        Order o = new Order(OpportunityId = opp.Id, AccountId = a.Id, Status = 'Draft', EffectiveDate = Date.today(), Type = 'Sales Order', Pricebook2Id = pb.Id);
        insert o;
        
        OrderItem oi = new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, Quantity = 1, UnitPrice = 500, Account__c = a.Id, Term_Months__c = 12);
        insert oi;
        
        CreateCreditMemoController controller = new CreateCreditMemoController();
        controller.orderId = o.Id;
        controller.getOrderItemList();
        controller.processSelection();
    }
    
    @isTest static void processSelectionAllItemsTest()
    {
        Product2 p = new Product2(Name= 'Test', ProductCode = 'Test', IsActive = true, Number_of_Months_Term__c= 12, Default_Qty__c = 1);
        insert p;
        
        Pricebook2 pb = new Pricebook2(Name= 'Test', Description = 'Test pricebook', Region__c= 'Domestic', IsActive = true);
        insert pb;
        
        Id standardPB = Test.getStandardPricebookId();
        PricebookEntry pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = standardPB, Product2Id = p.Id);
        insert pbe;
        
        pbe = new PricebookEntry(IsActive = true, UnitPrice = 500, Pricebook2Id = pb.Id, Product2Id = p.Id);
        insert pbe;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account a = new Account(Name = 'Account', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, School_Type__c='District', Actual_Org_Status__c='Accredited');
        insert a;
        
        Opportunity opp = new Opportunity(Name='Test', Account = a, CloseDate=Date.today(), StageName='Closed Won', Renewal_Process__c=TRUE, Bill_Type__c = 'Detailed', Order_Generated__c=FALSE);
        insert opp;
        
        Order o = new Order(OpportunityId = opp.Id, AccountId = a.Id, Status = 'Draft', EffectiveDate = Date.today(), Type = 'Sales Order', Pricebook2Id = pb.Id);
        insert o;
        
        OrderItem oi = new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, Quantity = 1, UnitPrice = 500, Account__c = a.Id, Term_Months__c = 12);
        insert oi;
        
        CreateCreditMemoController controller = new CreateCreditMemoController();
        controller.orderId = o.Id;
        controller.getOrderItemList();
        controller.selectAll();
        controller.processSelection();
    }
}