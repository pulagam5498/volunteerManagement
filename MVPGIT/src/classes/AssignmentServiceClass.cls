@RestResource(urlMapping='/AssignmentClass/*')
global with sharing class AssignmentServiceClass {
    @HttpPost
    global static ReturnWrapper updateAssignmentRecords(Integer reviewId,String salesforceId,Integer userId,String email,String role,Boolean active) {
     
     
     ReturnWrapper response=new ReturnWrapper();
     string Excep; 
     String AssignmentNo;
     
     try{
     
            Integer ReviewIDs=Integer.valueOf(ReviewId);
        
        Map<Integer, Id> engagements = ServiceHelper.getEngagements(ReviewIDs);
        
            List<Assignment__c> AssignRecord=new List<Assignment__c>();
            if(reviewId !=null && salesforceId!=null){
            try{
                AssignRecord=[Select id,Name from Assignment__c where Engagement__r.Review_ID__c=:reviewId and Contact__c=:salesforceId limit 1];
            }
            catch(exception e) { 
            }
            
            }
            Assignment__c newAssignment = new Assignment__c();
            
            if(AssignRecord.size()>0){
            newAssignment.id=AssignRecord[0].id;
             newAssignment.IsActive__c = Boolean.valueOf(active);
            newAssignment.Role__c = role;
           newAssignment.User_Id__c=string.valueOf(userId);
            }
            else{
              newAssignment.Engagement__c = engagements.get(ReviewIDs);
              newAssignment.Contact__c = salesforceId;
               newAssignment.IsActive__c = Boolean.valueOf(active);
            newAssignment.Role__c = role;
           newAssignment.User_Id__c=string.valueOf(userId);
            }
          
            
            
            
             
            upsert newAssignment;
            Assignment__c insertedRecord=new Assignment__c();
            insertedRecord=[select id,Name from Assignment__c where id =:newAssignment.id];
            
            response.status='201';
             response.Excep = 'Record inserted';
            AssignmentNo=insertedRecord.Name;
            }
            catch(exception e) { 
            
            system.debug('----exception---'+e);
             Excep=String.valueOf(e);
            response.status='405';
            response.Excep=String.valueOf(e);
  
            }
            
            
            Error_Log__c errorLog=new Error_Log__c();
            errorLog.Name='Assignment';
            errorLog.Status_Of_Task__c=response.status;
            errorLog.Status_Of_Task__c=response.status;
            if(AssignmentNo != null){
            errorLog.Record_Unique_Name__c=AssignmentNo;
            }
            if(Excep != null){
            errorLog.Exception__c=Excep;
            }
            
            insert errorLog;
            
            return response;
            }
            
            
       global class ReturnWrapper { 
             public String Status; 
            public String Excep;     
        public ReturnWrapper() {}
    }    
}