trigger VoulunteerManage on Contact (after insert,before update, after delete) {
if(UpsertRecursiveTrigger.runOnce()){
//todo
//make labels for all the hardcoded strings

system.debug('entered into the block');
List<Contact> conListUpdate=new List<Contact>();
    //get the contact record types
    Map<ID, RecordType> recordTypeMap = New Map<ID, RecordType>([Select ID, Name From RecordType Where sObjectType = 'Contact']);
    List<Contact> conList=new List<Contact>();

    system.debug('recordTypeMap----------'+recordTypeMap);
    
     if(Trigger.isafter && Trigger.isinsert){
      List<Contact> recordtoInsert=new list<Contact>();
     for(Contact con:Trigger.new){
      if(con.recordTypeId == Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId() && (con.Status__c == 'Approved' || con.Status__c == 'New')){
          recordtoInsert.add(con);
          }
          system.debug('-----con---'+con.Email);
     }
     if(recordtoInsert.size()>0){
      updateVolunteerBeforeUpdate RecordsUpsert=new updateVolunteerBeforeUpdate(recordtoInsert);
      }
     }
    
    
    if(Trigger.isafter && Trigger.isinsert){
   
    
         for(Contact con:Trigger.new){
         system.debug('----insert block1-----');
         if(con.recordTypeId == Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId() && (con.Status__c == 'Approved' || con.Status__c == 'New')){
             
             if(con.Status__c == 'Approved' && con.Volunteer__c == true){
             UpdateVolunteer.makePostCallout(con.id);
             }
             
         }
        }
     
        
    }


    if(Trigger.isupdate){


    for(Contact con:Trigger.new){
    
     if(con.RecordTypeId ==  Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId() || (con.RecordTypeId ==  Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteerprofessional').getRecordTypeId())){
                  set<String> EmailIds=new set<String>();
                  List<Volunteer__c> volList= new List<Volunteer__c>();
                  
                  List<String> conListInsert=new List<String>();
                 
                 conListUpdate.add(con);
                 }
    
    
    }
    
     if(conListUpdate.size()>0){
    system.debug('----conListUpdate----'+conListUpdate);
    updateVolunteerBeforeUpdate RecordsUpsert=new updateVolunteerBeforeUpdate(conListUpdate);
}
    
    }





if(Trigger.isupdate){


    for(Contact con:Trigger.new){
    
        if(con.RecordTypeId ==  Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId() || (con.RecordTypeId ==  Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteerprofessional').getRecordTypeId())){
                  set<String> EmailIds=new set<String>();
                  List<Volunteer__c> volList= new List<Volunteer__c>();
                 
                 volList=[select id,Email__c from Volunteer__c where Email__c =:EmailIds];
                 

   switch on con.Status__c{
                            
                        when 'New'{
                                system.debug('enterd block new');
                        }
                        when 'Approved'{
                        if(con.Volunteer__c == true){
                        UpdateVolunteer.makePostCallout(con.id);
                        }
                        
                        
                            system.debug('entered approved');
                        }
                        when 'Needs Approval'
                        {
                            system.debug('entered needs approval block');
                        }
                        when 'Approval Denied'
                         {
                         Contact conOld=Trigger.oldMap.get(con.id);
                         system.debug('----conOld----'+conOld.Status__c);
                         if(conOld.Status__c == 'Approved'){
                          UpdateVolunteer.makePostCallout(con.id);
                           system.debug('Approval Denied');
                           }
                         }

                    }
                        

                    }
    }
   
}






//Delete records in volunteer w.r.t to contact based on email ids

if(trigger.isDelete)
 {
 
 system.debug('Entered into delete block');
 
  List<Volunteer__c> lstToDelete = new List<Volunteer__c>();  
  List<String> EmailIds=new List<String>();
  for(Contact deletedcon : trigger.old)
  {
  
  system.debug('-----deletedcon-----'+deletedcon.id);
   EmailIds.add(deletedcon.Email);
  }
  
  
  if(EmailIds!=null){
  lstToDelete=[select id from Volunteer__c where Email__c=:EmailIds];
  }
  
  system.debug('----lstToDelete---'+lstToDelete);
  
  if(lstToDelete.size()>0){
  delete lstToDelete;
  
  }
 
  

 }


}
}