@istest
public class Test_SendUpdateLinkVolunteerServiceClass {
    
     @testSetup static void Test_ProfileExtension (){
         Contact con = new Contact();
         con.FirstName='Test';
         con.LastName='Record';
         con.Status__c='New';
         con.Email='Test@gmail.com';
         con.Accountid = '0011b00000MFlJO';
         insert con;
         
         Volunteer__c vol=new Volunteer__c();
         vol.First_Name__c='Test';
         vol.Email__c='Test@gmail.com';
         vol.Status__c='New';
         insert vol;
     }
    
    static testMethod void testSendUpdateLinkVolunteerServiceClass(){
            
        RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();
        req.requestURI = '/services/apexrest/UpdateLinkService';
        req.addParameter('type','');
        req.addHeader('Content-Type', 'application/json');
        req.httpMethod = 'post';
        res.addHeader('Content-Type', 'application/json');
        RestContext.request = req;
        RestContext.response = res;
        
        Contact conRecord=[select id from Contact where FirstName='Test'];
        
        SendUpdateLinkVolunteerServiceClass.sendUpdateLinkToVolunteer(conRecord.id);
        
      
    }
}