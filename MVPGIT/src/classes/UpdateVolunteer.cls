public without sharing class UpdateVolunteer {

// This class is used to make an outbound call from salesforce to eprove


    Public static List<Contact> conList=new List<Contact>();
 public UpdateVolunteer(){   
        
    }


@future(callout=True)
public static void makePostCallout(String ContactId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        HttpResponse response = new HttpResponse();
        request.setEndpoint(label.Endpoint);
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Authorization',label.Authorization);
        String jsonInput;
        
    //   request.setHeader('Authorization','OAuth '+UserInfo.getSessionId());
    
    contact conRecord=new Contact();
    
      try{
        
        system.debug('---statuscode----');
    conRecord=[select id,Name,Status__c,Volunteer__c,Email,FirstName,LastName,User_Id__c from Contact where id=:ContactId limit 1]; 
         
      
        
   Map<String, String> jinp = new Map<String, String>();
    jinp.put('salesforceId',conRecord.id);
   jinp.put('email',conRecord.Email);
   
   if(conRecord.Status__c == 'Approval Denied'){
   jinp.put('volunteerActive', string.valueOf(false));
   }
   else{
    jinp.put('volunteerActive', string.valueOf(true));
   }
   jinp.put('firstName', conRecord.FirstName);
   jinp.put('lastName', conRecord.LastName);
 jinp.put('eProveUserId', string.valueOf(conRecord.User_Id__c));

        jsonInput = JSON.serialize(jinp);
        
        system.debug('----json----'+jsonInput);
        
        request.setBody(jsonInput);
        
        response = http.send(request);
        
        system.debug('---statuscode----'+response.getStatusCode());
        
        // Parse the JSON response
        if (response.getStatusCode() == 201 || response.getStatusCode() == 405 || response.getStatusCode() == 200 || response.getStatusCode()>0) {
        
        system.debug('-----response----'+response.getBody());
        
            String json = response.getBody();
            system.debug('-----json--'+json);
            
            JSONParser parser = System.JSON.createParser(json);
            system.debug('----parser----'+parser);
            map<String,String> maplist=new map<String,String>();
            
        while (parser.nextToken() != null) {
        system.debug('parset.nextToken');
            String SFUserId = null; 
                   
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'salesforceId') && (parser.getText() !=null)) {
               string sfid = parser.getText();
                parser.nextToken();             
                maplist.put(sfid ,parser.getText());
                        
            } if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'eProveUserId') && (parser.getText() !=null)){
               String eProveId = parser.getText();
                parser.nextToken();  
               
                maplist.put(eProveId ,parser.getText());               
            } if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'message') && (parser.getText() !=null)){
               string msg = parser.getText();
                parser.nextToken();  
                maplist.put(msg ,parser.getText());
            }  if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'passwordResetUrl') && (parser.getText() !=null)){
               string passResetUrl = parser.getText();
                parser.nextToken();  
                maplist.put(passResetUrl ,parser.getText());
            }   
            
            
         system.debug('-----maplist-----'+maplist);

        }
        Error_Log__c ErrorLog=new Error_Log__c();
        
          system.debug('---statuscode----'+response.getStatusCode());
        
        ErrorLog.Status_Of_Task__c=String.valueOf(response.getStatusCode());
      // ErrorLog.Failure__c   =(String.valueOf(jsonInput));
        if(maplist.get('message')!=null){
        ErrorLog.Exception__c=maplist.get('message'); 
        ErrorLog.Name=maplist.get('message');

        ErrorLog.Record_Unique_Name__c=maplist.get('eProveUserId');
        
        conRecord.User_Id__c=Integer.valueof(maplist.get('eProveUserId')); 
        
          conRecord.Volunteer__c=false;


             update conRecord;
            
        if(conRecord.Status__c != 'Approved' && conRecord.Volunteer__c==true){
        conRecord.Volunteer__c=false;
        update conRecord;
        }
        }
    
        insert ErrorLog;
        
        
        
    }
    }
    catch(exception e) { 
    
    Error_Log__c ErrorLog=new Error_Log__c();
        
          system.debug('---statuscode----'+response.getStatusCode());
        
        ErrorLog.Status_Of_Task__c=String.valueOf(response.getStatusCode());
   //    ErrorLog.Failure__c   =jsonInput;
        ErrorLog.Exception__c=String.valueOf(e);
        ErrorLog.Name=(String.valueOf(e)).substring(0, 50);
        insert ErrorLog;
    

    }
}
}