public with sharing class Test {


    public Contact Volunteer {get; set;}
    public Contact findDuplicate {get; set;}
    
     public boolean dupli{get;set;}
    public Test(ApexPages.StandardController stdController) {
       dupli = false;
    Volunteer = (Contact)stdController.getRecord();  
    
    }
    string id = ApexPages.CurrentPage().getparameters().get('id');
    
     public void saveContact() {
       try {
       system.debug('---------volunteer email------------'+Volunteer.email);
        
         findDuplicate = [select FirstName,email,status__c from Contact where id =:id];
       
       
       
       Upsert(Volunteer);
       }
       catch(System.DMLException e) {
           ApexPages.addMessages(e);
          
       }     
     
     }
     }