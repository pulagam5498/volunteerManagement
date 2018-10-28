global class CreateRenewalOrdersBatch implements Database.Batchable<sObject> {
    public Set<Id> opUnitIds { get; set; } 
    
    global CreateRenewalOrdersBatch(){}
    global CreateRenewalOrdersBatch(Set<Id> operatingUnitIds)
    {
        opUnitIds = operatingUnitIds;
    }
    
    //Start Method
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id '; 
        query += 'FROM Account ';
        query += 'WHERE Operating_Unit__c IN :opUnitIds ';
        query += 'AND Active__c = TRUE ';
        List<Account> accs = Database.query(query);

        Set<Id> accountIds = new Set<Id>();
        for(Account a : accs)
        {
            accountIds.add(a.Id);
        }
        
        query = '';
        query = 'SELECT Id, Name ';
		query += 'FROM Opportunity ';
        query += 'WHERE StageName = \'Closed Won\' ';
        query += 'AND Renewal_Process__c = TRUE ';
        query += 'AND Bill_Type__c != \'\' ';
        query += 'AND Order_Generated__c = FALSE ';
        query += 'AND AccountId IN :accountIds ';
       	
        return Database.getQueryLocator(query);
    }
    
    //Execute method
    global void execute (Database.BatchableContext BC, List<Opportunity> scope) 
    {
        for(Opportunity o : scope)
        {
            Map<String, object> varMap = new Map<String, object>();
            varMap.put('OpportunityId',o.Id);
            Flow.Interview.Opportunity_to_Order_based_on_Bill_Type createOrder = new Flow.Interview.Opportunity_to_Order_based_on_Bill_Type(varMap);
            createOrder.start();
            varMap.clear();
        }
    }
    
    //Finish Method
  	global void finish(Database.BatchableContext BC)
    {
        String query = 'SELECT Id '; 
        query += 'FROM Account ';
        query += 'WHERE Operating_Unit__c IN :opUnitIds ';
        query += 'AND Active__c = TRUE ';
        List<Account> accs = Database.query(query);

        Set<Id> accountIds = new Set<Id>();
        for(Account a : accs)
        {
            accountIds.add(a.Id);
        }
        
        query = '';
        query = 'SELECT Id, Name, StageName, Renewal_Process__c, Bill_Type__c, Order_Generated__c ';
        query += 'FROM Opportunity ';
        query += 'WHERE StageName = \'Closed Won\' ';
        query += 'AND Renewal_Process__c = TRUE ';
        query += 'AND Bill_Type__c != \'\' ';
        query += 'AND Order_Generated__c = FALSE ';
        query += 'AND AccountId IN :accountIds ';
        if(!Test.isRunningTest())
        {   
            List<Opportunity> opps = Database.query(query);
            if(opps.size() > 0)
            {
                Database.executeBatch(new CreateRenewalOrdersBatch(opUnitIds), 10);
            }    
        }
    }
    
}