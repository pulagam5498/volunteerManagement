public class CreateCreditMemoController {
    public string orderId { get; set; }
    public List<OrderItem> orderItems { get; set; }
    public boolean buttonsDisabled { get; set; }
    
    public CreateCreditMemoController()          
    {
        buttonsDisabled = false;
        orderId = ApexPages.currentPage().getParameters().get('OrderId');
    }
    
    public List<OrderItem> getOrderItemList()
    {
        if(orderItems == null)
        {
            orderItems = new List<OrderItem>();
            orderItems = [SELECT Id, OrderId, Line_Item__c, ListPrice, Quantity, Adjust_Line__c, Assigned_to_Credit_Memo__c, Account__c, SellToCustomerNumber__c
							FROM OrderItem
							WHERE OrderId = :orderId AND Assigned_to_Credit_Memo__c = FALSE];
            if(orderItems.size() == 0)
            {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'There are no order products available to add to a credit memo.'));
                buttonsDisabled = true;
            }
            
        }
        return orderItems;
    }

    public PageReference processSelection()
    {
        boolean itemsSelected = false;
        for(OrderItem o : orderItems)
        {
            if(o.Adjust_Line__c == true)
            {
                itemsSelected = true;
                break;
            }
            
        }
        
        if(!itemsSelected)
        {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'There are no order products selected for the credit memo.'));
            return null;
        }
        update orderItems;
        
        Map<String, object> varMap = new Map<String, object>();
        varMap.put('orderId', orderId);
        Flow.Interview.Order_Create_Credit_Memo createCreditMemo = new Flow.Interview.Order_Create_Credit_Memo(varMap);
        createCreditMemo.start();
        
        PageReference pr = new PageReference('/' + orderId);
        pr.setRedirect(true);
        return pr;
    }
    
    public PageReference selectAll()
    {
        for(OrderItem obj : orderItems)
        {
            obj.Adjust_Line__c = true;
        }
        return null;
    }
    
    public PageReference unselectAll()
    {
        for(OrderItem obj : orderItems)
        {
            obj.Adjust_Line__c = false;
        }
        return null;
    }
    
    public PageReference cancel()
    {
        PageReference pr = new PageReference('/' + orderId);
        pr.setRedirect(true);
        return pr;
    }
}