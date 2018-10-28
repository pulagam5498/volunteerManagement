public with sharing class AccreditLogNoteAccountController {
    public string accreditLogNoteId { get; set; }
    public string parentAccountId {get; set; }
    //public List<cInstitution> institutions { get; set; } 
    //public Accreditation_Log_Note__c accreditLogNote { get; set;}
    
    //Dummy account so apex:inputfield can be used.  Useful for controlling/depend picklists
    public Account searchContainer { get; set;}

    public AccreditLogNoteAccountController()
    {
        clearAccount();
        accreditLogNoteId = ApexPages.currentPage().getParameters().get('recId');
        parentAccountId = ApexPages.currentPage().getParameters().get('parentAccountId');
        //accreditLogNoteId = 'a0tV00000036np8';
        //parentAccountId= '001j000000sFhLy';
        
        /*accreditLogNote = [SELECT Id, RecordTypeId, Account__c, Accreditation_Status__c, Actual_Ratification_Meeting__c, Asset__c, Customer_Number__c,
                                Effective_Date__c, Expiration_Date__c, Log_Date__c, Notes__c, Oasis_Note_Created2__c, Oasis_Note_Id__c, Org_Status_Value__c, 
                                Ratified_Flag__c, Recommended_Accreditation_Status__c, Rec_Ratification_Meeting__c, Status_Reason__c, Status_Type__c
                           FROM Accreditation_Log_Note__c 
                           WHERE Id = :accreditLogNoteId LIMIT 1];*/
    }
    
     public void clearAccount() {
        searchContainer = new Account();
    }
    
    @RemoteAction @ReadOnly
    public static List<Id> getRecordIds(String queryStr) {

        List<Id> results = new List<Id>();
        for(SObject record: System.Database.query(queryStr)){
            results.add(record.Id);
        }
        return results;
    }
    
    @RemoteAction
    public static SObject[] getRecords(id[] ids) {
        return [SELECT Id, Name, Type, ParentId, Parent.Name, Customer_Number__c, Classification__c, 
                        Actual_Org_Status__c, Accreditation_Status__c, Recommended_Org_Status__c,
                        Recommended_Accreditation_Status__c, Accreditation_Expiration__c, ShippingCity, ShippingStateCode, ShippingCountryCode
                FROM Account 
                WHERE id in :ids AND Active__c = TRUE];
    }

    @RemoteAction
    public static Boolean processSelection(id[] ids, string logNoteId)
    {
        Accreditation_Log_Note__c accreditLogNote = [SELECT Id, RecordTypeId, Account__c, Accreditation_Status__c, Actual_Ratification_Meeting__c, Asset__c, Customer_Number__c,
                                Effective_Date__c, Effective_Date_Time__c, Expiration_Date__c, Log_Date__c, Notes__c, Oasis_Note_Created2__c, Oasis_Note_Id__c, Org_Status_Value__c, 
                                Ratified_Flag__c, Recommended_Accreditation_Status__c, Rec_Ratification_Meeting__c, Status_Reason__c, Status_Type__c, OMS_Approval__c
                           FROM Accreditation_Log_Note__c 
                           WHERE Id = :logNoteId LIMIT 1];
        
        RecordType rt = [SELECT Id, Name, SObjectType FROM RecordType WHERE Name = 'Single Institution' AND SObjectType = 'Accreditation_Log_Note__c' LIMIT 1];
        
        system.debug(accreditLogNote);
        system.debug(rt);
        
        List<Accreditation_Log_Note__c> logNotes = new List<Accreditation_Log_Note__c>();
        accreditLogNote.RecordTypeId = rt.Id;       
        
        for(id i : ids)
        {
            system.debug(i);
            if(accreditLogNote.Account__c != null)
            {
                logNotes.add(new Accreditation_Log_Note__c(RecordTypeId = rt.Id, 
                                                           Account__c = i, 
                                                           Accreditation_Status__c = accreditLogNote.Accreditation_Status__c,
                                                           Actual_Ratification_Meeting__c = accreditLogNote.Actual_Ratification_Meeting__c,
                                                           Effective_Date__c = accreditLogNote.Effective_Date__c, 
                                                           Effective_Date_Time__c = accreditLogNote.Effective_Date_Time__c,
                                                           Expiration_Date__c = accreditLogNote.Expiration_Date__c, 
                                                           Log_Date__c = accreditLogNote.Log_Date__c, 
                                                           Notes__c = accreditLogNote.Notes__c, 
                                                           Oasis_Note_Created2__c = accreditLogNote.Oasis_Note_Created2__c,                                                            
                                                           Org_Status_Value__c = accreditLogNote.Org_Status_Value__c, 
                                                           Ratified_Flag__c = accreditLogNote.Ratified_Flag__c, 
                                                           Recommended_Accreditation_Status__c = accreditLogNote.Recommended_Accreditation_Status__c, 
                                                           Rec_Ratification_Meeting__c = accreditLogNote.Rec_Ratification_Meeting__c, 
                                                           Status_Reason__c = accreditLogNote.Status_Reason__c, 
                                                           Status_Type__c = accreditLogNote.Status_Type__c, 
                                                           OMS_Approval__c = accreditLogNote.OMS_Approval__c)
                                                    );                
            }
            else
            {
                accreditLogNote.Account__c = i;
            }   
        }
        logNotes.add(accreditLogNote); 
        
        upsert logNotes;
        return true;
    }
    
    public class searchException extends Exception {}
    
    /*public List<cInstitution> getinstitutionObjects()
    {
        if(institutions == null)
        {
            string query = 'SELECT Id, Name, Type, ParentId, Parent.Name, Customer_Number__c, Classification__c, ';
            query += 'Actual_Org_Status__c, Accreditation_Status__c, Recommended_Org_Status__c, ';
            query += 'Recommended_Accreditation_Status__c, Accreditation_Expiration__c ';
            query += 'FROM Account WHERE Active__c = TRUE';
            if(parentAccountId != null)
            {
                system.debug(parentAccountId);
                query += ' AND ParentId = \'' + parentAccountId + '\'';
            }
            query += ' ORDER BY Name LIMIT 1000';
            institutions = new List<cInstitution>();
            List<Account> accounts = Database.query(query);
            for(Account a : accounts)
            {
                institutions.Add(new cInstitution(a, false));
            }
            
        }
       
        return institutions;
    }*/
    
    /*public PageReference processSelection()
    {
        List<Accreditation_Log_Note__c> logNotes = new List<Accreditation_Log_Note__c>();
        
        for(cInstitution cInst : institutions)
        {
            if(cInst.selected == true)
            {
                logNotes.add(new Accreditation_Log_Note__c(RecordTypeId = accreditLogNote.RecordTypeId, 
                                                                                  Account__c = cInst.account.Id, 
                                                                                  Accreditation_Status__c = accreditLogNote.Accreditation_Status__c,
                                                                                  Actual_Ratification_Meeting__c = accreditLogNote.Actual_Ratification_Meeting__c,
                                                                                  Effective_Date__c = accreditLogNote.Effective_Date__c, 
                                                                                  Expiration_Date__c = accreditLogNote.Expiration_Date__c, 
                                                                                  Log_Date__c = accreditLogNote.Log_Date__c, 
                                                                                  Notes__c = accreditLogNote.Notes__c, 
                                                                                  Oasis_Note_Created2__c = accreditLogNote.Oasis_Note_Created2__c, 
                                                                                  Oasis_Note_Id__c = accreditLogNote.Oasis_Note_Id__c, 
                                                                                  Org_Status_Value__c = accreditLogNote.Org_Status_Value__c, 
                                                                                  Ratified_Flag__c = accreditLogNote.Ratified_Flag__c, 
                                                                                  Recommended_Accreditation_Status__c = accreditLogNote.Recommended_Accreditation_Status__c, 
                                                                                  Rec_Ratification_Meeting__c = accreditLogNote.Rec_Ratification_Meeting__c, 
                                                                                  Status_Reason__c = accreditLogNote.Status_Reason__c, 
                                                                                  Status_Type__c = accreditLogNote.Status_Type__c)
                                                    );
            }
        }
        

        insert logNotes;
        institutions = null;
        
        PageReference pr = new PageReference('/' + accreditLogNoteId);
        pr.setRedirect(true);
        return pr;
        //return null;
    }*/
    
    /*public PageReference selectAll()
    {
        for(cInstitution obj : institutions)
        {
            obj.selected = true;
        }
        return null;
    }*/
    
    /*public PageReference unselectAll()
    {
        for(cInstitution obj : institutions)
        {
            obj.selected = false;
        }
        return null;
    }*/
    
    /*public PageReference cancel()
    {
        PageReference pr = new PageReference('/' + accreditLogNoteId);
        pr.setRedirect(true);
        return pr;
    }*/
    
    /*public class cInstitution {
        public Account account {get; set;}
        public Boolean selected {get; set;}
        
        public cInstitution(Account a, Boolean isSelected)
        {
            account = a;
            selected = isSelected;
        }
    }*/
    
    
}