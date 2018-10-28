trigger ClearAccountRecFields on Accreditation_Log_Note__c (before delete) {
    system.debug('Entering Clear Account Rec Fields');
    for(Accreditation_Log_Note__c logNote : trigger.old)
    {
        system.debug('Log Note Name:\t' + logNote.Name);
        system.debug('Log Note Id:\t' + logNote.Id);
        if(logNote.Account__c != null)
        {
            Account acc = [SELECT Id, Name, Most_Recent_Log_Note__c, Recommended_Org_Status__c, 
                                Recommended_Accreditation_Status__c, Recommended_Status_Date__c, 
                                Rec_Status_Reason__c, Recommended_Status_Notes__c 
                            FROM Account
                            WHERE Id = :logNote.Account__c 
                            LIMIT 1];
            
            if(logNote.Id == acc.Most_Recent_Log_Note__c)
            {
                acc.Recommended_Org_Status__c = null;
                acc.Recommended_Accreditation_Status__c = null;
                acc.Recommended_Status_Date__c = null; 
                acc.Rec_Status_Reason__c = null;
                acc.Recommended_Status_Notes__c = null;
                
                if(logNote.Asset__c != null)
                {
                    Asset ast = [SELECT Id, Name, Recommended_Org_Status__c, Recommended_Status_Effective_Date__c, 
                                    Recommended_Org_Status_Reason__c, Recommended_Org_Status_Notes__c,
                                    Recommended_Commission_Meeting__c, Recommended_Accreditation_Status__c
                            	FROM Asset 
                            	WHERE Id = :logNote.Asset__c
                            	LIMIT 1];
                    ast.Recommended_Org_Status__c = null;
                   	ast.Recommended_Status_Effective_Date__c = null;
                    ast.Recommended_Org_Status_Reason__c = null;
                    ast.Recommended_Org_Status_Notes__c = null;
                    ast.Recommended_Commission_Meeting__c = null;
                    ast.Recommended_Accreditation_Status__c = null;
                    update ast;
                }
                update acc;
            }
        
        }
            
    }
}