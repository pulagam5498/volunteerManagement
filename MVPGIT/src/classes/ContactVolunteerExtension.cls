public without sharing class ContactVolunteerExtension {

    public String getFirstName() {
        return null;
    }


    public String allContacts { get; set; }

    //public String contact { get; set; }

   

    public  Contact Volunteer{get;set;}
    
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
    
    
    
    
    
    
    
    

    public ContactVolunteerExtension() {
    
     rightvalues = new Set<string>();
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
        
        
        
        
        
        
      
      
    Schema.DescribeFieldResult Countries = Contact.Country1__c.getDescribe();
    List<Schema.PicklistEntry> CountryValues = Countries.getPicklistValues();
      CountriesOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : CountryValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        CountriesOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      Schema.DescribeFieldResult EmpStatus = Contact.Employment_status__c.getDescribe();
    List<Schema.PicklistEntry> EmpStatusValues = EmpStatus.getPicklistValues();
     for( Schema.PicklistEntry v : EmpStatusValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        EmpStatusOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
      
      
     
     
      
      
        Schema.DescribeFieldResult FaithBasedInstitute = Contact.Faith_based_institution__c.getDescribe();
    List<Schema.PicklistEntry> FaithBasedInstituteValues = FaithBasedInstitute.getPicklistValues();
      FaithBasedInstituteOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : FaithBasedInstituteValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        FaithBasedInstituteOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      Schema.DescribeFieldResult FaithChoose = Contact.Faith_choose__c.getDescribe();
    List<Schema.PicklistEntry> FaithChooseValues = FaithChoose.getPicklistValues();
      FaithChooseOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : FaithChooseValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        FaithChooseOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
       Schema.DescribeFieldResult OtherAccrediting = Contact.Experence_AdvancED__c.getDescribe();
    List<Schema.PicklistEntry> OtherAccreditingValues = OtherAccrediting.getPicklistValues();
     for( Schema.PicklistEntry v : OtherAccreditingValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        OtherAccreditingOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
       Schema.DescribeFieldResult Availability  = Contact.Availability__c.getDescribe();
    List<Schema.PicklistEntry> AvailabilityValues = Availability.getPicklistValues();
     for( Schema.PicklistEntry v : AvailabilityValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        AvailabilityOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
       Schema.DescribeFieldResult Eleot  = Contact.I_am_eleot_2_0_certified__c.getDescribe();
    List<Schema.PicklistEntry> EleotValues = Eleot.getPicklistValues();
     for( Schema.PicklistEntry v : EleotValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        EleotOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
      
      Schema.DescribeFieldResult Serve = Contact.where_would_you_like_to_serve__c.getDescribe();
    List<Schema.PicklistEntry> ServeValues = Serve.getPicklistValues();
      ServeOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : ServeValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        ServeOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
      
      
      
      
      
      
      
      
      Schema.DescribeFieldResult States = Contact.State_Province2__c.getDescribe();
    List<Schema.PicklistEntry> StateValues = States.getPicklistValues();
      StateOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : StateValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        StateOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      Schema.DescribeFieldResult Salutate = Contact.Salutation.getDescribe();
    List<Schema.PicklistEntry> SalutateValues = Salutate.getPicklistValues();
      SalutationOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : SalutateValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        SalutationOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      
      
      
     
      
      
      
    
       
       string id = ApexPages.CurrentPage().getparameters().get('id');
       system.debug('---------------------'+id);
      if(id !=null){
      Volunteer = [select Salutation, FirstName, Middle_Initial__c, LastName, Country1__c, State_Province2__c, City__c, Street_Address__c, Zip_Postal_Code__c, phone, Email, Emergency_Name__c, Emergency_Relationship__c, Emergency_Telephone__c, Emergency_Address__c, Languages__c,   Other_Languages__c, list_of_countries_you_have_worked__c, where_would_you_like_to_serve__c, Passport_Number__c, Country_of_Issunace__c, Expiration_Date__c,List_all_Countries_visited_in_12_months__c, Employment_status__c, Retired__c, Name_of_your_School_or_ORganization__c, Your_School_or_organization_located_in__c, your_Job_Title__c, Years_of_experience_in_education__c, Subject_Content_Specialties__c, Subject_Specialties_Other__c, Area_Specialties__c, Area_Specialties_other__c, Grade_level_Speciality__c, Grade_Level_Other__c, Instructional_Experience__c, Instructional_Other__c, Types_of_Institutions_where_you_have_wor__c, Institutions_Other__c, Faith_based_institution__c, Faith_choose__c, Experence_AdvancED__c, Accreditation_affiliation_and_experience__c, Accreditation_other__c, In_what_roles_have_you_served_AdvancED__c, Engagement_Review_Team_Experience__c, Regions_where_you_have_already_served__c, I_am_eleot_2_0_certified__c, I_would_like_to_serve_as__c, Availability__c, Types_of_teams_you_interested_in_serving__c, Biographical_sketch__c, Qulification__c, Ref1_Name__c, Ref1_company__c, Ref1_Address__c,  Ref1_Address2__c, Re1f_City_Town__c, Ref1_State_Province__c, Ref1_Zip_Postal_Code__c, Ref1_Country__c, Ref1_Email_Address__c, Ref1_Phone_Number__c, Ref2_Name__c, Ref2_company__c, Ref2_Address__c, Ref2_Address2__c, Ref2_City_Town__c, Ref2_State_Province__c, Ref2_Zip_Postal_Code__c, Ref2_Country__c, Ref2_Email_Address__c, Ref2_Phone_Number__c   from Contact where id =:id];



       }else{
        Volunteer = null;
       }
    
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

     public PageReference saveContact() {
       try {
       insert(Volunteer);
       }
       catch(System.DMLException e) {
           ApexPages.addMessages(e);
           return null;
       }
       PageReference p = Page.ThankYou;
       p.setRedirect(true);
       return p;  
       
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
    
    public List<SelectOption> getLanguageOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Language = Contact.Languages__c.getDescribe();
    List<Schema.PicklistEntry> LanguageValues = Language.getPicklistValues();
      LanguageOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : LanguageValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
    
    
    
    public List<SelectOption> getSubjectSpecialitiesOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult SubjectSpecialities = Contact.Subject_Content_Specialties__c.getDescribe();
    List<Schema.PicklistEntry> SubjectSpecialitiesValues = SubjectSpecialities.getPicklistValues();
      SubjectSpecialitiesOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : SubjectSpecialitiesValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
    
    public List<SelectOption> getAreaSpecialitiesOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult AreaSpecialities = Contact.Area_Specialties__c.getDescribe();
    List<Schema.PicklistEntry> AreaSpecialitiesValues = AreaSpecialities.getPicklistValues();
      AreaSpecialitiesOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : AreaSpecialitiesValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
    
    public List<SelectOption> getGradeSpecialitiesOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult GradeSpecialities = Contact.Grade_level_Speciality__c.getDescribe();
    List<Schema.PicklistEntry> GradeSpecialitiesValues = GradeSpecialities.getPicklistValues();
      GradeSpecialitiesOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : GradeSpecialitiesValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
    
     public List<SelectOption> getInstructionalSpecialitiesOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult InstructionalSpecialities = Contact.Instructional_Experience__c.getDescribe();
    List<Schema.PicklistEntry> InstructionalSpecialitiesValues = InstructionalSpecialities.getPicklistValues();
      InstructionalSpecialitiesOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : InstructionalSpecialitiesValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
    
    
    public List<SelectOption> getInstitutionsSpecialitiesOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult InstitutionsSpecialities = Contact.Types_of_Institutions_where_you_have_wor__c.getDescribe();
    List<Schema.PicklistEntry> InstitutionsSpecialitiesValues = InstitutionsSpecialities.getPicklistValues();
      InstitutionsSpecialitiesOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : InstitutionsSpecialitiesValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
      
      public List<SelectOption> getAccreditationOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Accreditation = Contact.Accreditation_affiliation_and_experience__c.getDescribe();
    List<Schema.PicklistEntry> AccreditationValues = Accreditation.getPicklistValues();
      AccreditationOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : AccreditationValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
      
       
       
        public List<SelectOption> getRolesOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Roles = Contact.In_what_roles_have_you_served_AdvancED__c.getDescribe();
    List<Schema.PicklistEntry> RolesValues = Roles.getPicklistValues();
      RolesOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : RolesValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
       
       public List<SelectOption> getTeamOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Team = Contact.Engagement_Review_Team_Experience__c.getDescribe();
    List<Schema.PicklistEntry> TeamValues = Team.getPicklistValues();
      TeamOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : TeamValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
       
       
       public List<SelectOption> getRegionsOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Regions = Contact.Regions_where_you_have_already_served__c.getDescribe();
    List<Schema.PicklistEntry> RegionsValues = Regions.getPicklistValues();
      RegionsOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : RegionsValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
      
       public List<SelectOption> getLiketoserveOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Liketoserve = Contact.I_would_like_to_serve_as__c.getDescribe();
    List<Schema.PicklistEntry> LiketoserveValues = Liketoserve.getPicklistValues();
      LiketoserveOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : LiketoserveValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
      } 
    return options; 
    }
      
      
       
       public List<SelectOption> getTypesofteamsOptions(){
         List<SelectOption> options = new List<SelectOption>();
        List<string> tempList = new List<String>();
        tempList.addAll(leftvalues);
        tempList.sort();
        Schema.DescribeFieldResult Typesofteams = Contact.Types_of_teams_you_interested_in_serving__c.getDescribe();
    List<Schema.PicklistEntry> TypesofteamsValues = Typesofteams.getPicklistValues();
      TypesofteamsOptions.add(new SelectOption('None','--Select--'));
     for( Schema.PicklistEntry v : TypesofteamsValues) {
        options.add(new SelectOption(v.getLabel(),v.getLabel()));        
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