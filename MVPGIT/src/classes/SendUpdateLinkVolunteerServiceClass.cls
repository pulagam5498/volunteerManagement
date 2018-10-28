@RestResource(urlMapping='/UpdateLinkService/*')
global with sharing class SendUpdateLinkVolunteerServiceClass {
    @HttpPost
    
    global static ReturnWrapper sendUpdateLinkToVolunteer(String salesforceId) {
      
       ReturnWrapper response=new ReturnWrapper();
       contact con=new Contact();
       Volunteer__c vol=new Volunteer__c();
    
      
      try{
      
         con=[Select id,Email,ExpirationDateTime__c from Contact where id=:salesforceId limit 1];
         vol=[Select id from Volunteer__c where Email__c=:con.Email limit 1];
             
           response.Status='201';
           response.UpdateLink='https://uatfull-advanced-volunteerregistration.cs25.force.com/ProfileUpdate?id='+vol.id;
           
           con.ExpirationDateTime__c=system.now();
           update con;
           
           
            }
            catch(exception e) { 
                
            response.Excep=String.valueOf(e);
            response.status='405';
            }
            
            return response;
            }
            
            
       global class ReturnWrapper {        
        public String status; 
          Public String UpdateLink;
          public String Excep;
           
        public ReturnWrapper() {}
    }    
        
    
}