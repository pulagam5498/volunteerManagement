@istest
public class Test_AssignmentServiceClass {
    
    static testMethod void testAssignmentServiceClass(){
        
         
        
        
        RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();
        req.requestURI = '/services/apexrest/AssignmentClass';
        req.addParameter('type','');
        req.addHeader('Content-Type', 'application/json');
        req.httpMethod = 'post';
        res.addHeader('Content-Type', 'application/json');
        RestContext.request = req;
        RestContext.response = res;
        
        
        AssignmentServiceClass.updateAssignmentRecords(2507,'5003000000D8cuI',57980,'david.scott@soltech.net','TeamMember',true);
        
      
    }
}