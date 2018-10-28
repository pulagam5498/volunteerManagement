/**
 * Ensures that email addresses are unique
 **/
trigger contactUniqueEmail on Contact (before insert, before update) {
    Map<String, Contact> emails = new Map<String, Contact>();
    for (Contact c : Trigger.New) {
    if(c.RecordTypeId ==  Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteer').getRecordTypeId() || c.RecordTypeId ==  Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Volunteerprofessional').getRecordTypeId()){
     
        if (!String.IsBlank(c.Email))
            emails.put(c.Email, c);
            }
    }
  
    if (Trigger.IsInsert) {
        for (Contact c : [SELECT Id,RecordTypeId,Email FROM Contact WHERE (Email in :emails.keySet()) AND (RecordType.DeveloperName='Volunteer' OR RecordType.DeveloperName='Volunteerprofessional')]) {
          
        }
    }
    else if (Trigger.IsUpdate) {
        for (Contact c : [SELECT Id, Email FROM Contact WHERE (Email in :emails.keySet()) AND (Id NOT IN :Trigger.OldMap.keySet())AND (RecordType.DeveloperName='Volunteer' OR RecordType.DeveloperName='Volunteerprofessional') AND Status__c!='Approved']) {
            
        }
    }
}