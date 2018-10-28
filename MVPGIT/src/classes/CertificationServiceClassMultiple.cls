@RestResource(urlMapping='/CertificationClassMultiple/*')
global without sharing class CertificationServiceClassMultiple {
    @HttpPost
    global static List<ReturnWrapper> doPost() {
       
      
      List<ReturnWrapper> responses=new List<ReturnWrapper>();
       
        RestRequest req = RestContext.request;
        string jsonstring = req.requestBody.toString();
        List<Certification__c> UpsertedRecords=new List<Certification__c>();
        
        
        system.debug('----jsonstring---'+jsonstring);
        
        JSONParser parser = System.JSON.createParser(jsonstring);
        
        Map<String,Object> maplist = new Map<String,Object>();
        List<Map<String, Object>> listVals = new List<Map<String, Object>>();   
        Certification__c InsertedCertificate = new Certification__c();
        Certification__c UpdatedCertificate = new Certification__c();
        
        set<Integer> certificationIds=new set<Integer>();
        
        set<String>  CertificationIDUpserted=new set<String>();
        map<String,String> CertificationNumberwithIds=new map<String,String>();
          map<String,String> ErrorswithIds=new map<String,String>();
          
          String userIdentification;
          String CertificationIdentification;
          
          String CertError;
                       
           
          List<Certification__c> updateCertificateList = new List<Certification__c>();                
          List<Certification__c> insertCertificateList = new List<Certification__c>(); 
          List<Error_Log__c> ListOfLog=new List<Error_Log__c>();
          set<String> IdsinsertedSuccesfully=new set<String>();
          
          string CertuserId;
          Boolean CertificationError=false;
          Boolean SFUserIdError=false;
          String SForceUserId;
        
        
        try{
        while (parser.nextToken() != null) {
            String SFUserId = null; 
                   
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'userId') && (parser.getText() !=null)) {
               string user = parser.getText();
                parser.nextToken();   
                 userIdentification=parser.getText();           
                maplist.put(user ,parser.getText());
                        
            } if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'emailAddress') && (parser.getText() !=null)){
               string email = parser.getText();
                parser.nextToken(); 
                maplist.put(email ,parser.getText());
                system.debug('#### email #### ' + parser.getText());
            } if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'certificationType') && (parser.getText() !=null)){
               string certifType = parser.getText();
                parser.nextToken();  
                maplist.put(certifType ,parser.getText());
                system.debug('#### certifType #### ' + parser.getText());
            } if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'validFrom') && (parser.getText() !=null)){
                String validFromText = parser.getText();
                parser.nextToken();                
                maplist.put(validFromText ,parser.getText());
                system.debug('#### validFromText #### ' + parser.getText());
            } if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'validTo') && (parser.getText() !=null)){
                String validToText = parser.getText();
                parser.nextToken();
                if(parser.getText() !='null'){
                maplist.put(validToText ,parser.getText());
                system.debug('#### validToText #### ' + parser.getText());
                }             
               
                
            } if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'enrolledDate') && (parser.getText() !=null)){
                String enrollDate = parser.getText();
                system.debug('---entered into the null block---');
                parser.nextToken();                
                maplist.put(enrollDate ,parser.getText());
                system.debug('#### enrollDate #### ' + parser.getText());
            } if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'salesforceUserId') && (parser.getText() !=null)){
                SFUserId = parser.getText();  
                parser.nextToken();     
                 SForceUserId = parser.getText();               
                maplist.put(SFUserId ,parser.getText());
                system.debug('#### SFUserId #### ' + parser.getText());
            }  
            
           
           
           
            if (maplist != null && maplist.size() > 0 && SFUserId != null && SFUserId == 'salesforceUserId') {
                Map<String, Object> contactMap = new Map<String, Object>();
                
                for (String key : maplist.keySet()){           
                    //String val = maplist.get(key);
                    contactMap.put(key, maplist.get(key));           
                }
                
                listVals.add(contactMap);
                System.debug('MAP List ::: ' + maplist);
                System.debug('List values ::: ' + listVals);
                
                SFUserId = '';  
            }                   
        } 
        
        
        
        if (listVals != null && listVals.size() > 0) {
            for (Map<String, Object> mapVal : listVals) {   
                for (String key : mapVal.keySet())
                    system.debug(key + ' = ' + mapVal.get(key));
                
            Certification__c insertCertificate = new Certification__c();
             
            
             
                 insertCertificate.Email__c=String.valueof(mapVal.get('emailAddress'));
               
                insertCertificate.Contact__c = String.valueof(mapVal.get('salesforceUserId'));
                
        
                String enrolledDateFormat=String.valueOf(mapVal.get('enrolledDate'));
                
                 insertCertificate.Date_Assigned__c = Date.parse(enrolledDateFormat);
                
                if(mapVal.containsKey('validTo')){
                system.debug('--entered valid to block---');
                 String validTodate=String.valueOf(mapVal.get('validTo'));
                 insertCertificate.Date_Valid_To__c =Date.parse(validTodate); 
                 }

                  String validFromdate=String.valueOf(mapVal.get('validFrom'));
                 insertCertificate.Date_Valid_From__c = Date.parse(validFromdate); 
            insertCertificate.Certifications_Type__c =String.valueof(mapVal.get('certificationType')); 
            insertCertificate.User_Id__c=String.valueOf(mapVal.get('userId'));
            
         insertCertificateList.add(insertCertificate);
           
            }
            
        
    }
    
      
    
    if(insertCertificateList.size()>0){
    Database.SaveResult[] insertedList = Database.insert(insertCertificateList, false);
             for (Database.SaveResult sr : insertedList) {
             if (sr.isSuccess()) {
                   // Operation was successful, so get the ID of the record that was processed
                   System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                   IdsinsertedSuccesfully.add(sr.getId());
                   
               }
             else {
                // Operation failed, so get all errors                
              for(Database.Error err : sr.getErrors()) {
            System.debug('The following error has occurred.');                    
            System.debug(err.getStatusCode() + ': ' + err.getMessage());
            System.debug('Account fields that affected this error: ' + err.getFields());
            Error_Log__c errorLog=new Error_Log__c();
            errorLog.Status_Of_Task__c='405';
              errorLog.Name='Certification';
              errorLog.Record_Unique_Name__c=String.ValueOf(err.getFields());
              insert errorLog;
               ReturnWrapper res=new ReturnWrapper();
             res.status='405';
             res.SFId=String.ValueOf(err.getFields());
              responses.add(res);
             }
             }
             }
             insertCertificateList.clear();
             }
             
             
             if(IdsinsertedSuccesfully.size()>0){
             UpsertedRecords=[select id,User_Id__c,Contact__c,Certificate_Id__c from Certification__c where id=:IdsinsertedSuccesfully];
            }
            
            if(UpsertedRecords.size()>0){
            for(Certification__c certification:UpsertedRecords){
            Error_Log__c errorLog=new Error_Log__c();
             ReturnWrapper res=new ReturnWrapper();
             res.status='201';
             res.SFId=String.ValueOf(certification.Contact__c);
              errorLog.Status_Of_Task__c='201';
              errorLog.Name='Certification';
              errorLog.Record_Unique_Name__c=String.ValueOf(certification.Contact__c);
              insert errorLog;
              responses.add(res);
              }
              }
            
            
             
             }
            
             catch(exception e) { 
            
            system.debug('----exception---'+e);
            
             ReturnWrapper res=new ReturnWrapper();
             res.Excep=String.valueOf(e);
              res.status='405';
              res.SFId=CertError;
               responses.add(res);
             
            
            
              Error_Log__c errorLog=new Error_Log__c();
              errorLog.Status_Of_Task__c='405';
              errorLog.Name='Certification';
              errorLog.Exception__c=String.valueOf(e);
               errorLog.Record_Unique_Name__c=CertError;
              insert errorLog;
            }
            return responses;
            }
         
  
         
        global class ReturnWrapper {        
        public String status;  
        public String Excep;        
        public String SFId;
        public ReturnWrapper() {}
    }     
          
          
    
    
}