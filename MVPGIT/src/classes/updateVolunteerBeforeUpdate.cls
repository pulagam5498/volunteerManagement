global class updateVolunteerBeforeUpdate
{
public updateVolunteerBeforeUpdate(List<Contact> conList) {

List<Contact> contactList=new List<Contact>();

List<Volunteer__c> volList=new List<Volunteer__c>();
map<String,String> EmailWithVolIds=new map<String,String>();
set<String> Emailids=new set<String>();
List<Volunteer__c> volEmailIds=new List<Volunteer__c>();
volunteer__c testvol=new Volunteer__c();

system.debug('-----conList----'+conList);

// contactList=[select id,Salutation, FirstName, Middle_Initial__c,LinkAfterApproval__c,ExpirationDateTime__c,ResendLink__c,Specialties__c,User_Id__c,Status__c,Volunteer__c, LastName, Country1__c, State_Province2__c, City__c, Street_Address__c, Zip_Postal_Code__c, phone, Email, Emergency_Name__c, Emergency_Relationship__c, Emergency_Telephone__c, Emergency_Address__c, Languages__c,   Other_Languages__c, list_of_countries_you_have_worked__c, where_would_you_like_to_serve__c, Passport_Number__c, Country_of_Issunace__c, Expiration_Date__c,List_all_Countries_visited_in_12_months__c, Employment_status__c, Retired__c, Name_of_your_School_or_ORganization__c, Your_School_or_organization_located_in__c, your_Job_Title__c, Years_of_experience_in_education__c, Subject_Content_Specialties__c, Subject_Specialties_Other__c, Area_Specialties__c, Area_Specialties_other__c, Grade_level_Speciality__c, Grade_Level_Other__c, Instructional_Experience__c, Instructional_Other__c, Types_of_Institutions_where_you_have_wor__c, Institutions_Other__c, Faith_based_institution__c, Faith_choose__c, Experence_AdvancED__c, Accreditation_affiliation_and_experience__c, Accreditation_other__c, In_what_roles_have_you_served_AdvancED__c, Engagement_Review_Team_Experience__c, Regions_where_you_have_already_served__c, I_am_eleot_2_0_certified__c, I_would_like_to_serve_as__c, Availability__c, Types_of_teams_you_interested_in_serving__c, Biographical_sketch__c, Qulification__c, Ref1_Name__c, Ref1_company__c, Ref1_Address__c,  Ref1_Address2__c, Re1f_City_Town__c, Ref1_State_Province__c, Ref1_Zip_Postal_Code__c, Ref1_Country__c, Ref1_Email_Address__c, Ref1_Phone_Number__c, Ref2_Name__c, Ref2_company__c, Ref2_Address__c, Ref2_Address2__c, Ref2_City_Town__c, Ref2_State_Province__c, Ref2_Zip_Postal_Code__c, Ref2_Country__c, Ref2_Email_Address__c, Ref2_Phone_Number__c from Contact where id=:conListId];

for(Contact con:conList){
    Emailids.add(con.Email);  
    system.debug('------Emailids-----'+Emailids);
}







volEmailIds=[Select id,Email__c from Volunteer__c where Email__c=:Emailids];


for(Volunteer__c vol:volEmailIds){
  EmailWithVolIds.put(vol.Email__c,vol.Id);  
}


for(Contact con:conList){
                 volunteer__c vol=new volunteer__c () ;
                 vol.ResendLink__c=con.ResendLink__c;
                                
                if(EmailWithVolIds.get(con.Email) != null){
     vol.id=EmailWithVolIds.get(con.Email);
     }
     
     else{
      vol.ResendLink__c=true;
      }
     
     vol.Email__c=con.Email;
    vol.Name=con.LastName;
    vol.Emergency_Name__c=con.Emergency_Name__c;
    vol.Name_of_your_School_or_Organization__c=con.Name_of_your_School_or_Organization__c;
    vol.Passport_Number__c=con.Passport_Number__c;
    vol.Middle_Initial__c=con.Middle_Initial__c;
    vol.Institutions_Other__c=con.Institutions_Other__c;
    vol.Instructional_Other__c=con.Instructional_Other__c;
    vol.Grade_Level_Other__c=con.Grade_Level_Other__c;
    vol.Area_Specialties_other__c=con.Area_Specialties_other__c;
    vol.Subject_Specialties_Other__c=con.Subject_Specialties_Other__c;
    vol.Accreditation_other__c=con.Accreditation_other__c;
    vol.Ref2_Country__c=con.Ref2_Country__c; 
    vol.Ref2_State_Province__c=con.Ref2_State_Province__c;
    vol.Ref2_City_Town__c=con.Ref2_City_Town__c;
    vol.Ref2_Address2__c=con.Ref2_Address2__c;
    vol.Ref2_Address__c=con.Ref2_Address__c;
    vol.Ref2_company__c=con.Ref2_company__c;
    vol.Ref2_Name__c=con.Ref2_Name__c;
    vol.Ref1_Country__c=con.Ref1_Country__c;
    vol.Ref1_State_Province__c=con.Ref1_State_Province__c;
    vol.Ref1_City_Town__c=con.Re1f_City_Town__c;
    vol.Ref1_Address2__c=con.Ref1_Address2__c;
    vol.Ref1_Address__c=con.Ref1_Address__c;
    vol.Ref1_company__c=con.Ref1_company__c;
    vol.Ref1_Name__c=con.Ref1_Name__c;
    vol.Your_School_or_organization_located_in__c=con.Your_School_or_organization_located_in__c;
    vol.Emergency_Relationship__c=con.Emergency_Relationship__c;
    vol.Years_of_experience_in_education__c=con.Years_of_experience_in_education__c;
    vol.your_Job_Title__c=con.your_Job_Title__c;
    vol.Country_of_Issunace__c=con.Country_of_Issunace__c;
    vol.Street_Address__c=con.Street_Address__c;
    vol.City__c=con.City__c;
    vol.Zip_Postal_Code__c=con.Zip_Postal_Code__c;
    vol.Ref2_Zip_Postal_Code__c=con.Ref2_Zip_Postal_Code__c;
    vol.Ref1_Zip_Postal_Code__c=con.Ref1_Zip_Postal_Code__c;
    vol.Retired__c=con.Retired__c;
    vol.Other_Languages__c=con.Other_Languages__c;
    vol.Emergency_Address__c=con.Emergency_Address__c;
    vol.Qualification__c=con.Qulification__c;
    vol.Biographical_sketch__c=con.Biographical_sketch__c;
    vol.Expiration_Date__c=con.Expiration_Date__c;
    vol.Ref1_Email_Address__c=con.Ref1_Email_Address__c;
    vol.Ref2_Email_Address__c=con.Ref2_Email_Address__c;
    vol.list_of_countries_you_have_worked__c=con.list_of_countries_you_have_worked__c;
    vol.List_all_Countries_visited_in_12_months__c=con.List_all_Countries_visited_in_12_months__c;
    vol.User_Id__c=con.User_Id__c;
    vol.Ref1_Phone_Number__c=con.Ref1_Phone_Number__c;
    vol.Ref2_Phone_Number__c=con.Ref2_Phone_Number__c;
    vol.Emergency_Telephone__c=con.Emergency_Telephone__c;
    vol.State_Province2__c=con.State_Province2__c;
    vol.Country1__c=con.Country1__c;
    vol.Availability__c=con.Availability__c;
    vol.Employment_Status__c=con.Employment_Status__c;
    vol.Experence_AdvancED__c=con.Experence_AdvancED__c;
    vol.I_am_eleot_2_0_certified__c=con.I_am_eleot_2_0_certified__c;
    vol.Faith_choose__c=con.Faith_choose__c;
    system.debug('---status---'+con.Status__c);
    vol.Status__c=con.Status__c;
    system.debug('---status---'+vol.Status__c);
    vol.Volunteer__c=con.Volunteer__c;
    
    if(con.Status__c == 'New'){
    vol.ExpirationLink__c=false;
    }
    
    vol.where_would_you_like_to_serve__c=con.where_would_you_like_to_serve__c;
    vol.Faith_based_institution__c=con.Faith_based_institution__c;
    vol.Accreditation_affiliation_and_experience__c=con.Accreditation_affiliation_and_experience__c;
    vol.Area_Specialties__c=con.Area_Specialties__c;
    vol.Engagement_Review_Team_Experience__c=con.Engagement_Review_Team_Experience__c;
    vol.Grade_level_Speciality__c=con.Grade_level_Speciality__c;
    vol.I_would_like_to_serve_as__c=con.I_would_like_to_serve_as__c;
    vol.In_what_roles_have_you_served_AdvancED__c=con.In_what_roles_have_you_served_AdvancED__c;
    vol.Types_of_Institutions_where_you_have_wor__c=con.Types_of_Institutions_where_you_have_wor__c;
    vol.Instructional_Experience__c=con.Instructional_Experience__c;
    vol.Languages__c=con.Languages__c;
    vol.Regions_where_you_have_already_served__c=con.Regions_where_you_have_already_served__c;
    vol.Specialties__c=con.Specialties__c;
    vol.Subject_Content_Specialties__c=con.Subject_Content_Specialties__c;
    vol.Types_of_teams_you_interested_in_serving__c=con.Types_of_teams_you_interested_in_serving__c;
    vol.First_Name__c=con.FirstName;
    vol.MobilePhone__c=con.Phone;
    vol.Salutation__c=con.Salutation;   
   
    vol.ExpirationDateTime__c=con.ExpirationDateTime__c;
    vol.LinkAfterApproval__c=con.LinkAfterApproval__c;
     vol.Do_you_have_a_valid_passport__c=con.Do_you_have_a_valid_passport__c;
                
        volList.add(vol);       
                
               system.debug('----firtname---'+con.FirstName);
                
         system.debug('-----volList----'+volList);       
                
                
                
                

}
if(volList.size()>0){
try{
upsert volList;
}       
catch(exception e) {        
 Error_Log__c errorLog=new Error_Log__c();       
errorLog.Status_Of_Task__c='405';     
 errorLog.Name='Volunteer Upsert';     
   errorLog.Exception__c=String.valueOf(e);      
                 List<String> ListOfEmails=new List<String>();     
                 ListOfEmails.addAll(Emailids);        
                errorLog.Record_Unique_Name__c=string.join(ListOfEmails,',');        
                insert errorLog;      
                  for (Contact con: conList) {     
                          con.addError('There was a problem in Updating the Record');     
                  }       
                      
 }
}



}
}