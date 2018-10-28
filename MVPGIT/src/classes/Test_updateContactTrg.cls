@isTest
public class Test_updateContactTrg {
 @testSetup static void Test_updateContactTrg(){

     volunteer__c vol=new volunteer__c();
     vol.Name='Test';
     vol.Email__c='TestRecord@gmail.com';
     vol.Status__c='New';
     vol.First_Name__c='Test';
     insert vol;  
     
     Contact con=new Contact();
     con.FirstName='Test';
     con.Email='TestRecord@gmail.com';
     con.LastName='Record';
     con.Accountid = '0011b00000MFlJO';
     con.Status__c='New';
     con.recordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId();
     
     insert con; 
 }
    static testmethod void TriggerForUpdateOrInsertVol(){
         volunteer__c volUpdate=new volunteer__c();
         
 volUpdate=[select id,Name,Email__c from volunteer__c limit 1];
    volUpdate.Name='TestUpdate';
        update volUpdate;
    }
    
}