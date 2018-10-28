@istest
public class Test_ReviewServiceClass {
    
       @testSetup static void Test_ReviewServiceClass (){
           
           Account acc=new Account();
          // acc.Customer_Number__c='214828';
           acc.Name='Test';
           insert acc;
           
           
       }
    
    static testMethod void testReviewServiceClass(){
 
        RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();
        req.requestURI = '/services/apexrest/ReviewClass';
        req.addParameter('type','');
        req.addHeader('Content-Type', 'application/json');
        req.httpMethod = 'post';
        res.addHeader('Content-Type', 'application/json');
        RestContext.request = req;
        RestContext.response = res;
        
        Account acc=[select id,Customer_Number__c from Account where Name='Test' limit 1];
        Integer CustomerNumber=Integer.valueOf(acc.Customer_Number__c);
        
        ReviewServiceClass.updateReviewRecords('Early Learning WS',2507,'Engagement Review','Institution Engagement Review Protocol',10,'AdvancED',319644,CustomerNumber,'90630000000hKrNAAU',true,'07/17/2018','08/07/2018','07/16/18');
        
      
    }
}