@istest
public class Test_UpdateVolunteer {
    
    
    @isTest static  void testUpdateVolunteer() {
       
        String conIds;
        
         Volunteer__c vol=new Volunteer__c();
       
       
       
        
        
        Contact con=new contact();
        con.LastName='Class';
        con.FirstName='Test';
        con.Status__c='New';
        con.Email='test@gmail.com';
        con.Accountid = '0011b00000MFlJO';
        con.User_Id__c=12345;
        insert con;
        
       
        conIds=con.id;

       System.Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerate());
        
        // Call method to test.
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        UpdateVolunteer.makePostCallout(conIds);
        
        // Verify response received contains fake values
        
        
         
        
        
        
    }
}