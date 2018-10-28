@isTest
private class RatifyLogNotesBatchTest {

    @isTest static void ratifyLogNotesTest() {
        insertData();
        RatifyLogNotesBatch b = new RatifyLogNotesBatch();
        Database.executeBatch(b);
    }
    
    public static void insertData()
    {
    	//RecordType r = [Select Name, Id From RecordType where sObjectType='Product2' and isActive=true and Name = 'Accreditation' LIMIT 1];
    	Product2 p = new Product2();
        p.Name = 'Accreditation';
        p.ProductCode = 'ACCR';
        p.Number_of_Months_Term__c = 12;
        p.Default_Qty__c = 1;
        p.Renewal_Product__c = 'NA';
        p.ProductPostingGroup__c = 'REVIEW';    
		p.ProductType__c = 'Domestic';
        p.Oasis_Designation__c = 'Accreditation';
        p.Description = 'Used for Accreditation Management - setting up Assets.';
        p.Family = 'ACCRFEES17';
        p.IsActive = true;
        insert p;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account parentAccount = new Account(Name = 'ParentAccount', Type='District',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id);
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        Contract contract = new Contract(Name='Test Contract', AccountId = a.Id, StartDate = date.today(), ContractTerm=12);
        insert contract;
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id));    
        insert childrenAccounts;
        
        List<Accreditation_Log_Note__c> logNotes = new List<Accreditation_Log_Note__c>();
        RecordType r = [Select Name, Id From RecordType where sObjectType='Accreditation_Log_Note__c' and isActive=true and Name = 'Ratified' LIMIT 1];
        system.debug(r.Id);
        Accreditation_Log_Note__c logNote1 = new Accreditation_Log_Note__c(RecordTypeId = r.Id, 
                                                           Accreditation_Status__c = 'Accredited',
                                                           Effective_Date__c = Date.today(), 
                                                           Expiration_Date__c = Date.today(), 
                                                           Log_Date__c = Datetime.now(), 
                                                           Notes__c = 'testing 123', 
                                                           Org_Status_Value__c = 'Accredited', 
                                                           Ratified_Flag__c = false, 
                                                           Processed__c = false, 
                                                           Status_Reason__c = 'Successful Engagement Review', 
                                                           Log_Note_Type__c = 'Recommended',
                                                           Status_Type__c = 'Actual',
                                                           Recommended_Accreditation_Status__c = 'Accredited',
                                                           OMS_Approval__c = 'Approved');
        
        Accreditation_Log_Note__c logNote2 = new Accreditation_Log_Note__c(RecordTypeId = r.Id, 
                                                           Account__c = a.Id, 
                                                           Accreditation_Status__c = 'Accredited',
                                                           Effective_Date__c = Date.today(), 
                                                           Expiration_Date__c = Date.today(), 
                                                           Log_Date__c = Datetime.now(), 
                                                           Notes__c = 'testing 123', 
                                                           Org_Status_Value__c = 'Accredited', 
                                                           Ratified_Flag__c = false, 
                                                           Processed__c = false,  
                                                           Status_Reason__c = 'Successful Engagement Review', 
                                                           Log_Note_Type__c = 'Recommended',
                                                           Status_Type__c = 'Actual',
                                                           Recommended_Accreditation_Status__c = 'Accredited',
                                                           OMS_Approval__c = 'Approved');
        
        
        
        logNotes.add(logNote1);
        logNotes.add(logNote2);
        insert logNotes;
        
        for(Accreditation_Log_Note__c ln : [SELECT Id, Name, RecordTypeId, Processed__c FROM Accreditation_Log_Note__c])
        {
            system.debug(ln);
        }
            
    }
}