@isTest
public class Test_TriggerForUpdateOrInsertVol {
 @testSetup static void Test_TriggerForUpdateOrInsertVol(){

     volunteer__c vol=new volunteer__c();
     vol.Name='Test';
     vol.Email__c='TestRecord@gmail.com';
     vol.First_Name__c='Test';
     vol.Status__c='New';
     insert vol;
     
     volunteer__c volUpdate=new volunteer__c();
     volUpdate.Name='TestUpdate';
     volUpdate.Email__c='TestRecordUpdate@gmail.com';
      volUpdate.First_Name__c='Test';
     volUpdate.Status__c='New';
     insert volUpdate;

Contact con=new Contact();
Con.FirstName='Test';
Con.Email='TestRecord@gmail.com';
con.LastName='Record';
con.Status__c='New';
con.recordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId();
 insert con;
     
     Contact conDelete=new Contact();
conDelete.FirstName='TestDelete';
conDelete.Email='TestDelete@gmail.com';
conDelete.LastName='Record';
conDelete.Status__c='New';
conDelete.recordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId();
 insert conDelete;
 }
    static testmethod void TriggerForUpdateOrInsertVol(){
        contact conUpdate=new Contact();
        contact conDelete=new Contact();
 conUpdate=[select id,Name,FirstName from Contact where FirstName='Test' limit 1];
    conUpdate.FirstName='TestUpdate';
        update conUpdate;
    }
    
    static testmethod void TriggerForUpdateOrDeleteVol(){
        contact conDelete=new Contact();
   conDelete=[select id,Name,FirstName from Contact where FirstName='TestDelete' limit 1];
        delete conDelete;
    }
    



}