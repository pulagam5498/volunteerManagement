@istest
public class Test_ContactVolunteerExtension1 {


 @testSetup static void Test_ContactVolunteerExtension1(){

 String RecordId=Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId();
            Contact testContact1 = new Contact(FirstName='Test',RecordTypeId=RecordId,status__c='New',Email='Test@gmail.com',lastName='Record',Phone='123454567',Country1__c='United States of America',State_Province2__c='Alabama');
          
         ApexPages.StandardController sc1 = new ApexPages.StandardController(testContact1);
        ContactVolunteerExtension1 testConPlan1 = new ContactVolunteerExtension1(sc1);
        testConPlan1.save();
        
        
        Contact testContactInsert = new Contact(FirstName='Test2',status__c='New',Email='TestInsert@gmail.com',lastName='Record',Phone='123454567',Country1__c='United States of America',State_Province2__c='Alabama');
          testContactInsert.recordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId();
          insert testContactInsert;
          
            Contact testProffAdd = new Contact(FirstName='Test2',status__c='New',Email='TestProffAdd@gmail.com',lastName='Record',Phone='123454567',Country1__c='United States of America',State_Province2__c='Alabama');
          testProffAdd.recordTypeId ='012j0000000qXbE';
          testProffAdd.Accountid = '0011b00000MFlJO';
          insert testProffAdd;
          
          Contact testApprovalDenied = new Contact(FirstName='Test2',status__c='Approval Denied',Email='TestApprovalDenied@gmail.com',lastName='Record',Phone='123454567',Country1__c='United States of America',State_Province2__c='Alabama');
           testApprovalDenied.recordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId();
          insert testApprovalDenied;
          
}






static testmethod void TestContactVolunteerExtension1(){
            
    
       Contact testContactUpdate = new Contact(FirstName='Test2',status__c='New',Email='TestInsert@gmail.com',lastName='Record',Phone='123454567',Country1__c='United States of America',State_Province2__c='Alabama');
         
         ApexPages.StandardController sc2 = new ApexPages.StandardController(testContactUpdate);
        ContactVolunteerExtension1 testConPlan2 = new ContactVolunteerExtension1(sc2);
        testConPlan2.save();
        
        Contact testProffAdd = new Contact(FirstName='Test2',status__c='New',Email='TestProffAdd@gmail.com',lastName='Record',Phone='123454567',Country1__c='United States of America',State_Province2__c='Alabama');
         
         ApexPages.StandardController sc3 = new ApexPages.StandardController(testProffAdd);
        ContactVolunteerExtension1 testConPlan3 = new ContactVolunteerExtension1(sc3);
        testConPlan3.save();
        
         Contact testApprovalDenied = new Contact(FirstName='Test2',status__c='Approval Denied',Email='TestApprovalDenied@gmail.com',lastName='Record',Phone='123454567',Country1__c='United States of America',State_Province2__c='Alabama');
            ApexPages.StandardController sc4 = new ApexPages.StandardController(testApprovalDenied);
        ContactVolunteerExtension1 testConPlan4 = new ContactVolunteerExtension1(sc4);
        testConPlan4.save();
        
        }
      }