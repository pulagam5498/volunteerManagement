@RestResource(urlMapping='/ReviewClass/*')
global with sharing class ReviewServiceClass {
    @HttpPost
    
    global static ReturnWrapper updateReviewRecords(String reviewName,Integer reviewId,String reviewType,String protocolName,Integer protocolId,String protocolType,Integer customerId,Integer customerNumber,String salesforceCustomerId,Boolean active,String startDate,String endDate,String confirmDate) {
      
       ReturnWrapper response=new ReturnWrapper();
       String reviewNo;
       String Excep;
      
      try{
           system.debug('-----reviewName----'+reviewName); 
           
           Integer ReviewIds=Integer.ValueOf(reviewId);
           
           
           
       Map<Integer, Id> engagements = ServiceHelper.getEngagements(ReviewIds);
       
       system.debug('----engagements ----'+engagements);
        
        Engagement__c newReview = new Engagement__c();
        
        
            if(engagements.containsKey(ReviewIds)){
            
            
            newReview.id=engagements.get(ReviewIds);
            
            }
            newReview.Review_Id__c = decimal.valueOf(ReviewId);
            
            
            Account Acc=new Account();
            Acc=[select id,Name,Customer_Number__c from Account where Customer_Number__c=: String.valueOf(customerNumber)];
            
            
            
            newReview.Account__c = Acc.id;
            
            if(!(String.isEmpty(StartDate))){
                    if(StartDate.contains('-')){
            
                    String[] arrDate = StartDate.split('-');
                    system.debug('-----arrDate----'+arrDate);
                    StartDate=arrDate[1]+'/'+arrDate[2]+'/'+arrDate[0];
            }   
                    Date startDateFormat = Date.parse(StartDate);
                    newReview.Start_Date__c = startDateFormat;
            }
            
            if(!(String.isEmpty(EndDate))){
                if(EndDate.contains('-')){
            
                    String[] arrDate = EndDate.split('-');
                    system.debug('-----arrDate----'+arrDate);
                    EndDate=arrDate[1]+'/'+arrDate[2]+'/'+arrDate[0];
            }   
            Date EndDateFormat = Date.parse(EndDate);
            newReview.End_Date__c = EndDateFormat;
            }
            newReview.Protocol_Name__c = ProtocolName;
            newReview.Protocol_Type__c = ProtocolType;
            
            if(!(String.isEmpty(ConfirmDate))){
            if(ConfirmDate.contains('-')){
            
                    String[] arrDate = ConfirmDate.split('-');
                    system.debug('-----arrDate----'+arrDate);
                    ConfirmDate=arrDate[1]+'/'+arrDate[2]+'/'+arrDate[0];
            }   
            Date ConfirmDateFormat = Date.parse(ConfirmDate);
            newReview.Confirm_Date__c = ConfirmDateFormat;
            }
            newReview.Review_Name__c = ReviewName;
            newReview.review_type__c = ReviewType;
            
// Added this in based on the demo on Oct 10 - the Review should have the flag updated as active if we update, or create
// When a review is deleted in eProve the flat status will be set to inactive - we will not delete the record in Salesforce but only update the status
             
            newReview.active__c = active;
            
// End of Add            
            
            upsert newReview;
            
            Engagement__c insertedRecord=new Engagement__c();
            insertedRecord=[select id,Name from Engagement__c where id=: newReview.id];
            
            response.status='201';
             response.Excep = 'Record inserted';

            reviewNo=insertedRecord.Name;
            }
            catch(exception e) { 
            
            system.debug('----exception---'+e);
            
            
             
             
            Excep=String.valueOf(e);
            response.Excep=String.valueOf(e);
            response.status='405';
            }
            
            
            Error_Log__c errorLog=new Error_Log__c();
            errorLog.Name='Review';
            errorLog.Status_Of_Task__c=response.status;
            if(reviewNo != null){
            errorLog.Record_Unique_Name__c=reviewNo;
            }
            if(Excep != null){
            errorLog.Exception__c=Excep;
            }
            
            insert errorLog;
            
            return response;
            }
            
            
       global class ReturnWrapper {        
        public String Status; 
          Public String Excep;
           
        public ReturnWrapper() {}
    }    
        
    
}