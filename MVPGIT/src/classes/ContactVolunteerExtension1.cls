public without sharing class ContactVolunteerExtension1 { 
    
    public  Contact Volunteer{get;set;}
    public boolean dupli{get;set;}
    public boolean disablebutton{get;set;}
    public  boolean checkValidate;
    public boolean EnteredLastName{get;set;}
    public boolean EnteredFirstName{get;set;}
    public boolean EnteredEmail{get;set;}
     public boolean Enteredphone{get;set;}
    public boolean Enteredcountry{get;set;}
      public boolean EnteredState{get;set;}
      
    public ContactVolunteerExtension1(ApexPages.StandardController stdController) {
        dupli = false;
       Volunteer = (Contact)stdController.getRecord();  
       system.debug('----Volunteer----'+Volunteer);    
       disablebutton=true;
      
    }


public void validate(){

     try{
     checkValidate=false;
     EnteredFirstName=false;
     EnteredLastName=false;
     EnteredEmail=false;
     enteredphone=false;
     Enteredcountry=false;
     EnteredState=false;
     
     system.debug('-------firstName----'+Volunteer.FirstName);
      system.debug('-------LastName----'+Volunteer.LastName);
     
   if(Volunteer.FirstName ==null){
   EnteredFirstName=true;
   checkValidate=true;
   }
   if(Volunteer.LastName ==null){
   EnteredLastName=true;
   checkValidate=true;
   }
   if(Volunteer.Email==null){
   EnteredEmail=true;
   checkValidate=true;
   }
    if(Volunteer.Phone == null){
   EnteredPhone=true;
   checkValidate=true;
   }
   if(Volunteer.Country1__c==null){
   EnteredCountry=true;
    checkValidate=true;
   }
   if(Volunteer.Country1__c=='United States of America' || Volunteer.Country1__c=='Canada'){
   if(Volunteer.State_Province2__c==null){          
   EnteredState=true;
   checkValidate=true;
   }
   }
   
    if(EnteredFirstName !=true && EnteredEmail !=true && EnteredLastName!=true && EnteredPhone!=true && EnteredCountry!=true && EnteredState!=true){    
         system.debug('---------volunteer email------------'+Volunteer.email);
        List<Contact> findDuplicate = [select id,name,email,status__c,RecordTypeId from contact where email =: Volunteer.email];
        system.debug('***********findduplicate***********'+findDuplicate);
        if(findDuplicate.size()>0 && findDuplicate != null){
               dupli = true;
                if(findDuplicate[0].RecordTypeId ==  Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId() || findDuplicate[0].RecordTypeId ==  Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteerprofessional').getRecordTypeId())
                {
                    switch on findDuplicate[0].status__c{
                            
                        when 'New'{
                        findDuplicate[0].status__c = 'New';
                        
                        
                        findDuplicate[0].ResendLink__c=true;
                                system.debug('enterd block new');
                                 checkValidate=true;
                                 disablebutton=false;
                                ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.info,'Our records indicate that you started the volunteer process with us. A link to the Volunteer Profile form has been resent to you. Please complete and submit the form. If you are having difficulties accessing the form, please contact us at<a href="mailto:VolunteerServices@advanc-ed.org">VolunteerServices@advanc-ed.org.</a>'));
                               
                              
                                
            disablebutton=false;
                       update findDuplicate[0];
                        
                        contact con=new contact();
                        con.ResendLink__c=false;
                        con.id=findDuplicate[0].id;
                      
                      
                        
                        }
                        when 'Approved'{
                            system.debug('entered approved');
                            checkValidate=true;
                            disablebutton=false;
                            ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.info,'Our records indicate you are already a registered volunteer. If you have questions, please contact us at<a href="mailto:VolunteerServices@advanc-ed.org">VolunteerServices@advanc-ed.org</a>or access and update your profile through<a href="https://uatmyjourney.advanc-ed.org/">myJourney&trade;.</a>'));
                             disablebutton=false;
                        }
                        when 'Needs Approval'
                        {
                            system.debug('entered needs approval block');
                             checkValidate=true;
                             disablebutton=false;
                            ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.info,'Your request has been received already by AdvancED | Measured Progress Volunteer Services. It is currently being reviewed and someone will contact you shortly. If you would like to reach out directly, please contact us at<a href="mailto:VolunteerServices@advanc-ed.org">VolunteerServices@advanc-ed.org.</a>'));
                            disablebutton=false;
                      }
                        when 'Approval Denied'
                        {
                         checkValidate=true;
                         
                       
                       
                            system.debug('entered approval denied block');
                            disablebutton=false;
                            ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.info,'Thank you for your interest in serving as an AdvancED | Measured Progress Volunteer. Based on your submission, we cannot approve your Volunteer Profile at this time. To learn more about our decision, please contact<a href="mailto:VolunteerServices@advanc-ed.org">VolunteerServices@advanc-ed.org.</a>'));
                          disablebutton=false;
                        update findDuplicate[0];
                        
                        }


                    }
            
        }
        
        system.debug('before entered into the professional Add');
        
        system.debug('------'+Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId());
        
        
                  if(findDuplicate[0].RecordTypeId ==  '012j0000000qXbE' || findDuplicate[0].RecordTypeId ==  '012j0000000qXbD')
                {
                system.debug('entered into the professional Add');
                  
                   findDuplicate[0].status__c = 'New';
                    findDuplicate[0].RecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteerprofessional').getRecordTypeId();  
                    system.debug('------'+findDuplicate[0].RecordTypeId);
                    disablebutton=false;
                    ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.info,'Thank you for your interest. You will receive an email with instructions shortly. If you do not receive an email within 24 hours, please contact<a href="mailto:VolunteerServices@advanc-ed.org">VolunteerServices@advanc-ed.org.</a>'));
                   checkValidate=true;
                           disablebutton=false;  
                    update findDuplicate[0];
            
                }
         

        }
        }
    }
    
    catch(Exception e){
    
    system.debug('---exception----'+e);
       
    }

}
   
   
     public PageReference save() {
     
     disablebutton=false;
       if(webtovolunteerRecursive.runOnce()){
         
         validate();
         
         system.debug('-----checkValidate----'+checkValidate);
         system.debug('--email---'+Volunteer.Email);
         
         system.debug('entered save operation');

         if(!checkValidate){
         
                system.debug('validate is true');
                
                  try{
                
             Volunteer.Status__c ='new';
             
               Volunteer.RecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId();            
               Volunteer.Accountid = '0011b00000MFlJO';
               Volunteer.ResendLink__c=true;
                
                 
                 system.debug('----Volunteer----'+Volunteer);
                 system.debug('-----disablebutton----'+disablebutton);
                 
                       system.debug('Before Insert');      
                 insert(Volunteer);
                 disablebutton=false;
                  system.debug('After Insert'); 
                 contact con=new Contact();
              
                 con.ResendLink__c=false;
                 con.id=Volunteer.id;
             
             
              
                 
                    ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.info,'Thank you for your interest. You will receive an email with instructions shortly. If you do not receive an email within 24 hours, please contact<a href="mailto:VolunteerServices@advanc-ed.org">VolunteerServices@advanc-ed.org.</a>'));
            
             }catch(Exception e){
             system.debug('---exception----'+e);
 }
    
            }


       }
       

       return null;

     }
     
}