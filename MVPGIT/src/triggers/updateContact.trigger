trigger updateContact on volunteer__c (before update,before delete) {

List<Contact> conList=new List<Contact>();
List<Contact> conEmailIds=new List<Contact>();
List<String> Emailids=new list<String>();
List<Volunteer__c> volList=new List<Volunteer__c>();
map<String,String> EmailWithContactIds=new map<String,String>();

try{

if(UpsertRecursiveTrigger.runOnce()){

if(Trigger.isupdate){

for(volunteer__c vol:Trigger.New){
    Emailids.add(vol.Email__c);  
}

 conEmailIds=[Select id,Email from Contact where Email=:Emailids AND (RecordType.DeveloperName='Volunteer' OR RecordType.DeveloperName='Volunteerprofessional')];

for(Contact con:conEmailIds){

  EmailWithContactIds.put(con.Email,con.Id);  

}

for(volunteer__c vol:Trigger.New){
    Contact con=new Contact();
    con.id=EmailWithContactIds.get(vol.Email__c);
    if(con.id != null){
    con.LastName=vol.Name;
    con.Emergency_Name__c=vol.Emergency_Name__c;
    con.Name_of_your_School_or_Organization__c=vol.Name_of_your_School_or_Organization__c;
    con.Passport_Number__c=vol.Passport_Number__c;
    con.Middle_Initial__c=vol.Middle_Initial__c;
    con.Institutions_Other__c=vol.Institutions_Other__c;
    con.Instructional_Other__c=vol.Instructional_Other__c;
    con.Grade_Level_Other__c=vol.Grade_Level_Other__c;
    con.Area_Specialties_other__c=vol.Area_Specialties_other__c;
    con.Subject_Specialties_Other__c=vol.Subject_Specialties_Other__c;
    con.Accreditation_other__c=vol.Accreditation_other__c;
    con.Ref2_Country__c=vol.Ref2_Country__c; 
    con.Ref2_State_Province__c=vol.Ref2_State_Province__c;
    con.Ref2_City_Town__c=vol.Ref2_City_Town__c;
    con.Ref2_Address2__c=vol.Ref2_Address2__c;
    con.Ref2_Address__c=vol.Ref2_Address__c;
    con.Ref2_company__c=vol.Ref2_company__c;
    con.Ref2_Name__c=vol.Ref2_Name__c;
    con.Ref1_Country__c=vol.Ref1_Country__c;
    con.Ref1_State_Province__c=vol.Ref1_State_Province__c;
    con.Re1f_City_Town__c=vol.Ref1_City_Town__c;
    con.Ref1_Address2__c=vol.Ref1_Address2__c;
    con.Ref1_Address__c=vol.Ref1_Address__c;
    con.Ref1_company__c=vol.Ref1_company__c;
    con.Ref1_Name__c=vol.Ref1_Name__c;
    con.Your_School_or_organization_located_in__c=vol.Your_School_or_organization_located_in__c;
    con.Emergency_Relationship__c=vol.Emergency_Relationship__c;
    con.Years_of_experience_in_education__c=vol.Years_of_experience_in_education__c;
    con.your_Job_Title__c=vol.your_Job_Title__c;
    con.Country_of_Issunace__c=vol.Country_of_Issunace__c;
    con.Street_Address__c=vol.Street_Address__c;
    con.City__c=vol.City__c;
    con.Zip_Postal_Code__c=vol.Zip_Postal_Code__c;
    con.Ref2_Zip_Postal_Code__c=vol.Ref2_Zip_Postal_Code__c;
    con.Ref1_Zip_Postal_Code__c=vol.Ref1_Zip_Postal_Code__c;
    con.Retired__c=vol.Retired__c;
    con.Other_Languages__c=vol.Other_Languages__c;
    con.Emergency_Address__c=vol.Emergency_Address__c;
    con.Qulification__c=vol.Qualification__c;
    con.Biographical_sketch__c=vol.Biographical_sketch__c;
    con.Expiration_Date__c=vol.Expiration_Date__c;
    con.Ref1_Email_Address__c=vol.Ref1_Email_Address__c;
    con.Ref2_Email_Address__c=vol.Ref2_Email_Address__c;
    con.list_of_countries_you_have_worked__c=vol.list_of_countries_you_have_worked__c;
    con.List_all_Countries_visited_in_12_months__c=vol.List_all_Countries_visited_in_12_months__c;
    con.User_Id__c=vol.User_Id__c;
    con.Ref1_Phone_Number__c=vol.Ref1_Phone_Number__c;
    con.Ref2_Phone_Number__c=vol.Ref2_Phone_Number__c;
    con.Emergency_Telephone__c=vol.Emergency_Telephone__c;
    con.State_Province2__c=vol.State_Province2__c;
    if(vol.Country1__c == 'None'){
    con.Country1__c=null;
    }
    else{
     con.Country1__c=vol.Country1__c;
    }
    
    con.Availability__c=vol.Availability__c;
    con.ExpirationLink__c=vol.ExpirationLink__c;
    con.Employment_Status__c=vol.Employment_Status__c;
    con.Experence_AdvancED__c=vol.Experence_AdvancED__c;
    con.I_am_eleot_2_0_certified__c=vol.I_am_eleot_2_0_certified__c;
    con.Faith_choose__c=vol.Faith_choose__c;
    con.Status__c=vol.Status__c;
    con.Volunteer__c=vol.Volunteer__c;
    
    con.where_would_you_like_to_serve__c=vol.where_would_you_like_to_serve__c;
    con.Faith_based_institution__c=vol.Faith_based_institution__c;
    con.Accreditation_affiliation_and_experience__c=vol.Accreditation_affiliation_and_experience__c;
    con.Area_Specialties__c=vol.Area_Specialties__c;
    con.Engagement_Review_Team_Experience__c=vol.Engagement_Review_Team_Experience__c;
    con.Grade_level_Speciality__c=vol.Grade_level_Speciality__c;
    con.I_would_like_to_serve_as__c=vol.I_would_like_to_serve_as__c;
    con.In_what_roles_have_you_served_AdvancED__c=vol.In_what_roles_have_you_served_AdvancED__c;
    con.Types_of_Institutions_where_you_have_wor__c=vol.Types_of_Institutions_where_you_have_wor__c;
    con.Instructional_Experience__c=vol.Instructional_Experience__c;
    con.Languages__c=vol.Languages__c;
    con.Regions_where_you_have_already_served__c=vol.Regions_where_you_have_already_served__c;
    con.Specialties__c=vol.Specialties__c;
    con.Subject_Content_Specialties__c=vol.Subject_Content_Specialties__c;
    con.Types_of_teams_you_interested_in_serving__c=vol.Types_of_teams_you_interested_in_serving__c;
    con.FirstName=vol.First_Name__c;
    con.Phone=vol.MobilePhone__c;
    con.Salutation=vol.Salutation__c;
    con.ResendLink__c=vol.ResendLink__c;
    con.ExpirationDateTime__c=vol.ExpirationDateTime__c;
    con.LinkAfterApproval__c=vol.LinkAfterApproval__c;
    con.Do_you_have_a_valid_passport__c=vol.Do_you_have_a_valid_passport__c;
    
    //postcall
     
    conlist.add(con);
    }
     
    
}
if(conlist.size()>0){
update conlist;

}
}

if(Trigger.isupdate){
for(volunteer__c vol:Trigger.New){

  if(vol.Status__c == 'Approved'){
    Contact contactRecord=new Contact();
    if(vol.Email__c != null){
    contactRecord=[select id from Contact where Email=:vol.Email__c AND (RecordType.DeveloperName='Volunteer' OR RecordType.DeveloperName='Volunteerprofessional')];
    }
    if(contactRecord != null){
     UpdateVolunteer.makePostCallout(contactRecord.id);
    }
    }

}

}

//Delete records in Contact w.r.t to Volunteer based on email ids

if(trigger.isDelete)
 {
 
 system.debug('Entered into delete block');
 
  List<Contact> lstToDelete = new List<Contact>();  
  List<String> delEmailIds=new List<String>();
  for(Volunteer__c deletedvol : trigger.old)
  {
  
  system.debug('-----deletedcon-----'+deletedvol.id);
   delEmailIds.add(deletedvol.Email__c);
  }
  
  
  if(delEmailIds!=null){
  lstToDelete=[select id from Contact where Email=:delEmailIds and (RecordType.DeveloperName='Volunteer' OR RecordType.DeveloperName='Volunteerprofessional')];
  }
  
  system.debug('----lstToDelete---'+lstToDelete);
  
  if(lstToDelete.size()>0){
  delete lstToDelete;
  
  }
 
  
  

 }

}
}

 catch(exception e) { 
Error_Log__c errorLog=new Error_Log__c();
             errorLog.Status_Of_Task__c='405';
              errorLog.Name='Volunteer Upsert';
             errorLog.Exception__c=(String.valueOf(e)).substring(0, 49);
              errorLog.Record_Unique_Name__c=string.join(Emailids,',');
              insert errorLog;
              
              for(volunteer__c vol:Trigger.New){
                        vol.addError('There was a problem in Updating the Record');
            }
}

}