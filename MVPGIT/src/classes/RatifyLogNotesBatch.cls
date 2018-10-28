global class RatifyLogNotesBatch implements Database.Batchable<sObject> {
	
	global RatifyLogNotesBatch(){}
	
	global Database.QueryLocator start(Database.BatchableContext BC)
    {
		String query = 'SELECT Id ';
		query += 'FROM Accreditation_Log_Note__c ';
		query += 'WHERE RecordType.Name = \'Ratified\' AND Processed__c = false';
		return Database.getQueryLocator(query);
	}
	
    global void execute(Database.BatchableContext BC, List<Accreditation_Log_Note__c> scope) 
    {
    	for(Accreditation_Log_Note__c a : scope)
    	{
    		Map<String, object> varMap = new Map<String, object>();
    		varMap.put('RecLogNoteId', a.Id);
    		Flow.Interview.Accred_Log_Note_Create_Actual_Log_Note createOppty = new Flow.Interview.Accred_Log_Note_Create_Actual_Log_Note(varMap);
            createOppty.start();
                
            varMap.clear();
    	}
    	
    }
    
    global void finish(Database.BatchableContext BC) 
    {
    	
    }
}