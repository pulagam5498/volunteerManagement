public without sharing class VolunteerExtension {    


    public String getFirstName() {
        return null;
    }

     public Volunteer__c UpdateVolunteer =new Volunteer__c();
     public String StatusOfVolunteer{get;set;}

    public String allVolunteer { get; set; }
    public String FirstName{get;set;}
    public String MiddleInitial{get;set;}
    public String LastName{get;set;}
    public String City{get;set;}
    public String StreetAddress{get;set;}
    public String ZipPostalCode{get;set;}
    public String Email{get;set;}
    public String EmergencyName{get;set;}
    public String EmergencyRelationship{get;set;}
    public String EmergencyTelephone{get;set;}
    public String EmergencyAddress{get;set;}
    public String OtherLanguages{get;set;}
    public String ListOfCountriesyouHaveWorked{get;set;}
    public String PassportNumber{get;set;}
    public String CountryOfIssuance{get;set;}
    public String ExpirationDate{get;set;}
    public String ListAllCountriesYouHaveVisitedWithinThe12Months{get;set;}
    public String Retired{get;set;}
    public String NameOfUrSchoolOrOrganization{get;set;}
    public String YourSchoolOrOrganizationLocated{get;set;}
    public String YourJobTitle{get;set;}
    public String YearsOfExperienceInEducation{get;set;}
    public String SubjectSpecialitiesOther{get;set;}
    public String AreaSpecialitiesOther{get;set;}
    public String GradeLevelOther{get;set;}
    public String InstructionalOther{get;set;}
    public String InstitutionsOther{get;set;}
    public string AccreditationOther{get;set;}
    public String BiographicalSketch{get;set;}
     public String Qualification{get;set;}
     public String Phone{get;set;}
    public String Ref1Name{get;set;}
    public String Ref1Company{get;set;}
    public String Ref1Address{get;set;}
    public String Ref1Address2{get;set;}
    public String Ref1StateProvince{get;set;}
    public String Ref1ZipPostalCode{get;set;}
    public String Ref1Country{get;set;} 
    public String Ref1EmailAddress{get;set;} 
    public String Ref1PhoneNumber{get;set;} 
    public String Ref2Name{get;set;} 
    public String Ref2Company{get;set;} 
    public String Ref2Address{get;set;} 
    public String Ref2Address2{get;set;} 
    public String Ref2CityTown{get;set;} 
    public String Ref2StateProvince{get;set;} 
    public String Ref2ZipPostalCode{get;set;} 
    public String Ref2Country{get;set;} 
    public String Ref2EmailAddress{get;set;} 
    public String Ref2PhoneNumber{get;set;} 
    
    
    //public String contact { get; set; }
    
    public String Languages;
     public String SubjectSpecialit;
     public String AreaSpecialit;
     public String GradeSpecialit;
     public String InstructionalSpec;
     public String InstitutionType;
     public String AccrediationOption;
     public String RoleType;
     public String TeamType;
     public String Region;
     public String LiketoServeOpt;
     public String TypesOfTeamOpt;
     
     
     public set<String> LanguagesSelected;
     public set<String> SubjectSpecialitSelected;
     public set<String> AreaSpecialitSelected;
     public set<String> GradeSpecialitSelected;
     public set<String> InstructionalSpecSelected;
     public set<String> InstitutionTypeSelected;
     public set<String> AccrediationOptionSelected;
     public set<String> RoleTypeSelected;
     public set<String> TeamTypeSelected;
     public set<String> RegionSelected;
     public set<String> LiketoServeOptSelected;
     public set<String> TypesOfTeamOptSelected;
   
   
   
   
    public Boolean SelectSalutation{get;set;}
    public Boolean SelectedFirstName{get;set;}
    public Boolean SelectedLastName{get;set;}
    public Boolean SelectedCountry{get;set;}
    public Boolean SelectedCity{get;set;}
    public Boolean SelectedPhone{get;set;}
    
    public Boolean SelectLanguage{get;set;}     
    public Boolean SelectedListOfCountries{get;set;}  
    public Boolean SelectedServe{get;set;} 
  
    public Boolean SelectedEmpStatus{get;set;}
    public Boolean SelectedYearsOfExperience{get;set;}
    public Boolean Selectsubject{get;set;}
    public Boolean SelectArea{get;set;}
    public Boolean SelectGrade{get;set;}
    public Boolean SelectInstructional{get;set;}
    public Boolean SelectInstitutions{get;set;}
    
    public Boolean EmailFormat1{get;set;}
    public Boolean EmailFormat2{get;set;}
    
    public Boolean SelectFaith{get;set;}   
    public Boolean ChooseFaithBased{get;set;}
    public Boolean SelectOtherAccrediting{get;set;}
    
    public Boolean SelectEleot{get;set;}
    public Boolean SelectServe{get;set;} 
  
    public Boolean SelectAvailability{get;set;}
  
    public Boolean SelectTypesofteams{get;set;}
    public Boolean Selectqualifications{get;set;}
    public Boolean SelectBiographicalSketch{get;set;}
    
    public Boolean SelectRef1State{get;set;}
 public Boolean SelectRef1phone{get;set;}
 public Boolean SelectRef1Email{get;set;}
 public Boolean SelectRef1Country{get;set;}
 public Boolean SelectRef1Zip{get;set;}
 public Boolean SelectRef1Address{get;set;}
 public Boolean SelectRef1CompanyName{get;set;}
 public Boolean SelectRef1Name{get;set;}

 public Boolean SelectRef2State{get;set;}
 public Boolean SelectRef2phone{get;set;}
 public Boolean SelectRef2Email{get;set;}
 public Boolean SelectRef2Country{get;set;}
 public Boolean SelectRef2Zip{get;set;}
 public Boolean SelectRef2Address{get;set;}
 public Boolean SelectRef2CompanyName{get;set;}
 public Boolean SelectRef2Name{get;set;}
 
public Boolean SelectReference{get;set;}
    public String ErrorMessage1{get;set;} 
   public String ErrorMessage2{get;set;} 
    public String ErrorMessage{get;set;} 
   
   
   

   
   
   

    public  Volunteer__c Volunteer{get;set;}
    public String volunteerId{get;set;}
    
    public List<SelectOption> CountriesOptions {get;set;}
    public List<SelectOption> StateOptions {get;set;}
    public List<SelectOption> SalutationOptions{get;set;}
    public List<SelectOption> ServeOptions{get;set;}
    public List<SelectOption> EmpStatusOptions{get;set;}
    public List<SelectOption> FaithBasedInstituteOptions{get;set;}
    public List<SelectOption> FaithChooseOptions{get;set;}
    public List<SelectOption> OtherAccreditingOptions{get;set;}
    public List<SelectOption> AvailabilityOptions{get;set;}
    public List<SelectOption> EleotOptions{get;set;}
    public List<SelectOption> HavePassportOptions{get;set;}
    
       public List<SelectOption> LanguageOptionsAll{get;set;}
       public List<SelectOption> LanguageOptions{get;set;}
       
        public List<SelectOption> SubjectSpecialitiesOptions{get;set;}
         public List<SelectOption> AreaSpecialitiesOptions{get;set;}
    public List<SelectOption> GradeSpecialitiesOptions{get;set;}
    public List<SelectOption> InstructionalSpecialitiesOptions{get;set;}
    public List<SelectOption> InstitutionsSpecialitiesOptions{get;set;}    
    public List<SelectOption> AccreditationOptions{get;set;}
    public List<SelectOption> RolesOptions{get;set;}
    public List<SelectOption> TeamOptions{get;set;}
    public List<SelectOption> RegionsOptions{get;set;}
    public List<SelectOption> LiketoserveOptions{get;set;}
    public List<SelectOption> TypesofteamsOptions{get;set;}
    
         public List<SelectOption> SubjectSpecialitiesOptionsAll{get;set;}
         public List<SelectOption> AreaSpecialitiesOptionsAll{get;set;}
    public List<SelectOption> GradeSpecialitiesOptionsAll{get;set;}
    public List<SelectOption> InstructionalSpecialitiesOptionsAll{get;set;}
    public List<SelectOption> InstitutionsSpecialitiesOptionsAll{get;set;}    
    public List<SelectOption> AccreditationOptionsAll{get;set;}
    public List<SelectOption> RolesOptionsAll{get;set;}
    public List<SelectOption> TeamOptionsAll{get;set;}
    public List<SelectOption> RegionsOptionsAll{get;set;}
    public List<SelectOption> LiketoserveOptionsAll{get;set;}
    public List<SelectOption> TypesofteamsOptionsAll{get;set;}
    
    
     public List<SelectOption> SubjectSpecialitiesOptionsSelected{get;set;}
     public List<SelectOption> LanguageOptionsSelected{get;set;}
    
     
         public List<SelectOption> AreaSpecialitiesOptionsSelected{get;set;}
    public List<SelectOption> GradeSpecialitiesOptionsSelected{get;set;}
    public List<SelectOption> InstructionalSpecialitiesOptionsSelected{get;set;}
    public List<SelectOption> InstitutionsSpecialitiesOptionsSelected{get;set;}    
    public List<SelectOption> AccreditationOptionsSelected{get;set;}
    public List<SelectOption> RolesOptionsSelected{get;set;}
    public List<SelectOption> TeamOptionsSelected{get;set;}
    public List<SelectOption> RegionsOptionsSelected{get;set;}
    public List<SelectOption> LiketoserveOptionsSelected{get;set;}
    public List<SelectOption> TypesofteamsOptionsSelected{get;set;}
    
    
    
     public Set<string> rightvalues {get; set;}
     Public List<string> leftselected{get;set;}
     public Set<string> leftvalues {get; set;}
    Public List<string> rightselected{get;set;}
    
    
    
    
    public String selCountry{get;set;}
    public String selState{get;set;}
    public String selLanguage{get;set;}
    public String selSalutate{get;set;}
    public String selServe{get;set;}
    public String selEmpStatus{get;set;}
    public String selFaithBasedInstitute{get;set;}
    public String selFaithChoose{get;set;}
    public String selOtherAccrediting{get;set;}
    public String selAvailability{get;set;}
    public String selEleot{get;set;}
    public Boolean Status=false;
    
    public Volunteer__c VolunteerStandard=new Volunteer__c();
    
    
    
    
    
    
    public VolunteerExtension(ApexPages.StandardController stdController) {
         VolunteerStandard = (Volunteer__c)stdController.getRecord();  
      
       system.debug('-----VolunteerStandard----'+VolunteerStandard.Country1__c);
    
    LanguageOptionsselected=new List<SelectOption>();
    SubjectSpecialitiesOptionsSelected=new List<SelectOption>();
    AreaSpecialitiesOptionsselected=new List<SelectOption>();
    GradeSpecialitiesOptionsSelected=new List<SelectOption>();
    InstructionalSpecialitiesOptionsSelected=new List<SelectOption>();
    InstitutionsSpecialitiesOptionsSelected=new List<SelectOption>();
    AccreditationOptionsSelected=new List<SelectOption>();
    RolesOptionsSelected=new List<SelectOption>();
    TeamOptionsSelected=new List<SelectOption>();
    RegionsOptionsSelected=new List<SelectOption>();
    LiketoserveOptionsSelected=new List<SelectOption>();
    TypesofteamsOptionsSelected=new List<SelectOption>();
    
    
    LanguagesSelected=new set<String>();
    SubjectSpecialitSelected=new set<String>();
    AreaSpecialitSelected=new set<String>();
    GradeSpecialitSelected=new set<String>();
     InstructionalSpecSelected=new set<String>();
      InstitutionTypeSelected=new set<String>();
     AccrediationOptionSelected=new set<String>();
     RoleTypeSelected=new set<String>();
     TeamTypeSelected=new set<String>();
     RegionSelected=new set<String>();
     LiketoServeOptSelected=new set<String>();
     TypesOfTeamOptSelected=new set<String>();
    
    
    
    
    Volunteer =new Volunteer__c() ;
     rightvalues = new set<string>();
     leftselected = new List<String>();
     rightselected = new List<String>();
     leftvalues = new Set<string>();
     leftselected = new List<String>();
     rightselected = new List<String>();
    
    CountriesOptions = new List<SelectOption>();
    StateOptions = new list<SelectOption>();
    SalutationOptions = new list<SelectOption>();
        ServeOptions=new list<SelectOption>(); 
        EmpStatusOptions=new list<SelectOption>();
        FaithBasedInstituteOptions=new list<SelectOption>();
        FaithChooseOptions=new list<SelectOption>();
        OtherAccreditingOptions=new list<SelectOption>();
        AvailabilityOptions=new list<SelectOption>();
          EleotOptions=new list<SelectOption>();
     HavePassportOptions=new List<SelectOption>();
      
      
       LanguageOptions=new list<SelectOption>() ;
      LanguageOptionsALL=new list<SelectOption>(); 
        AreaSpecialitiesOptionsALL=new list<SelectOption>();
        GradeSpecialitiesOptionsALL=new list<SelectOption>();
        InstructionalSpecialitiesOptionsALL=new list<SelectOption>();
        InstitutionsSpecialitiesOptionsALL=new list<SelectOption>();
      SubjectSpecialitiesOptionsALL=new list<SelectOption>();
       
      
       //SubjectSpecialitiesOptionsSelected = new List<SelectOption>();
      
        
        
        
        AccreditationOptionsALL=new list<SelectOption>();
        RolesOptionsALL=new list<SelectOption>();
        TeamOptionsALL=new list<SelectOption>();
        RegionsOptionsALL=new list<SelectOption>();
        LiketoserveOptionsALL=new list<SelectOption>();
        TypesofteamsOptionsALL=new list<SelectOption>();
        
        
        
        
        
        
      
      
    
    
      
      
      Schema.DescribeFieldResult EmpStatus = volunteer__c.Employment_status__c.getDescribe();
    List<Schema.PicklistEntry> EmpStatusValues = EmpStatus.getPicklistValues();
     EmpStatusOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : EmpStatusValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        EmpStatusOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
      
      
     
     
      
      
        Schema.DescribeFieldResult FaithBasedInstitute = volunteer__c.Faith_based_institution__c.getDescribe();
    List<Schema.PicklistEntry> FaithBasedInstituteValues = FaithBasedInstitute.getPicklistValues();
     FaithBasedInstituteOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : FaithBasedInstituteValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        FaithBasedInstituteOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      Schema.DescribeFieldResult FaithChoose = volunteer__c.Faith_choose__c.getDescribe();
    List<Schema.PicklistEntry> FaithChooseValues = FaithChoose.getPicklistValues();
   FaithChooseOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : FaithChooseValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        FaithChooseOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
       Schema.DescribeFieldResult OtherAccrediting = volunteer__c.Experence_AdvancED__c.getDescribe();
    List<Schema.PicklistEntry> OtherAccreditingValues = OtherAccrediting.getPicklistValues();
     OtherAccreditingOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : OtherAccreditingValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        OtherAccreditingOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
       Schema.DescribeFieldResult Availability  = volunteer__c.Availability__c.getDescribe();
    List<Schema.PicklistEntry> AvailabilityValues = Availability.getPicklistValues();
     AvailabilityOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : AvailabilityValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        AvailabilityOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
       Schema.DescribeFieldResult Eleot  = volunteer__c.I_am_eleot_2_0_certified__c.getDescribe();
    List<Schema.PicklistEntry> EleotValues = Eleot.getPicklistValues();
    EleotOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : EleotValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        EleotOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
      
      Schema.DescribeFieldResult Serve = volunteer__c.where_would_you_like_to_serve__c.getDescribe();
    List<Schema.PicklistEntry> ServeValues = Serve.getPicklistValues();
      ServeOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : ServeValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        ServeOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
      
      
      
      
      
      
      
      
      Schema.DescribeFieldResult States = volunteer__c.State_Province2__c.getDescribe();
    List<Schema.PicklistEntry> StateValues = States.getPicklistValues();
      StateOptions.add(new SelectOption('None','--Select--'));
    for( Schema.PicklistEntry v : StateValues) {
     System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
      StateOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      Schema.DescribeFieldResult Salutate = volunteer__c.Salutation__c.getDescribe();
    List<Schema.PicklistEntry> SalutateValues = Salutate.getPicklistValues();
      SalutationOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : SalutateValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        SalutationOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      Schema.DescribeFieldResult HavePassport = volunteer__c.Do_you_have_a_valid_passport__c.getDescribe();
    List<Schema.PicklistEntry> HavePassportValues = HavePassport.getPicklistValues();
     HavePassportOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : HavePassportValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
      HavePassportOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
         
      
      
      
    
       
       string id = ApexPages.CurrentPage().getparameters().get('id');
       volunteerId=id;
       system.debug('---------------------'+id);
      if(id !=null){
       Volunteer = [select Name,Emergency_Name__c,Name_of_your_School_or_Organization__c, Passport_Number__c, Middle_Initial__c, Institutions_Other__c, Instructional_Other__c, Grade_Level_Other__c, Area_Specialties_other__c, Subject_Specialties_Other__c, Accreditation_other__c, Ref2_Country__c, Ref2_State_Province__c, Ref2_City_Town__c, Ref2_Address2__c, Ref2_Address__c, Ref2_company__c, Ref2_Name__c, Ref1_Country__c, Ref1_State_Province__c, Ref1_City_Town__c, Ref1_Address2__c, Ref1_Address__c, Ref1_company__c, Ref1_Name__c, Your_School_or_organization_located_in__c, Emergency_Relationship__c, Years_of_experience_in_education__c, your_Job_Title__c, Country_of_Issunace__c, Street_Address__c, City__c, Zip_Postal_Code__c, Ref2_Zip_Postal_Code__c, Ref1_Zip_Postal_Code__c, Retired__c, Other_Languages__c, Emergency_Address__c, Qualification__c, Biographical_sketch__c, Expiration_Date__c, Ref1_Email_Address__c, Ref2_Email_Address__c, list_of_countries_you_have_worked__c, List_all_Countries_visited_in_12_months__c, User_Id__c, Ref1_Phone_Number__c, Ref2_Phone_Number__c, Emergency_Telephone__c, State_Province2__c, Country1__c, Availability__c, Employment_Status__c, Experence_AdvancED__c, I_am_eleot_2_0_certified__c, Faith_choose__c, Status__c, where_would_you_like_to_serve__c, Faith_based_institution__c, Accreditation_affiliation_and_experience__c, Area_Specialties__c, Engagement_Review_Team_Experience__c, Grade_level_Speciality__c, I_would_like_to_serve_as__c, In_what_roles_have_you_served_AdvancED__c, Types_of_Institutions_where_you_have_wor__c, Instructional_Experience__c, Languages__c, Regions_where_you_have_already_served__c, Specialties__c, Subject_Content_Specialties__c, Types_of_teams_you_interested_in_serving__c, First_Name__c, MobilePhone__c, Email__c, Salutation__c FROM volunteer__c where id =:id];
        
        SelectLanguage=false;
        SelectSalutation=false;
        SelectedFirstName=false;
        SelectedLastName=false;
        SelectedCountry=false;
        SelectedCity=false;
        SelectedPhone=false;
        
         Selectsubject=false;
    SelectArea=false;
    SelectGrade=false;
    SelectInstructional=false;
    SelectInstitutions=false;
   SelectServe=false;
   SelectedServe=false;   
    SelectTypesofteams=false;
    ChooseFaithBased=false;
   SelectFaith=false;
 
 SelectOtherAccrediting=false;
  SelectEleot=false;
 SelectAvailability=false;
 SelectedListOfCountries=false; 
    SelectedEmpStatus=false;
   SelectedYearsOfExperience=false;  
   Selectqualifications=false;
   SelectBiographicalSketch=false;
   
SelectRef1State=false;
SelectRef1phone=false;
SelectRef1Email=false;
SelectRef1Country=false;
SelectRef1Zip=false;
SelectRef1Address=false;
SelectRef1CompanyName=false;
SelectRef1Name=false;

SelectRef2State=false;
SelectRef2phone=false;
SelectRef2Email=false;
SelectRef2Country=false;
SelectRef2Zip=false;
SelectRef2Address=false;
SelectRef2CompanyName=false;
SelectRef2Name=false;

SelectReference=false;
        
        
        
        
       if(Volunteer.Status__c !=null){
       StatusOfVolunteer=Volunteer.Status__c;
       }     
       
       if(Volunteer.Expiration_Date__c!=null){
       ExpirationDate=Volunteer.Expiration_Date__c.format();
       }

       if(Volunteer.Status__c == 'New'){
      Status=true;
       }
       
       
       if(Volunteer.Email__c!=null){
       email=Volunteer.Email__c;
       }
       if(Volunteer.Name !=null){
       LastName=Volunteer.Name;
       }
       if(Volunteer.Emergency_Name__c!=null){
       EmergencyName=Volunteer.Emergency_Name__c;
       }
       if(Volunteer.Name_of_your_School_or_Organization__c!=null){
       NameOfUrSchoolOrOrganization=Volunteer.Name_of_your_School_or_Organization__c;
       }
       if(Volunteer.Passport_Number__c!=null){
       PassportNumber=Volunteer.Passport_Number__c;
       }
       if(Volunteer.Middle_Initial__c!=null){
       MiddleInitial=Volunteer.Middle_Initial__c;
       }
       if(Volunteer.Institutions_Other__c!=null){
       InstitutionsOther=Volunteer.Institutions_Other__c;
       }
       if(Volunteer.Instructional_Other__c!=null){
       InstructionalOther=Volunteer.Instructional_Other__c;
       }
       if(Volunteer.Grade_Level_Other__c!=null){
       GradeLevelOther=Volunteer.Grade_Level_Other__c;
       }
       if(Volunteer.Area_Specialties_other__c!=null){
       AreaSpecialitiesOther=Volunteer.Area_Specialties_other__c;
       }
       if(Volunteer.Subject_Specialties_Other__c!=null){
       SubjectSpecialitiesOther=Volunteer.Subject_Specialties_Other__c;
       }
       if(Volunteer.Accreditation_other__c!=null){
       AccreditationOther=Volunteer.Accreditation_other__c;
       }
       if(Volunteer.Ref2_Country__c!=null){
       Ref2Country=Volunteer.Ref2_Country__c;
       }
       if(Volunteer.Ref2_State_Province__c!=null){
       Ref2StateProvince=Volunteer.Ref2_State_Province__c;
       }
       if(Volunteer.Ref2_City_Town__c!=null){
        Ref2CityTown=Volunteer.Ref2_City_Town__c;
       }
       if(Volunteer.Ref2_Address2__c!=null){
       Ref2Address2=Volunteer.Ref2_Address2__c;
       }
       if(Volunteer.Ref2_Address__c!=null){
       Ref2Address=Volunteer.Ref2_Address__c;
       }
       if(Volunteer.Ref2_company__c!=null){
       Ref2Company=Volunteer.Ref2_company__c;
       }
       if(Volunteer.Ref2_Name__c!=null){
       Ref2Name=Volunteer.Ref2_Name__c;
       }
       if(Volunteer.Ref1_Country__c!=null){
       Ref1Country=Volunteer.Ref1_Country__c;
       }
       if(Volunteer.Ref1_State_Province__c!=null){
       Ref1StateProvince=Volunteer.Ref1_State_Province__c;
       }
       if(Volunteer.Ref1_Address2__c!=null){
       Ref1Address2=Volunteer.Ref1_Address2__c;
       }
       if(Volunteer.Ref1_Address__c!=null){
       Ref1Address=Volunteer.Ref1_Address__c;
       }
       if(Volunteer.Ref1_company__c!=null){
       Ref1Company=Volunteer.Ref1_company__c;
       }
       if(Volunteer.Ref1_Name__c!=null){
       Ref1Name=Volunteer.Ref1_Name__c;
       }
       if(Volunteer.Your_School_or_organization_located_in__c!=null){
       YourSchoolOrOrganizationLocated=Volunteer.Your_School_or_organization_located_in__c;
       }
       if(Volunteer.Emergency_Relationship__c!=null){
       EmergencyRelationship=Volunteer.Emergency_Relationship__c;
       }
       if(Volunteer.Years_of_experience_in_education__c!=null){
       YearsOfExperienceInEducation=Volunteer.Years_of_experience_in_education__c;
       }
       if(Volunteer.your_Job_Title__c!=null){
       YourJobTitle=Volunteer.your_Job_Title__c;
       }
       if(Volunteer.Country_of_Issunace__c!=null){
       CountryOfIssuance=Volunteer.Country_of_Issunace__c;
       }
       if(Volunteer.Street_Address__c!=null){
       StreetAddress=Volunteer.Street_Address__c;
       }
       if(Volunteer.City__c!=null){
       City=Volunteer.City__c;
       }
       if(Volunteer.Zip_Postal_Code__c!=null){
       ZipPostalCode=Volunteer.Zip_Postal_Code__c;
       }
       if(Volunteer.Ref2_Zip_Postal_Code__c!=null){
       Ref2ZipPostalCode=Volunteer.Ref2_Zip_Postal_Code__c;
       }
       if(Volunteer.Ref1_Zip_Postal_Code__c!=null){
       Ref1ZipPostalCode=Volunteer.Ref1_Zip_Postal_Code__c;
       }
       if(Volunteer.Retired__c!=null){
       Retired=Volunteer.Retired__c;
       }
       if(Volunteer.Other_Languages__c!=null){
       OtherLanguages=Volunteer.Other_Languages__c;
       }
       if(Volunteer.Emergency_Address__c!=null){
       EmergencyAddress=Volunteer.Emergency_Address__c;
       }
       if(Volunteer.Qualification__c!=null){
       Qualification=Volunteer.Qualification__c;
       }
       if(Volunteer.Biographical_sketch__c!=null){
       BiographicalSketch=Volunteer.Biographical_sketch__c;
       }
       if(Volunteer.Ref1_Email_Address__c!=null){
       Ref1EmailAddress=Volunteer.Ref1_Email_Address__c;
       }
       if(Volunteer.Ref2_Email_Address__c!=null){
       Ref2EmailAddress=Volunteer.Ref2_Email_Address__c;
       }
       if(Volunteer.list_of_countries_you_have_worked__c!=null){
       ListOfCountriesyouHaveWorked=Volunteer.list_of_countries_you_have_worked__c;
       }
       if(Volunteer.List_all_Countries_visited_in_12_months__c!=null){
       ListAllCountriesYouHaveVisitedWithinThe12Months=Volunteer.List_all_Countries_visited_in_12_months__c;
       }
       if(Volunteer.Ref1_Phone_Number__c!=null){
       Ref1PhoneNumber=Volunteer.Ref1_Phone_Number__c;
       }
       if(Volunteer.Ref2_Phone_Number__c!=null){
       Ref2PhoneNumber=Volunteer.Ref2_Phone_Number__c;
       }
       if(Volunteer.Emergency_Telephone__c!=null){
       EmergencyTelephone=Volunteer.Emergency_Telephone__c;
       }
       
       
       if(Volunteer.Salutation__c!=null){
       selSalutate=Volunteer.Salutation__c;
       }
       
       
       if(Volunteer.where_would_you_like_to_serve__c!=null){
       selServe=Volunteer.where_would_you_like_to_serve__c;
       }
       if(Volunteer.Employment_status__c!=null){
       selEmpStatus=Volunteer.Employment_status__c;
       }
       if(Volunteer.Faith_based_institution__c!=null){
       selFaithBasedInstitute=Volunteer.Faith_based_institution__c;
       }
       if(Volunteer.Faith_choose__c!=null){
       selFaithChoose=Volunteer.Faith_choose__c;
       }
       if(Volunteer.MobilePhone__c!=null){
       Phone=Volunteer.MobilePhone__c;
       }
      if(Volunteer.Experence_AdvancED__c!=null){
      selOtherAccrediting=Volunteer.Experence_AdvancED__c;
      }
       if(Volunteer.I_am_eleot_2_0_certified__c!=null){
       selEleot=Volunteer.I_am_eleot_2_0_certified__c;
       }
       if(Volunteer.Availability__c!=null){
       selAvailability=Volunteer.Availability__c;
       }
       if(Volunteer.First_Name__c!=null){
       FirstName=Volunteer.First_Name__c;
       
       }
        system.debug('------LanguagesSelected----');
       
       if(Volunteer.Languages__c!=null){  
       for(String s:Volunteer.Languages__c.split(';')){
       LanguageOptionsselected.add(new SelectOption(s,s));
       LanguagesSelected.add(s);
       
       system.debug('------LanguagesSelected----'+LanguagesSelected);
       
       }  
       }
       
       
       if(Volunteer.Subject_Content_Specialties__c!=null){ 
       for(String s:Volunteer.Subject_Content_Specialties__c.split(';')){
       SubjectSpecialitiesOptionsselected.add(new SelectOption(s,s)); 
       SubjectSpecialitSelected.add(s);    
       }  
       }
       
       
       if(Volunteer.Area_Specialties__c!=null){
      for(String s:Volunteer.Area_Specialties__c.split(';')){
       AreaSpecialitiesOptionsselected.add(new SelectOption(s,s));  
       AreaSpecialitSelected.add(s);
       } 
       }
       
       
       if(Volunteer.Grade_level_Speciality__c!=null){
      for(String s:Volunteer.Grade_level_Speciality__c.split(';')){
       GradeSpecialitiesOptionsselected.add(new SelectOption(s,s)); 
       GradeSpecialitSelected.add(s);      
       } 
       }
       
       
       if(Volunteer.Instructional_Experience__c!=null){
      for(String s:Volunteer.Instructional_Experience__c.split(';')){
       InstructionalSpecialitiesOptionsselected.add(new SelectOption(s,s));  
       InstructionalSpecSelected.add(s);
       } 
       }
       
       
       if(Volunteer.Types_of_Institutions_where_you_have_wor__c!=null){
        for(String s:Volunteer.Types_of_Institutions_where_you_have_wor__c.split(';')){
       InstitutionsSpecialitiesOptionsselected.add(new SelectOption(s,s)); 
       InstitutionTypeSelected.add(s);     
       } 
       }
       
       
       if(Volunteer.Accreditation_affiliation_and_experience__c!=null){
       for(String s:Volunteer.Accreditation_affiliation_and_experience__c.split(';')){
       AccreditationOptionsselected.add(new SelectOption(s,s));  
       AccrediationOptionSelected.add(s);
       } 
       }
       
       
       if(Volunteer.In_what_roles_have_you_served_AdvancED__c!=null){
         for(String s:Volunteer.In_what_roles_have_you_served_AdvancED__c.split(';')){
       RolesOptionsselected.add(new SelectOption(s,s));  
       RoleTypeSelected.add(s);
       } 
       }
       
       
       if(Volunteer.Engagement_Review_Team_Experience__c!=null){
        for(String s:Volunteer.Engagement_Review_Team_Experience__c.split(';')){
       TeamOptionsselected.add(new SelectOption(s,s));  
       TeamTypeSelected.add(s);
       } 
       }
       
       
       
       if(Volunteer.Regions_where_you_have_already_served__c!=null){
      for(String s:Volunteer.Regions_where_you_have_already_served__c.split(';')){
       RegionsOptionsselected.add(new SelectOption(s,s));  
       RegionSelected.add(s);
       } 
       }
       
       
       if(Volunteer.I_would_like_to_serve_as__c!=null){
         for(String s:Volunteer.I_would_like_to_serve_as__c.split(';')){
       LiketoserveOptionsselected.add(new SelectOption(s,s));  
       LiketoServeOptSelected.add(s);
       } 
       }
       if(Volunteer.Types_of_teams_you_interested_in_serving__c!=null){
        for(String s:Volunteer.Types_of_teams_you_interested_in_serving__c.split(';')){
       TypesofteamsOptionsselected.add(new SelectOption(s,s));  
       TypesOfTeamOptSelected.add(s);
       } 
       }
       
 
       
       }else{
        Volunteer = null;
       }
       
    
    }
    
    
     public PageReference initCheck()
    { 
    
     string id = ApexPages.CurrentPage().getparameters().get('id');
     if(id !=null){
       Volunteer__c vol=new Volunteer__c();
       vol=[select id,Name,Status__c,ExpirationLink__c,ExpirationDateTimeForNew__c from Volunteer__c where id=:id];
       
        if(vol.ExpirationDateTimeForNew__c!=null){
        
      DateTime ExpirationDate= vol.ExpirationDateTimeForNew__c.addHours(24);
    
        if(vol.Status__c == 'Needs Approval' || ExpirationDate<system.now())
       
        {
            PageReference pageRef = new PageReference('/apex/expire');
            pageRef.setRedirect(true);
            return pageRef;
        
        }
        
        }else{
          if(vol.Status__c == 'Needs Approval')
        {
            PageReference pageRef = new PageReference('/apex/expire');
            pageRef.setRedirect(true);
            return pageRef;
        }
        
        }
        }
        
        return null;
    }
    
    
    
    
    
     public void selectclick() {
     
     system.debug('------Clicks on add-----');
     
        rightselected.clear();
        
        for(String s : leftselected){
            leftvalues.remove(s);
            rightvalues.add(s);
        }
        
        system.debug('----rightvalues----'+rightvalues);
        
       
    }
    
    public PageReference unselectclick() {
        
        leftselected.clear();
        
        for(String s : rightselected) {
            
            rightvalues.remove(s);
            leftvalues.add(s);
        }
        
        
        return null;
    }

     public PageReference savecontact() {
       try {
       //UpdateVolunteer.ResendLink__c=false;
       VolunteerUpdateDetails('Save');
        Update(UpdateVolunteer);
       }
       catch(System.DMLException e) {
           ApexPages.addMessages(e);
           return null;
       }
       PageReference p = Page.updatesavemessage;
       p.setRedirect(true);
       return p;  
       
     }
     
     public void makeAllFalseforRerender(){
     
    SelectLanguage=false;
    SelectSalutation=false;
    SelectedFirstName=false;
    SelectedLastName=false;
    SelectedCountry=false;
    SelectedCity=false;
    SelectedPhone=false;
        
    Selectsubject=false;
    SelectArea=false;
    SelectGrade=false;
    SelectInstructional=false;
    SelectInstitutions=false;


   SelectedServe=false; 
    SelectServe=false;
    SelectTypesofteams=false;

    SelectFaith=false;
    SelectedEmpStatus=false;
    SelectedListOfCountries=false; 
    SelectedYearsOfExperience=false; 

    SelectOtherAccrediting=false;
    SelectEleot=false;
    SelectAvailability=false;
     
    Selectqualifications=false;
    SelectBiographicalSketch=false;

    SelectRef1State=false;
    SelectRef1phone=false;
    SelectRef1Email=false;
    SelectRef1Country=false;
    SelectRef1Zip=false;
    SelectRef1Address=false;
    SelectRef1CompanyName=false;
    SelectRef1Name=false;
    
    ChooseFaithBased=false;
    SelectRef2State=false;
    SelectRef2phone=false;
    SelectRef2Email=false;
    SelectRef2Country=false;
    SelectRef2Zip=false;
    SelectRef2Address=false;
    SelectRef2CompanyName=false;
    SelectRef2Name=false;
    SelectReference=false;
     
     
     }
     
      public PageReference submitVolunteer() {
      boolean once1=true;
      boolean once2=true;
      makeAllFalseforRerender();
      if(Ref1EmailAddress !=''){
       EmailFormat1=validateEmail(Ref1EmailAddress);
       system.debug('------EmailFormat----'+EmailFormat1);
       }
        if(Ref2EmailAddress !=''){
       EmailFormat2=validateEmail(Ref1EmailAddress);
       system.debug('------EmailFormat----'+EmailFormat2);
       }

if(selFaithBasedInstitute =='YES' && selFaithChoose == 'None'){     
        ChooseFaithBased=true;       
      }

      if(selServe=='None' || selEmpStatus=='None' || ListOfCountriesyouHaveWorked=='' || VolunteerStandard.Country1__c==null || YearsOfExperienceInEducation=='' || LanguageOptionsselected.isEmpty() || Ref2Name == '' || Ref2Company== '' || Ref2EmailAddress == '' || Ref2Country == '' || Ref2PhoneNumber == '' || Ref1Name == '' || Ref1Company == '' || Ref1EmailAddress == '' || Ref1Country == '' || Ref1PhoneNumber == '' ||  BiographicalSketch=='' || Qualification=='' || selAvailability=='None' || selEleot=='None' || selOtherAccrediting=='None' || selFaithBasedInstitute=='None' || selSalutate=='None' || FirstName==null || LastName==null || selCountry=='None' || City==null || SelectedPhone==null || AreaSpecialitiesOptionsselected.isEmpty() || SubjectSpecialitiesOptionsselected.isEmpty() || GradeSpecialitiesOptionsselected.isEmpty() || InstructionalSpecialitiesOptionsselected.isEmpty() || InstitutionsSpecialitiesOptionsselected.isEmpty() || LiketoserveOptionsselected.isEmpty() || TypesofteamsOptionsselected.isEmpty()){ 
     
     ErrorMessage='';
     ErrorMessage1='';
     ErrorMessage2='';   
     
     if(selEmpStatus=='None'){
     SelectedEmpStatus=true;
     }
     
     if(LanguageOptionsselected.isEmpty()){
     SelectLanguage=true;
     }
     
    if(ListOfCountriesyouHaveWorked==''){
     SelectedListOfCountries=true;
     }
      
           
        if(selServe == 'None'){            
            SelectedServe=true;    
        }
     
     
     
     if(YearsOfExperienceInEducation==null || YearsOfExperienceInEducation==''){
     SelectedYearsOfExperience=true;
     }
     
     
     system.debug('-----Ref2Name----'+Ref2Name);
     
     if(Ref2Name==''){
     if(once2){
     ErrorMessage2='Name';
     once2=false;
     }else{
     ErrorMessage2 +=','+ 'Name';
     }
     }
     
     
     
     
     if(Ref2Company == ''){
     if(once2){
     ErrorMessage2='Company';
     once2=false;
     }else{
     ErrorMessage2 +=','+ 'Company';
     }
     }
     
     
     
     if(Ref2Country == ''){
     if(once2){
     ErrorMessage2='Country';
     once2=false;
     }else{
     ErrorMessage2 +=','+ 'Country';
     }
     }
     if(Ref2EmailAddress==''){
      if(once2){
     ErrorMessage2='Email';
     once2=false;
     }else{
     ErrorMessage2 +=','+ 'Email';
     }
     }
     if(Ref2PhoneNumber == ''){
     if(once2){
     ErrorMessage2='PhoneNumber';
     once2=false;
     }else{
     ErrorMessage2 +=','+ 'PhoneNumber';
     }
     }
     
     
     if(Ref1Name == ''){
     if(once1){
     ErrorMessage1='Name';
     once1=false;
     }else{
     ErrorMessage1 +=','+ 'Name';
     }
     }
     if(Ref1Company == ''){
     if(once1){
     ErrorMessage1='Company';
     once1=false;
     }else{
     ErrorMessage1 +=','+ 'Company';
     }
     }
     
     
     
     
     if(Ref1Country==''){
     if(once1){
     ErrorMessage1='Country';
     once1=false;
     }else{
     ErrorMessage1 +=','+ 'Country';
     }
     }
     if(Ref1EmailAddress == ''){
    if(once1){
     ErrorMessage1='Email';
     once1=false;
     }else{
     ErrorMessage1 +=','+ 'Email';
     }
     }
     
     if(Ref1PhoneNumber == ''){
    if(once1){
     ErrorMessage1='PhoneNumber';
     once1=false;
     }else{
     ErrorMessage1 +=','+ 'PhoneNumber';
     }
     }
     if(Qualification == ''){
     Selectqualifications=true;
     }
     if(BiographicalSketch == ''){
     SelectBiographicalSketch=true;
     }
     if(selSalutate==null || selSalutate=='None'){
     SelectSalutation=true;
     }
     if(selOtherAccrediting=='None'){
     SelectOtherAccrediting=true;
     }
     if(selAvailability=='None'){
     SelectAvailability=true;
     }
     if(selEleot =='None'){
     SelectEleot=true;
     }
     
     
     if(FirstName==null || FirstName==''){
     SelectedFirstName=true;
     }
     if(LastName==null || LastName==''){
     SelectedLastName=true;
     }
     if(VolunteerStandard.Country1__c==null){
     SelectedCountry=true;
     }
     if(City==null || City==''){
     SelectedCity=true;
     }
     if(phone == null || phone==''){
     SelectedPhone=true;
     }
     
     
     if(AreaSpecialitiesOptionsselected.isEmpty()){
     SelectArea=true;
     }
     if(SubjectSpecialitiesOptionsselected.isEmpty()){
     Selectsubject=true;
     }
     if(GradeSpecialitiesOptionsselected.isEmpty()){
     SelectGrade=true;
     }
     if(InstructionalSpecialitiesOptionsselected.isEmpty()){
     SelectInstructional=true;
     }
     if(InstitutionsSpecialitiesOptionsselected.isEmpty()){
     SelectInstitutions=true;
     }
          
    
    
     if(LiketoserveOptionsselected.isEmpty()){
     SelectServe=true;
     }
     if(TypesofteamsOptionsselected.isEmpty()){
     SelectTypesofteams=true;
     }
     if(selFaithBasedInstitute == 'None'){
     SelectFaith=true;
     }
     if(ErrorMessage1 !='' || ErrorMessage2 !=''){
     SelectReference=true;
     if(ErrorMessage1 !=''){
     ErrorMessage='Please fill the details of '+ErrorMessage1+' in Reference 1';
     }
     if(ErrorMessage1!='' && ErrorMessage2 !=''){
     ErrorMessage+=' and '+ErrorMessage2+' in Reference 2';
     }
     
     if(ErrorMessage1=='' && ErrorMessage2 !=''){
     ErrorMessage='Please fill the details of '+ErrorMessage2+' in Reference 2';
     }
    
     }
     system.debug('----SelectRef2Name----'+SelectRef2Name);
     return null;
     }
       try {
       VolunteerUpdateDetails('Submit');
        Update(UpdateVolunteer);
       }
       catch(System.DMLException e) {
           ApexPages.addMessages(e);
           return null;
       }
       PageReference p = Page.ThankYou;
       p.setRedirect(true);
       return p;  
       
     }
     
     
     public void VolunteerUpdateDetails(String SaveorSubmit){
     
     
     system.debug('------LanguageOptionsselected-----'+LanguageOptionsselected);
        system.debug('----entered into save Block-----');
       if(Ref1EmailAddress !=''){
       EmailFormat1=validateEmail(Ref1EmailAddress);
       system.debug('------EmailFormat----'+EmailFormat1);
       }
        if(Ref2EmailAddress !=''){
       EmailFormat2=validateEmail(Ref1EmailAddress);
       system.debug('------EmailFormat----'+EmailFormat2);
       }
       
     
       
       
       if(selOtherAccrediting!='None'){         
 UpdateVolunteer.Experence_AdvancED__c=selOtherAccrediting;        
       }
       
     
       
       
       
      
       
       UpdateVolunteer.id=volunteerId;
      // UpdateVolunteer.ResendLink__c=false;
       UpdateVolunteer.First_Name__c= FirstName;
       UpdateVolunteer.Middle_Initial__c=MiddleInitial;
       UpdateVolunteer.Name=Volunteer.Name;
       UpdateVolunteer.City__c=City;
       UpdateVolunteer.Street_Address__c=StreetAddress;
       UpdateVolunteer.Zip_Postal_Code__c=ZipPostalCode;
       UpdateVolunteer.Emergency_Name__c=EmergencyName;
       UpdateVolunteer.Emergency_Relationship__c=EmergencyRelationship;
       UpdateVolunteer.Emergency_Telephone__c=EmergencyTelephone;
       UpdateVolunteer.Emergency_Address__c=EmergencyAddress;
       UpdateVolunteer.Other_Languages__c=OtherLanguages;
       UpdateVolunteer.list_of_countries_you_have_worked__c=ListOfCountriesyouHaveWorked;
       UpdateVolunteer.Passport_Number__c=PassportNumber;
       UpdateVolunteer.Country_of_Issunace__c=CountryOfIssuance;
        if(!String.isEmpty(ExpirationDate)){
        
        Date ExpirationDateFormat = Date.parse(ExpirationDate);
       UpdateVolunteer.Expiration_Date__c=ExpirationDateFormat;
       }
       UpdateVolunteer.List_all_Countries_visited_in_12_months__c=ListAllCountriesYouHaveVisitedWithinThe12Months;
       UpdateVolunteer.Retired__c=Retired;
       UpdateVolunteer.Name_of_your_School_or_ORganization__c=NameOfUrSchoolOrOrganization;
       UpdateVolunteer.Your_School_or_organization_located_in__c=YourSchoolOrOrganizationLocated;
       UpdateVolunteer.your_Job_Title__c=YourJobTitle;
       UpdateVolunteer.Years_of_experience_in_education__c=YearsOfExperienceInEducation;
       UpdateVolunteer.Subject_Specialties_Other__c=SubjectSpecialitiesOther;
       UpdateVolunteer.Area_Specialties_other__c=AreaSpecialitiesOther;
       UpdateVolunteer.Grade_Level_Other__c=GradeLevelOther;
       UpdateVolunteer.Instructional_Other__c=InstructionalOther;
       UpdateVolunteer.Institutions_Other__c=InstitutionsOther;
       UpdateVolunteer.Accreditation_other__c=AccreditationOther;
       UpdateVolunteer.Biographical_sketch__c=BiographicalSketch;
       UpdateVolunteer.Ref1_Name__c=Ref1Name;
       UpdateVolunteer.Ref1_company__c=Ref1Company;
       UpdateVolunteer.Ref1_Address__c=Ref1Address;
       UpdateVolunteer.Ref1_Address2__c=Ref1Address2;
       UpdateVolunteer.Ref1_State_Province__c=Ref1StateProvince;
       UpdateVolunteer.Ref1_Zip_Postal_Code__c=Ref1ZipPostalCode;
       UpdateVolunteer.Ref1_Country__c=Ref1Country;
       UpdateVolunteer.Ref1_Email_Address__c=Ref1EmailAddress;
       UpdateVolunteer.Ref1_Phone_Number__c=Ref1PhoneNumber;
       UpdateVolunteer.Ref2_Name__c=Ref2Name;
       UpdateVolunteer.Ref2_company__c=Ref2Company;
       UpdateVolunteer.Ref2_Address__c=Ref2Address;
       UpdateVolunteer.Ref2_Address2__c=Ref2Address2;
       UpdateVolunteer.Ref2_City_Town__c=Ref2CityTown;
       UpdateVolunteer.Ref2_State_Province__c=Ref2StateProvince;
       UpdateVolunteer.Ref2_Zip_Postal_Code__c=Ref2ZipPostalCode;
       UpdateVolunteer.Ref2_Country__c=Ref2Country;
       UpdateVolunteer.Ref2_Email_Address__c=Ref2EmailAddress;
       UpdateVolunteer.Ref2_Phone_Number__c=Ref2PhoneNumber;
       if(selSalutate != 'None'){
       UpdateVolunteer.Salutation__c=selSalutate;
       }
       else{
       UpdateVolunteer.Salutation__c=null;
       }
       
        if(PassportNumber != 'None'){
       UpdateVolunteer.Do_you_have_a_valid_passport__c=PassportNumber;
       }
       else{
        UpdateVolunteer.Do_you_have_a_valid_passport__c=null;
       }
       
       UpdateVolunteer.Country1__c=VolunteerStandard.Country1__c;
       
       
       if(selServe != 'None'){
       UpdateVolunteer.where_would_you_like_to_serve__c=selServe;
       }
       else{
         UpdateVolunteer.where_would_you_like_to_serve__c=null;
       }
       if(selEmpStatus !='None'){
       UpdateVolunteer.Employment_status__c=selEmpStatus;
       }
       else{
        UpdateVolunteer.Employment_status__c=null;
        }
       if(selFaithBasedInstitute != 'None'){
       UpdateVolunteer.Faith_based_institution__c=selFaithBasedInstitute;
       }
       else{
        UpdateVolunteer.Faith_based_institution__c=null;
       }
       if(selFaithChoose !='None'){
       UpdateVolunteer.Faith_choose__c=selFaithChoose;
       }
       else{
       UpdateVolunteer.Faith_choose__c=null;
       }
       if(selOtherAccrediting !='None'){
       UpdateVolunteer.Experence_AdvancED__c=selOtherAccrediting;
       }
       else{
         UpdateVolunteer.Experence_AdvancED__c=null;
       }
       if(selEleot != 'None'){
       UpdateVolunteer.I_am_eleot_2_0_certified__c=selEleot;
       }
       else{
        UpdateVolunteer.I_am_eleot_2_0_certified__c=null;
       }
       
        UpdateVolunteer.State_Province2__c=VolunteerStandard.State_Province2__c;
       
       
       if(selAvailability != 'None'){
       UpdateVolunteer.Availability__c=selAvailability;
       }
       else{
       UpdateVolunteer.Availability__c=null;
       }
       UpdateVolunteer.MobilePhone__c=phone;
       UpdateVolunteer.Qualification__c=Qualification;
       
       if(LanguageOptionsSelected!=null){
       List<String> Language=new List<String>();
       
       for( SelectOption LanguageSelected: LanguageOptionsSelected)
           {
           system.debug('--------lang-------'+LanguageSelected.getValue());
           
           String lang=LanguageSelected.getValue();
           Language.add(lang);
           
          }
          
          Languages=String.join(Language, ';');
          
          system.debug('------Languages-----'+Languages);
          
        UpdateVolunteer.Languages__c=Languages;
       
       }
       
       
       if(SubjectSpecialitiesOptionsSelected!=null){
       List<String> SubjectSpeciality=new List<String>();
      
       for( SelectOption SubjectSpecialities: SubjectSpecialitiesOptionsSelected)
           {
           
           SubjectSpeciality.add(SubjectSpecialities.getValue());
           
          }
          
          SubjectSpecialit=String.join(SubjectSpeciality, ';');
  
        UpdateVolunteer.Subject_Content_Specialties__c=SubjectSpecialit;
       
       }
       
       if(AreaSpecialitiesOptionsselected!=null){
       List<String> AreaSpeciality=new List<String>();
       
       for( SelectOption SubjectSpecialities: AreaSpecialitiesOptionsselected)
           {
           
           AreaSpeciality.add(SubjectSpecialities.getValue());
           
          }
          
          AreaSpecialit=String.join(AreaSpeciality, ';');
  
        UpdateVolunteer.Area_Specialties__c=AreaSpecialit;
       
       }
       
       if(GradeSpecialitiesOptionsSelected!=null){
       List<String> GradeSpeciality=new List<String>();
       
       for( SelectOption GradeSpecialities: GradeSpecialitiesOptionsSelected)
           {
           
           GradeSpeciality.add(GradeSpecialities.getValue());
           
          }
          
          GradeSpecialit=String.join(GradeSpeciality, ';');
  
        UpdateVolunteer.Grade_level_Speciality__c=GradeSpecialit;
       
       }
       
        if(InstructionalSpecialitiesOptionsSelected!=null){
       List<String> InstructionalSpeciality=new List<String>();
       
       for( SelectOption InstructionalSpecialities: InstructionalSpecialitiesOptionsSelected)
           {
           
           InstructionalSpeciality.add(InstructionalSpecialities.getValue());
           
          }
          
          InstructionalSpec=String.join(InstructionalSpeciality, ';');
  
        UpdateVolunteer.Instructional_Experience__c=InstructionalSpec;
       
       }
       
       
       
       if(InstitutionsSpecialitiesOptionsSelected!=null){
       List<String> TypesOfInstitution=new List<String>();
      
       for( SelectOption InstructionalSpecialities: InstitutionsSpecialitiesOptionsSelected)
           {
           
           TypesOfInstitution.add(InstructionalSpecialities.getValue());
           
          }
          
          InstitutionType=String.join(TypesOfInstitution, ';');
  
        UpdateVolunteer.Types_of_Institutions_where_you_have_wor__c=InstitutionType;
       
       }
       
       
         if(AccreditationOptionsselected!=null){
       List<String> Accrediation=new List<String>();
      
       for( SelectOption InstructionalSpecialities: AccreditationOptionsselected)
           {
           
           Accrediation.add(InstructionalSpecialities.getValue());
           
          }
          
          AccrediationOption=String.join(Accrediation, ';');
  
        UpdateVolunteer.Accreditation_affiliation_and_experience__c=AccrediationOption;
       
       }
       
       
        if(RolesOptionsSelected!=null){
       List<String> RolesOptions=new List<String>();
    
       for( SelectOption RoleOption: RolesOptionsSelected)
           {
           
           RolesOptions.add(RoleOption.getValue());
           
          }
          
          RoleType=String.join(RolesOptions, ';');
  
        UpdateVolunteer.In_what_roles_have_you_served_AdvancED__c=RoleType;
       
       }
       
       
        if(TeamOptionsSelected!=null){
       List<String> TeamsOptions=new List<String>();
       
       for( SelectOption TeamOption: TeamOptionsSelected)
           {
           
           TeamsOptions.add(TeamOption.getValue());
           
          }
          
          TeamType=String.join(TeamsOptions, ';');
  
        UpdateVolunteer.Engagement_Review_Team_Experience__c=TeamType;
       
       }
       
       
        if(RegionsOptionsSelected!=null){
       List<String> RegionOptions=new List<String>();
       
       for( SelectOption RegionOption: RegionsOptionsSelected)
           {
           
           RegionOptions.add(RegionOption.getValue());
           
          }
          
          Region=String.join(RegionOptions, ';');
  
        UpdateVolunteer.Regions_where_you_have_already_served__c=Region;
       
       }
       
       
            if(LiketoserveOptionsSelected!=null){
       List<String> LikeToServe=new List<String>();
    
       for( SelectOption Option: LiketoserveOptionsSelected)
           {
           
           LikeToServe.add(Option.getValue());
           
          }
          
          LiketoServeOpt=String.join(LikeToServe, ';');
  
        UpdateVolunteer.I_would_like_to_serve_as__c=LiketoServeOpt;
       
       }
       
       
        if(TypesofteamsOptionsSelected!=null){
       List<String> TypesOfTeam=new List<String>();
      
       for( SelectOption Option: TypesofteamsOptionsSelected)
           {
           
           TypesOfTeam.add(Option.getValue());
           
          }
          
          TypesOfTeamOpt=String.join(TypesOfTeam, ';');
  
        UpdateVolunteer.Types_of_teams_you_interested_in_serving__c=TypesOfTeamOpt;
       
       }
       if(SaveorSubmit == 'Save'){
       UpdateVolunteer.Status__c=StatusOfVolunteer;
        }
        else{
        if(StatusOfVolunteer != 'New'){
        UpdateVolunteer.Status__c=StatusOfVolunteer;
        }
        else{
        UpdateVolunteer.Status__c='Needs Approval';
        UpdateVolunteer.ExpirationLink__c=true;
        }
        }


    //  Update(UpdateVolunteer);
     
     
     }
     
     public static Boolean validateEmail(String email) {
    Boolean res = false;
        
    
    String emailRegex = '^[a-zA-Z0-9._|\\\\%#~`=?&/$^*!}{+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$'; // source: <a href="http://www.regular-expressions.info/email.html" target="_blank" rel="nofollow">http://www.regular-expressions.info/email.html</a>
    Pattern MyPattern = Pattern.compile(emailRegex);
    Matcher MyMatcher = MyPattern.matcher(email);

    if (!MyMatcher.matches()) 
        res = true;
    return res; 
    }
     
     
     
     
     
     public List<SelectOption> getunSelectedValues(){
        List<SelectOption> options;
        
        options = new List<SelectOption>();
        
        List<string> tempList = new List<String>();
        
        tempList.addAll(leftvalues);
        
        tempList.sort();
        
        for(string s : tempList) {
            options.add(new SelectOption(s,s));
        }
        
        return options;
        
    }
    
    public List<SelectOption> getLanguageOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Language = volunteer__c.Languages__c.getDescribe();
    List<Schema.PicklistEntry> LanguageValues = Language.getPicklistValues();
      //options.add(new SelectOption('None','None'));
    
    
    
     for( Schema.PicklistEntry v : LanguageValues) {
     if(LanguagesSelected.contains(v.getValue())){ 
     }
    else{ 
        options.add(new SelectOption(v.getValue(),v.getLabel()));           
      }   
      }
    return options; 
    }
    
    
    
    public List<SelectOption> getSubjectSpecialitiesOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult SubjectSpecialities = volunteer__c.Subject_Content_Specialties__c.getDescribe();
    List<Schema.PicklistEntry> SubjectSpecialitiesValues = SubjectSpecialities.getPicklistValues();
     // options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : SubjectSpecialitiesValues) {
     if(SubjectSpecialitSelected.contains(v.getValue())){ 
     }
    else{ 
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
    
    public List<SelectOption> getAreaSpecialitiesOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult AreaSpecialities = volunteer__c.Area_Specialties__c.getDescribe();
    List<Schema.PicklistEntry> AreaSpecialitiesValues = AreaSpecialities.getPicklistValues();
   //   options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : AreaSpecialitiesValues) {
     if(AreaSpecialitSelected.contains(v.getValue())){ 
     }
    else{ 
        options.add(new SelectOption(v.getValue(),v.getLabel())); 
        }       
      } 
    return options; 
    }
    
    public List<SelectOption> getGradeSpecialitiesOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult GradeSpecialities = volunteer__c.Grade_level_Speciality__c.getDescribe();
    List<Schema.PicklistEntry> GradeSpecialitiesValues = GradeSpecialities.getPicklistValues();
  //    options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : GradeSpecialitiesValues) {
     if(GradeSpecialitSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
    
     public List<SelectOption> getInstructionalSpecialitiesOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult InstructionalSpecialities = volunteer__c.Instructional_Experience__c.getDescribe();
    List<Schema.PicklistEntry> InstructionalSpecialitiesValues = InstructionalSpecialities.getPicklistValues();
   //   options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : InstructionalSpecialitiesValues) {
     if(InstructionalSpecSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
    
    
    public List<SelectOption> getInstitutionsSpecialitiesOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult InstitutionsSpecialities = volunteer__c.Types_of_Institutions_where_you_have_wor__c.getDescribe();
    List<Schema.PicklistEntry> InstitutionsSpecialitiesValues = InstitutionsSpecialities.getPicklistValues();
    //  options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : InstitutionsSpecialitiesValues) {
     if(InstitutionTypeSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
      
      public List<SelectOption> getAccreditationOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Accreditation =volunteer__c.Accreditation_affiliation_and_experience__c.getDescribe();
    List<Schema.PicklistEntry> AccreditationValues = Accreditation.getPicklistValues();
   //   options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : AccreditationValues) {
      if(AccrediationOptionSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
      
       
       
        public List<SelectOption> getRolesOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Roles = volunteer__c.In_what_roles_have_you_served_AdvancED__c.getDescribe();
    List<Schema.PicklistEntry> RolesValues = Roles.getPicklistValues();
    //  options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : RolesValues) {
      if(RoleTypeSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
       
       public List<SelectOption> getTeamOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Team = volunteer__c.Engagement_Review_Team_Experience__c.getDescribe();
    List<Schema.PicklistEntry> TeamValues = Team.getPicklistValues();
  //    options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : TeamValues) {
      if(TeamTypeSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
       
       
       public List<SelectOption> getRegionsOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Regions = volunteer__c.Regions_where_you_have_already_served__c.getDescribe();
    List<Schema.PicklistEntry> RegionsValues = Regions.getPicklistValues();
  //    options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : RegionsValues) {
     if(RegionSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
      
       public List<SelectOption> getLiketoserveOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Liketoserve = volunteer__c.I_would_like_to_serve_as__c.getDescribe();
    List<Schema.PicklistEntry> LiketoserveValues = Liketoserve.getPicklistValues();
    //  options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : LiketoserveValues) {
     if(LiketoServeOptSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
      
      
       
       public List<SelectOption> getTypesofteamsOptionsleft(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Typesofteams = volunteer__c.Types_of_teams_you_interested_in_serving__c.getDescribe();
    List<Schema.PicklistEntry> TypesofteamsValues = Typesofteams.getPicklistValues();
    //  options.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : TypesofteamsValues) {
      if(TypesOfTeamOptSelected.contains(v.getValue())){ 
     }
    else{
        options.add(new SelectOption(v.getValue(),v.getLabel()));        
      } 
      }
    return options; 
    }
        
        
    public List<SelectOption> getSelectedValues(){
        List<SelectOption> options1;
        
        options1 = new List<SelectOption>();
        
        List<string> tempList = new List<String>();
        
        tempList.addAll(rightvalues);        
        tempList.sort();
        
        for(String s : tempList) {
            
            options1.add(new SelectOption(s,s));
        }
        
        
        return options1;
    }
}