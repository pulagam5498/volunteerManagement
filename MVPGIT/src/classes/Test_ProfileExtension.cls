@istest
public class Test_ProfileExtension  {




 @testSetup static void Test_ProfileExtension (){

 Volunteer__c testVol = new Volunteer__c(status__c='New',ExpirationDateTimeForNew__c=system.now(),First_Name__c='Test',Country1__c='United States of America',State_Province2__c='Alabama');
        insert testVol;
      
}





static testmethod void TestProfileExtension (){
 
        Volunteer__c testVol=[select id,Country1__c,State_Province2__c from Volunteer__c where First_Name__c='Test' limit 1];    
    
        ApexPages.CurrentPage().getparameters().put('id', testVol.id);
         ApexPages.StandardController sc = new ApexPages.StandardController(testVol);
        ProfileExtension  testVolUpdate = new ProfileExtension (sc);
        
        
        testVolUpdate.FirstName='Test';
        testVolUpdate.LastName='Record';
        testVolUpdate.City='Alaska';
        testVolUpdate.Email='Test@gmail.com';
        testVolUpdate.Ref1EmailAddress='Test1@gmail.com';
        testVolUpdate.Ref2EmailAddress='Test2@gmail.com';
        testVolUpdate.EmergencyName='Test2';
        testVolUpdate.initCheck();
        testVolUpdate.getLanguageOptionsleft();
        testVolUpdate.getunSelectedValues();
        testVolUpdate.unselectclick();
        testVolUpdate.selectclick();
        testVolUpdate.makeAllFalseforRerender();
        testVolUpdate.submitProfile();
        testVolUpdate.getSelectedValues();
       testVolUpdate.getTypesofteamsOptionsleft();
       testVolUpdate.getLiketoserveOptionsleft();
       testVolUpdate.getRegionsOptionsleft();
       testVolUpdate.getTeamOptionsleft();
       testVolUpdate.getRolesOptionsleft();
       testVolUpdate.getAccreditationOptionsleft();
       testVolUpdate.getInstitutionsSpecialitiesOptionsleft();
       testVolUpdate.getInstructionalSpecialitiesOptionsleft();
       testVolUpdate.getGradeSpecialitiesOptionsleft();
       testVolUpdate.getAreaSpecialitiesOptionsleft();
       testVolUpdate.getSubjectSpecialitiesOptionsleft();
       testVolUpdate.VolunteerUpdateDetails('Submit');
   
        }
      }