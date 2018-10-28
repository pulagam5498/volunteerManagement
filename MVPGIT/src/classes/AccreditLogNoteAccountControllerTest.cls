@isTest
public class AccreditLogNoteAccountControllerTest {

    @isTest static void noParamaterTest()
    {
        AccreditLogNoteAccountController controller = new AccreditLogNoteAccountController();
        System.assertEquals(null,controller.accreditLogNoteId);
        System.assertEquals(null, controller.parentAccountId);
    }
    
    @isTest static void withParamentsTest()
    {
    	ApexPages.currentPage().getParameters().put('recId', '8007A000000ITbn');
        ApexPages.currentPage().getParameters().put('parentAccountId', '0017A00000Hx3Um');
        AccreditLogNoteAccountController controller = new AccreditLogNoteAccountController();
        System.assertEquals('8007A000000ITbn', controller.accreditLogNoteId);
        System.assertEquals('0017A00000Hx3Um', controller.parentAccountId);
    }
    
    @isTest static void clearAccountTest()
    {
    	AccreditLogNoteAccountController controller = new AccreditLogNoteAccountController();
    	controller.clearAccount();
    }
    
    @isTest static void getRecordIdsTest()
    {
    	insertData();
    	String query = 'select Id from Account where Id != null order by Name ASC'; 
    	List<Id> ids = AccreditLogNoteAccountController.getRecordIds(query);
        System.assertEquals(3, ids.size());
    }
 
 	@isTest static void getRecordsTest()
 	{
 		insertData();
 		String query = 'select Id from Account where Id != null order by Name ASC';
 		List<Id> ids = AccreditLogNoteAccountController.getRecordIds(query);
 		SObject[] logNotes = AccreditLogNoteAccountController.getRecords(ids);
 		System.assertEquals(3, logNotes.size());
 	}   
    
    
    @isTest static void processSelectionTest()
    {
    	insertData();
    	Boolean result = false;
    	String query = 'select Id from Account where Id != null order by Name ASC';
        List<Id> ids = AccreditLogNoteAccountController.getRecordIds(query);
        
    	List<RecordType> rtypes = [Select Name, Id From RecordType where sObjectType='Accreditation_Log_Note__c' and isActive=true];
    	List<Accreditation_Log_Note__c> notes = [Select RecordTypeId, Account__c, Accreditation_Status__c, Effective_Date__c, 
                                                       Expiration_Date__c, Log_Date__c, Notes__c, Org_Status_Value__c, 
                                                       Ratified_Flag__c, Status_Reason__c, Status_Type__c 
                                                 From Accreditation_Log_Note__c];
        for(Accreditation_Log_Note__c n : notes)
        { 	
        	result = AccreditLogNoteAccountController.processSelection(ids, n.Id);
        	System.assertEquals(true, result);
        	result = false;
        }
         
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
        p.Asset__c = true;
        insert p;
        
        Operating_Unit__c oppUnit = new Operating_Unit__c(Name='Test');
        insert oppUnit;
        
        Account parentAccount = new Account(Name = 'ParentAccount'
                                            	,Type='District'
                                            	,Phone='555-555-5555'
                                            	,Operating_Unit__c=oppUnit.Id
                                            	,Annual_Fee_Invoice__c = 'No'
                                           );
        insert parentAccount;

        Account a = [SELECT Id FROM Account];
        List<Account> childrenAccounts = new List<Account>();
        Contract contract = new Contract(Name='Test Contract', AccountId = a.Id, StartDate = date.today(), ContractTerm=12);
        insert contract;
        childrenAccounts.Add(new Account(Name = 'Child Account 1' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, Annual_Fee_Invoice__c = 'No'));    
        childrenAccounts.Add(new Account(Name = 'Child Account 2' , Type='School',Phone='555-555-5555', Operating_Unit__c=oppUnit.Id, ParentId = a.Id, Annual_Fee_Invoice__c = 'No'));    
        insert childrenAccounts;
        
        Commission_Meeting__c meeting = new Commission_Meeting__c(Name = 'Test Meeting'
                                                                  ,Active__c = true
                                                                  ,Current__c = true
                                                                  ,Active_for_Entry__c = true
                                                                  ,Meeting_Date__c = Date.today()
                                                                  ,Action_Effective_Date__c = Date.today()
                                                                  );
        
        insert meeting;
        
        List<Accreditation_Log_Note__c> logNotes = new List<Accreditation_Log_Note__c>();
        RecordType r = [Select Name, Id From RecordType where sObjectType='Accreditation_Log_Note__c' and isActive=true and Name = 'Multiple Institutions' LIMIT 1];
        Accreditation_Log_Note__c multiLogNote = new Accreditation_Log_Note__c(RecordTypeId = r.Id, 
                                                           Accreditation_Status__c = 'Accredited',
                                                           Effective_Date__c = Date.today(), 
                                                           Expiration_Date__c = Date.today(), 
                                                           Log_Date__c = Datetime.now(), 
                                                           Notes__c = 'testing 123', 
                                                           Org_Status_Value__c = 'Accredited', 
                                                           Ratified_Flag__c = false, 
                                                           Status_Reason__c = 'Successful Engagement Review', 
                                                           Log_Note_Type__c = 'Recommended',
                                                           Status_Type__c = 'Recommended',
                                                           Recommended_Accreditation_Status__c = 'Accredited',
                                                           OMS_Approval__c = 'Approved',
                                                           Rec_Ratification_Meeting__c = meeting.Id);
        
        
        r = [Select Name, Id From RecordType where sObjectType='Accreditation_Log_Note__c' and isActive=true and Name = 'Parent/Child Institution' LIMIT 1];
        Accreditation_Log_Note__c singleLogNote = new Accreditation_Log_Note__c(RecordTypeId = r.Id, 
                                                           Account__c = a.Id, 
                                                           Accreditation_Status__c = 'Accredited',
                                                           Effective_Date__c = Date.today(), 
                                                           Expiration_Date__c = Date.today(), 
                                                           Log_Date__c = Datetime.now(), 
                                                           Notes__c = 'testing 123', 
                                                           Org_Status_Value__c = 'Accredited', 
                                                           Ratified_Flag__c = false, 
                                                           Status_Reason__c = 'Successful Engagement Review', 
                                                           Log_Note_Type__c = 'Recommended',
                                                           Status_Type__c = 'Recommended',
                                                           Recommended_Accreditation_Status__c = 'Accredited',
                                                           OMS_Approval__c = 'Approved',
                                                           Rec_Ratification_Meeting__c = meeting.Id);
        
        
        
        logNotes.add(multiLogNote);
        logNotes.add(singleLogNote);
        insert logNotes;
    }
}