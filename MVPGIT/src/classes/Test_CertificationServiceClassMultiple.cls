@istest
public class Test_CertificationServiceClassMultiple {
    
     static testMethod void TestCertificationServiceClassMultiple() {        
        
       RestRequest req = new RestRequest();
        RestResponse res = new RestResponse(); 
         
         req.requestURI = '/services/apexrest/CertificationClassMultiple';  
        
         
         
          string JsonMsg ='{"userId":"667689","emailAddress":"davitt@soltech.net","certificationId":"13","certificationType":"eleot 2.0","validFrom":"10/11/2018","validTo":"10/11/2018","enrolledDate":"10/11/2018","salesforceUserId":"0033B00000K7ih6"}';
         
          req.requestBody = Blob.valueof(JsonMsg);
         
         
         
         
         
        req.httpMethod = 'POST';
     
        RestContext.request=req;
        RestContext.response=res;
        
        //Test.startTest();
       CertificationServiceClassMultiple.doPost();
      // Test.stopTest();
       
       
        
        
    }
}