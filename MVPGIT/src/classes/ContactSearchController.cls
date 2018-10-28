public with sharing class ContactSearchController{

   public integer counter=0;  //keeps track of the offset
   public integer list_size=5; //sets the page size or number of rows
   public integer total_size; //used to show user the total size of the list

    public List<String> conIds{get;set;} 
    public List<String> selectedTypeMulti{get;set;}
    public List<String> selectedSubjectSpeciality{get;set;}
       public List<String> selectedSpeciality{get;set;}
        public List<String> selectedRegionServed{get;set;}
          public List<String> selectedLanguages{get;set;}
    public List<String> selectedInstructionalExp{get;set;}
    public List<String> selectedTypesInstitutionWorked{get;set;}
    public List<String> selectedRolesServedAdvanceOptions{get;set;}
    public List<String> selectedWouldServe{get;set;}
    public List<String> selectedGradeSpeciality{get;set;}
     public List<String> selectedAccExperience{get;set;}
    public List<String> selectedAreaSpecialty{get;set;}
      public List<String> selectedEngagementRevExp{get;set;}
   
   public Boolean Cert{get;set;}
    public Date StartDate{get;set;}
   public Date EndDate{get;set;}
   public Boolean Selected{get;set;}
   public Boolean Result{get;set;}
   
   
   public List<Contact> conList{get;set;}
   public List<Contact> conListTotal{get;set;}
   public Integer PageNumb{get;set;}
   public String searchStr{get;set;}
   public String searchTerms{get;set;}
   public List<SelectOption> AccExperienceOptions{get;set;}
   public List<SelectOption> AreaSpecialtyOptions{get;set;}
   public List<SelectOption> AvailableOptions{get;set;}
   public List<SelectOption> EmployStatusOptions{get;set;}
   public List<SelectOption> EngagementRevExpOptions{get;set;}
   public List<SelectOption> ExperienceAdvancedOptions{get;set;}
   public List<SelectOption> GradeSpecialityOptions{get;set;}
    public List<SelectOption> HighDegreeOptions{get;set;}
     public List<SelectOption> EleotCertifiedOptions{get;set;}
     public List<SelectOption> WouldServeOptions{get;set;}
   public List<SelectOption> RolesServedAdvanceOptions{get;set;}
    public List<SelectOption> TypesInstitutionWorkedOptions{get;set;}
    public List<SelectOption> InstructionalExpOptions{get;set;}
    public List<SelectOption> LanguagesOptions{get;set;}
    public List<SelectOption> PositionOptions{get;set;}
    public List<SelectOption> RegionServedOptions{get;set;}
    public List<SelectOption> StateProvinceOptions{get;set;}
   public List<SelectOption> CountryOptions{get;set;}
    public List<SelectOption> SpecialityOptions{get;set;}
     public List<SelectOption> SubjectSpecialityOptions{get;set;}
      public List<SelectOption> TypeOptions{get;set;}
      public List<SelectOption> AssignmentRoleOptions{get;set;}
      public List<SelectOption> CertificationTypeOptions{get;set;}
      
      
    public String selectedcertType{get;set;}
    public String selectedAssignmentRole{get;set;}
    public string Where_Condition_Certification{get;set;}
    public string Where_Condition_Assignment{get;set;}
    public String Where_Condition_Dates{get;set;}
   
    public  String EngagementRevs;
    public String Types;
    public String SubjectSpecils;
    public String SelectedSpecils;
    public String RegionServs;
    public String Langs;
    public String InstructExps;
    public String Instituteworks;
    public String ServedAdvances;
    public String WouldServes;
    public String GradeSpecials;
    public String AccExps;
    public String AreaSpecials;
    
    public List<String> conIdswithStartandEndDate{get;set;}

    public String selectedCountry{get;set;}
    public String selectedStateProvince{get;set;}
    public String selectedPosition{get;set;}
    public String selectedEleotCertified{get;set;}
    public String selectedHighDegree{get;set;}
    public String selectedExperienceAdvancedOptions{get;set;}
    public String selectedAvailable{get;set;}
    public String selectedEmployStatus{get;set;}
  
    public String Where_Condition;
    public List<Certification__c> conListWithCertification{get;set;}
    public List<Certification__c> conListWithCertificationTotal{get;set;}
    public List<Assignment__c> conListWithAssignment{get;set;}
    public List<Assignment__c> conListWithAssignmentTotal{get;set;}
    
    Public List<Certification__c> conListWithCertificationResult{get;set;}
    public List<Certification__c> conListWithCertificationTotalResult{get;set;}
    public List<Assignment__c> conListWithAssignmentResult{get;set;}
    public List<Assignment__c> conListWithAssignmentTotalResult{get;set;}
    public List<Contact> conListResult{get;set;}
    public List<Contact> conListTotalResult{get;set;}
    
    
    public String Query;           
       
    public Assignment__c ass{get;set;}  
      
     public ApexPages.StandardController stdController{get;set;}
     public String ReviewId{get;set;}
     public boolean certification{get;set;}
     public boolean assignment{get;set;}
   
    
   public ContactSearchController(ApexPages.StandardController controller) {
stdController =  controller;
   ass=new Assignment__c();
  this.ass = (Assignment__c)stdController.getRecord();
  
  system.debug('----------------------this.ass-------------'+controller);
  assignment=false;
  certification=false;
  Selected=false;
  Cert=false;
  Result=false;
 
  total_size = 0;
   PageNumb=0;
   
   conIdswithStartandEndDate=new List<String>();
   conIds=new List<String>();
   AccExperienceOptions=new List<SelectOption>();
   AreaSpecialtyOptions=new List<SelectOption>();
   AvailableOptions=new List<SelectOption>();
   EmployStatusOptions=new List<SelectOption>();
   EngagementRevExpOptions=new List<SelectOption>();
   ExperienceAdvancedOptions=new List<SelectOption>();
    GradeSpecialityOptions=new List<SelectOption>();
    HighDegreeOptions=new List<SelectOption>();
    EleotCertifiedOptions=new List<SelectOption>();
    WouldServeOptions=new List<SelectOption>();
    RolesServedAdvanceOptions=new List<SelectOption>();
    TypesInstitutionWorkedOptions=new List<SelectOption>();
    InstructionalExpOptions=new List<SelectOption>();
    LanguagesOptions=new List<SelectOption>();
    PositionOptions=new List<SelectOption>();
    RegionServedOptions=new List<SelectOption>();
    StateProvinceOptions=new List<SelectOption>();
    CountryOptions=new List<SelectOption>();
    SpecialityOptions=new List<SelectOption>();
    SubjectSpecialityOptions=new List<SelectOption>();
    TypeOptions=new List<SelectOption>();
    AssignmentRoleOptions=new List<SelectOption>();
    CertificationTypeOptions=new List<SelectOption>();
    
    
      selectedTypeMulti=new List<String>();
      selectedSubjectSpeciality=new List<String>();
      selectedSpeciality=new List<String>();
      selectedRegionServed=new List<String>();
      selectedLanguages=new List<String>();
   selectedInstructionalExp=new List<String>();
   selectedTypesInstitutionWorked=new List<String>();
   selectedRolesServedAdvanceOptions=new List<String>();
   selectedWouldServe=new List<String>();
   selectedGradeSpeciality=new List<String>();
  selectedAccExperience=new List<String>();
selectedAreaSpecialty=new List<String>();
selectedEngagementRevExp=new List<String>();
    
    conListWithCertification=new List<Certification__c>();
    conListWithCertificationTotal=new List<Certification__c>();
    conListWithAssignment=new List<Assignment__c>();
    conListWithAssignmentTotal=new List<Assignment__c>();
         conList = New List<Contact>();
         conListTotal=new List<Contact>();
         
         
         conListWithCertificationResult=new List<Certification__c>();
    conListWithCertificationTotalResult=new List<Certification__c>();
    conListWithAssignmentResult=new List<Assignment__c>();
    conListWithAssignmentTotalResult=new List<Assignment__c>();
         conListResult = New List<Contact>();
         conListTotalResult=new List<Contact>();
         
         
  
  Schema.DescribeFieldResult CertificationType = Certification__c.Certifications_Type__c.getDescribe();
    List<Schema.PicklistEntry> CertificationTypeValues = CertificationType.getPicklistValues();
     CertificationTypeOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : CertificationTypeValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        CertificationTypeOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      } 
  
  Schema.DescribeFieldResult AssignmentRole = Assignment__c.Role__c.getDescribe();
    List<Schema.PicklistEntry> AssignmentRoleValues = AssignmentRole.getPicklistValues();
     AssignmentRoleOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : AssignmentRoleValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        AssignmentRoleOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      } 
  
     Schema.DescribeFieldResult Type = Contact.Type__c.getDescribe();
    List<Schema.PicklistEntry> TypeValues = Type.getPicklistValues();
     for( Schema.PicklistEntry v : TypeValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        TypeOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      } 
  
     Schema.DescribeFieldResult SubjectSpeciality = Contact.Subject_Content_Specialties__c.getDescribe();
    List<Schema.PicklistEntry> SubjectSpecialityValues = SubjectSpeciality.getPicklistValues();
  //   SubjectSpecialityOptions.add(new SelectOption('None','None'));
    for( Schema.PicklistEntry v : SubjectSpecialityValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        SubjectSpecialityOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }    

   Schema.DescribeFieldResult Speciality = Contact.Specialties__c.getDescribe();
    List<Schema.PicklistEntry> SpecialityValues = Speciality.getPicklistValues();
     SpecialityOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : SpecialityValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        SpecialityOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }     
     

     Schema.DescribeFieldResult Country = Contact.Country1__c.getDescribe();
    List<Schema.PicklistEntry> CountryValues = Country.getPicklistValues();
    CountryOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : CountryValues) {
        CountryOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }     

    Schema.DescribeFieldResult StateProvince = Contact.State_Province2__c.getDescribe();
    List<Schema.PicklistEntry> StateProvinceValues = StateProvince.getPicklistValues();
    StateProvinceOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : StateProvinceValues) {
        StateProvinceOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      } 
    
    Schema.DescribeFieldResult RegionServed = Contact.Regions_where_you_have_already_served__c.getDescribe();
    List<Schema.PicklistEntry> RegionServedValues = RegionServed.getPicklistValues();
  //   RegionServedOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : RegionServedValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        RegionServedOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      } 
   
     Schema.DescribeFieldResult Position = Contact.Position__c.getDescribe();
    List<Schema.PicklistEntry> PositionValues = Position.getPicklistValues();
     PositionOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : PositionValues) {
        PositionOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      } 
     
     Schema.DescribeFieldResult Languages = Contact.Languages__c.getDescribe();
    List<Schema.PicklistEntry> LanguagesValues = Languages.getPicklistValues();
    // LanguagesOptions.add(new SelectOption('None','None'));
     
     for( Schema.PicklistEntry v : LanguagesValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        LanguagesOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }    

   Schema.DescribeFieldResult InstructionalExp = Contact.Instructional_Experience__c.getDescribe();
    List<Schema.PicklistEntry> InstructionalExpValues = InstructionalExp.getPicklistValues();
    //  InstructionalExpOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : InstructionalExpValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        InstructionalExpOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }     

   Schema.DescribeFieldResult TypesInstitutionWorked = Contact.Types_of_Institutions_where_you_have_wor__c.getDescribe();
    List<Schema.PicklistEntry> TypesInstitutionWorkedValues = TypesInstitutionWorked.getPicklistValues();
    // TypesInstitutionWorkedOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : TypesInstitutionWorkedValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        TypesInstitutionWorkedOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }      
    
    Schema.DescribeFieldResult RolesServedAdvance = Contact.In_what_roles_have_you_served_AdvancED__c.getDescribe();
    List<Schema.PicklistEntry> RolesServedAdvanceValues = RolesServedAdvance.getPicklistValues();
     RolesServedAdvanceOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : RolesServedAdvanceValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        RolesServedAdvanceOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }      

     Schema.DescribeFieldResult WouldServe = Contact.I_would_like_to_serve_as__c.getDescribe();
    List<Schema.PicklistEntry> WouldServeValues = WouldServe.getPicklistValues();
    // WouldServeOptions.add(new SelectOption('None','None'));
     
     for( Schema.PicklistEntry v : WouldServeValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        WouldServeOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }    

    Schema.DescribeFieldResult EleotCertified = Contact.I_am_eleot_2_0_certified__c.getDescribe();
    List<Schema.PicklistEntry> EleotCertifiedValues = EleotCertified.getPicklistValues();
     EleotCertifiedOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : EleotCertifiedValues) {
        EleotCertifiedOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
   
     Schema.DescribeFieldResult HighDegree = Contact.Highest_Degree__c.getDescribe();
    List<Schema.PicklistEntry> HighDegreeValues = HighDegree.getPicklistValues();
     HighDegreeOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : HighDegreeValues) {
        HighDegreeOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
   
      Schema.DescribeFieldResult GradeSpeciality = Contact.Grade_level_Speciality__c.getDescribe();
    List<Schema.PicklistEntry> GradeSpecialityValues = GradeSpeciality.getPicklistValues();
    // GradeSpecialityOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : GradeSpecialityValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        GradeSpecialityOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
   
   
   Schema.DescribeFieldResult ExperienceAdvanced = Contact.Experence_AdvancED__c.getDescribe();
    List<Schema.PicklistEntry> ExperienceAdvancedValues = ExperienceAdvanced.getPicklistValues();
     ExperienceAdvancedOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : ExperienceAdvancedValues) {
        ExperienceAdvancedOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
   
   
   Schema.DescribeFieldResult AccExperience = Contact.Accreditation_affiliation_and_experience__c.getDescribe();
    List<Schema.PicklistEntry> AccExperienceValues = AccExperience.getPicklistValues();
   //  AccExperienceOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : AccExperienceValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        AccExperienceOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
       Schema.DescribeFieldResult AreaSpecialty = Contact.Area_Specialties__c.getDescribe();
    List<Schema.PicklistEntry> AreaSpecialtyValues = AreaSpecialty.getPicklistValues();
    // AreaSpecialtyOptions.add(new SelectOption('None','None'));
     
     for( Schema.PicklistEntry v : AreaSpecialtyValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        AreaSpecialtyOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      Schema.DescribeFieldResult Available = Contact.Availability__c.getDescribe();
    List<Schema.PicklistEntry> AvailableValues = Available.getPicklistValues();
     AvailableOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : AvailableValues) {
        AvailableOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
      Schema.DescribeFieldResult EmployStatus = Contact.Employment_status__c.getDescribe();
    List<Schema.PicklistEntry> EmployStatusValues = EmployStatus.getPicklistValues();
     EmployStatusOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : EmployStatusValues) {
        EmployStatusOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
      
       Schema.DescribeFieldResult EngagementRevExp = Contact.Engagement_Review_Team_Experience__c.getDescribe();
    List<Schema.PicklistEntry> EngagementRevExpValues = EngagementRevExp.getPicklistValues();
    // EngagementRevExpOptions.add(new SelectOption('None','None'));
     for( Schema.PicklistEntry v : EngagementRevExpValues) {
      System.debug('Picklist Value Label:' + v.getLabel());
      System.debug('Picklist API Name:' + v.getValue());
        EngagementRevExpOptions.add(new SelectOption(v.getValue(),v.getLabel()));
      }
   
   
   }
   
   public void totalSize(){
   
   conList.clear();
   conListTotal.clear();
   conListWithAssignment.clear();
   conListWithCertification.clear();
   conIds.clear();
   
  SubjectSpecils='';
  SelectedSpecils='';
  RegionServs='';
  Langs='';
  InstructExps='';
  Instituteworks='';
  ServedAdvances='';
  WouldServes='';
  GradeSpecials='';
  AccExps='';
  AreaSpecials='';
  EngagementRevs='';
  Types='';
  
  
  
  
   
    system.debug('--------selectedTypeMulti------'+selectedTypeMulti);
     
      if(selectedTypeMulti.size()>0){     
          Types=String.join(selectedTypeMulti, ';');      
          system.debug('------Types-----'+Types);
          }
          
          
          
           if(selectedSubjectSpeciality.size()>0){    
          SubjectSpecils=String.join(selectedSubjectSpeciality, ';');
          }
          
          
          if(selectedSpeciality.size()>0){
          SelectedSpecils=String.join(selectedSpeciality, ';');
          }
          
          
          
          if(selectedRegionServed.size()>0){
          RegionServs=String.join(selectedRegionServed, ';');
          }
          
          system.debug('----selectedLanguages----'+selectedLanguages);
          
          if(selectedLanguages.size()>0){
          Langs=String.join(selectedLanguages, ';');
          system.debug('-------Langs------'+Langs);
          }
          
          if(selectedInstructionalExp.size()>0){
          InstructExps=String.join(selectedInstructionalExp, ';');
          }
          
          
          if(selectedTypesInstitutionWorked.size()>0){
          Instituteworks=String.join(selectedTypesInstitutionWorked, ';');
          }
          
          
          if(selectedRolesServedAdvanceOptions.size()>0){
          ServedAdvances=String.join(selectedRolesServedAdvanceOptions, ';');
          }
          
          
          
          if(selectedWouldServe.size()>0){
          WouldServes=String.join(selectedWouldServe, ';');
          }
          
          
           if(selectedGradeSpeciality.size()>0){
          GradeSpecials=String.join(selectedGradeSpeciality, ';');
          }
          
          
           if(selectedAccExperience.size()>0){
          AccExps=String.join(selectedAccExperience, ';');
          }
          
           if(selectedAreaSpecialty.size()>0){
          AreaSpecials=String.join(selectedAreaSpecialty, ';');
          }
          
            if(selectedEngagementRevExp.size()>0){
          EngagementRevs=String.join(selectedEngagementRevExp, ';');
          }
          
         Boolean Once=true;
          Where_Condition='';
    Where_Condition_Assignment='';
    Where_Condition_Dates='';
    Where_Condition_Certification='';
    
    if(selectedCertType != 'none' || selectedAssignmentRole!='none' || StartDate != null || EndDate != null || ReviewId !=null){
    
      if(Types !=''){
      Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Type__c includes '+'('+'\''+ Types + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Type__c includes '+'('+'\''+ Types + '\'' +')';
        }
        }
        
        if(SubjectSpecils !=''){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Subject_Content_Specialties__c includes '+'('+'\''+ SubjectSpecils + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Subject_Content_Specialties__c includes '+'('+'\''+ SubjectSpecils + '\'' +')';
        }
        }
          
         if(SelectedSpecils !=''){
         Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Specialties__c includes '+'('+'\''+ SelectedSpecils + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Specialties__c includes '+'('+'\''+ SelectedSpecils + '\'' +')';
        }
        }
        
         if(RegionServs !=''){
         Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Regions_where_you_have_already_served__c includes '+'('+'\''+ RegionServs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Regions_where_you_have_already_served__c includes '+'('+'\''+ RegionServs + '\'' +')';
        }
        }
        
         if(Langs !=''){
         Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Languages__c includes '+'('+'\''+ Langs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Languages__c includes '+'('+'\''+ Langs + '\'' +')';
        }
        }
        
         if(InstructExps !=''){
         Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Instructional_Experience__c includes '+'('+'\''+ InstructExps + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Instructional_Experience__c includes '+'('+'\''+ InstructExps + '\'' +')';
        }
        }
        
     if(Instituteworks !=''){
     Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Types_of_Institutions_where_you_have_wor__c includes '+'('+'\''+ Instituteworks + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Types_of_Institutions_where_you_have_wor__c includes '+'('+'\''+ Instituteworks + '\'' +')';
        }
        }
        
        if(ServedAdvances !=''){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.In_what_roles_have_you_served_AdvancED__c includes '+'('+'\''+ ServedAdvances + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.In_what_roles_have_you_served_AdvancED__c includes '+'('+'\''+ ServedAdvances + '\'' +')';
        }
        }
        
        if(WouldServes !=''){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.I_would_like_to_serve_as__c includes '+'('+'\''+ WouldServes + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.I_would_like_to_serve_as__c includes '+'('+'\''+ WouldServes + '\'' +')';
        }
        }
        
        if(GradeSpecials !=''){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Grade_level_Speciality__c includes '+'('+'\''+ GradeSpecials + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Grade_level_Speciality__c includes '+'('+'\''+ GradeSpecials + '\'' +')';
        }
        }
        
        if(AccExps !=''){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Accreditation_affiliation_and_experience__c includes '+'('+'\''+ AccExps + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Accreditation_affiliation_and_experience__c includes '+'('+'\''+ AccExps + '\'' +')';
        }
        }
        
        if(AreaSpecials !=''){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Area_Specialties__c includes '+'('+'\''+ AreaSpecials + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Area_Specialties__c includes '+'('+'\''+ AreaSpecials + '\'' +')';
        }
        }
        
        if(EngagementRevs !=''){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Engagement_Review_Team_Experience__c includes '+'('+'\''+ EngagementRevs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Contact__r.Engagement_Review_Team_Experience__c includes '+'('+'\''+ EngagementRevs + '\'' +')';
        }
        }
        
        if(selectedCountry !='None'){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Country1__c ='+'\''+ selectedCountry + '\'';
        }
        else{
         Where_Condition +=' AND Contact__r.Country1__c ='+'\''+ selectedCountry + '\'';
        }
        }
        
        if(selectedStateProvince !='None'){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.State_Province2__c ='+'\''+ selectedStateProvince + '\'';
        }
        else{
         Where_Condition +=' AND Contact__r.State_Province2__c ='+'\''+ selectedStateProvince + '\'';
        }
        }
        
    /*    if(selectedPosition !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Position__c ='+'\''+ selectedPosition + '\'';
        }
        else{
         Where_Condition +=' AND Contact__r.Position__c ='+'\''+ selectedPosition + '\'';
        }
        }   */
        
        if(selectedEleotCertified !='None'){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.I_am_eleot_2_0_certified__c ='+'\''+ selectedEleotCertified + '\'';
        }
        else{
         Where_Condition +=' AND Contact__r.I_am_eleot_2_0_certified__c ='+'\''+ selectedEleotCertified + '\'';
        }
        }
        
      /*  if(selectedHighDegree !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Highest_Degree__c ='+'\''+ selectedHighDegree + '\'';
        }
        else{
         Where_Condition +=' AND Contact__r.Highest_Degree__c ='+'\''+ selectedHighDegree + '\'';
        }
        }   */
        
        if(selectedExperienceAdvancedOptions !='None'){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Experence_AdvancED__c ='+'\''+ selectedExperienceAdvancedOptions + '\'';
        }
        else{
         Where_Condition +=' AND Contact__r.Experence_AdvancED__c ='+'\''+ selectedExperienceAdvancedOptions + '\'';
        }
        }
        
        if(selectedAvailable !='None'){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Availability__c ='+'\''+ selectedAvailable + '\'';
        }
        else{
         Where_Condition +=' AND Contact__r.Availability__c ='+'\''+ selectedAvailable + '\'';
        }
        }
        
        if(selectedEmployStatus !='None'){
        Selected=true;
        if(Once){
        Once=false;
         Where_Condition='where Contact__r.Employment_status__c ='+'\''+ selectedEmployStatus + '\'';
        }
        else{
         Where_Condition +=' AND Contact__r.Employment_status__c ='+'\''+ selectedEmployStatus + '\'';
        }
        }
        
        
        if(selectedCertType !='None'){
        Selected=true;
        
            if(Where_Condition == '' && Where_Condition_Certification==''){
         Where_Condition_Certification='where Certifications_Type__c ='+'\''+ selectedCertType + '\'';
        }
        else{
        if(Where_Condition_Certification=='' && Where_Condition!=''){
         Where_Condition_Certification=Where_Condition;
        }
         Where_Condition_Certification +=' AND Certifications_Type__c ='+'\''+ selectedCertType + '\'';
        }

        }
        
        if(selectedCertType !='None'){
        Cert=true;
        Selected=true;
        Query='';
        total_size=0;
        conListWithCertificationTotal.clear();
         if(Where_Condition_Certification !=''){
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Certification__c '+Where_Condition_Certification+' AND Contact__r.Volunteer__c=true limit 500';
        }
         system.debug('--------query------'+Query);
        certification=true;
        if(Query!=''){
        conListWithCertificationTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithCertificationTotalResult.clear();
        for(Integer i=0;i<conListWithCertificationTotal.size();i++){
        if(conIdsSet.add(conListWithCertificationTotal[i].Contact__c)){
        conListWithCertificationTotalResult.add(conListWithCertificationTotal[i]);
        }
        }
        
        }
        total_size=conListWithCertificationTotalResult.size();
        }
        
        if(conListWithCertificationTotal.size()>0){
        for(Certification__c cert:conListWithCertificationTotal){
        conIds.add(cert.Contact__c);
        }
        }
        

if((StartDate != Null && EndDate != Null) || ReviewId!=null){

       if(ReviewId!=null){
        Engagement__c engage=new Engagement__c();
        engage=[Select id,Start_Date__c,End_Date__c from Engagement__c where id=:ReviewId limit 1];
        
        StartDate=(engage.Start_Date__c);
        EndDate=(engage.End_Date__c);
        }

         Integer StartMon=StartDate.month();
         String StartMonth;
         String StartDay;
         if(StartMon<10){
         StartMonth = 0 + string.valueOf(StartMon);
         }
         else{
         StartMonth=String.valueOf(StartMon);
         }
         Integer StartDays=StartDate.day();
         if(StartDays<10){
         StartDay = 0 + string.valueOf(StartDays);
         }
         else{
         StartDay=String.valueOf(StartDays);
         }
         
         
         Integer EndMon=EndDate.month();
         String EndMonth;
         String EndDay;
         if(EndMon<10){
         EndMonth = 0 + string.valueOf(EndMon);
         }
          else{
         EndMonth=String.valueOf(EndMon);
         }
         Integer EndDays=EndDate.day();
         if(EndDays<10){
         EndDay = 0 + string.valueOf(EndDays);
         }
          else{
         EndDay=String.valueOf(EndDays);
         }

       if(Where_Condition == '' && Where_Condition_Dates==''){
         Where_Condition_Dates='WHERE ((Engagement__r.Start_Date__c <= '+StartDate.year()+'-'+StartMonth+'-'+StartDay;
         Where_Condition_Dates+=' AND Engagement__r.End_Date__c >= '+StartDate.year()+'-'+StartMonth+'-'+StartDay+')';
         Where_Condition_Dates+=' OR ( Engagement__r.Start_Date__c <= '+EndDate.year()+'-'+EndMonth+'-'+EndDay;
         Where_Condition_Dates+=' AND Engagement__r.End_Date__c >= '+EndDate.year()+'-'+EndMonth+'-'+EndDay+'))';
        }
        else{
        if(Where_Condition_Dates=='' && Where_Condition!=''){
         Where_Condition_Dates=Where_Condition;
        }
         Where_Condition_Dates+=' AND ((Engagement__r.Start_Date__c <= '+StartDate.year()+'-'+StartMonth+'-'+StartDay;
         Where_Condition_Dates+=' AND Engagement__r.End_Date__c >= '+StartDate.year()+'-'+StartMonth+'-'+StartDay+')';
         Where_Condition_Dates+=' OR ( Engagement__r.Start_Date__c <= '+EndDate.year()+'-'+EndMonth+'-'+EndDay;
         Where_Condition_Dates+=' AND Engagement__r.End_Date__c >= '+EndDate.year()+'-'+EndMonth+'-'+EndDay+'))';
        }
}


        
      
        
         if(selectedAssignmentRole != 'None'){
         Cert=false;
         Selected=true;
        if(Where_Condition == '' && Where_Condition_Assignment==''){
         Where_Condition_Assignment='where Role__c ='+'\''+ selectedAssignmentRole + '\'';
        }
        else{
        if(Where_Condition_Assignment=='' && Where_Condition!=''){
         Where_Condition_Assignment=Where_Condition;
        }
         Where_Condition_Assignment +=' AND Role__c ='+'\''+ selectedAssignmentRole + '\'';
        }
       
        }
        
        
        if(selectedAssignmentRole !='None' && selectedCertType =='None'){
        Selected=true;
        Query='';
        total_size=0;
         if(Where_Condition_Assignment !=''){
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__r.volunteer__c=true limit 500';
        }
        system.debug('--------query------'+Query);
        Assignment=true;
        certification=false;
        conListWithAssignmentTotal.clear();
        if(Query!=''){
        conListWithAssignmentTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentTotalResult.clear();
        for(Integer i=0;i<conListWithAssignmentTotal.size();i++){
        if(conIdsSet.add(conListWithAssignmentTotal[i].Contact__c)){
        conListWithAssignmentTotalResult.add(conListWithAssignmentTotal[i]);
        }
        }
        
        }
        total_size=conListWithAssignmentTotalResult.size();
        }
        
        if(selectedAssignmentRole !='None' && selectedCertType !='None' && StartDate==null && EndDate==null){
        Query='';
        system.debug('-----Where_Condition---'+Where_Condition);
         if(Where_Condition_Assignment !=''){
         if(conIds.size()>0){
         Where_Condition_Assignment+=' AND Contact__c=:conIds';
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__r.volunteer__c=true limit 500';
        
        }
        }
        system.debug('--------query------'+Query);
        certification=false;
        Assignment=true;
        conListWithAssignmentTotal.clear();
        if(Query!=''){
        conListWithAssignmentTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentTotalResult.clear();
        for(Integer i=0;i<conListWithAssignmentTotal.size();i++){
        if(conIdsSet.add(conListWithAssignmentTotal[i].Contact__c)){
        conListWithAssignmentTotalResult.add(conListWithAssignmentTotal[i]);
        }
        }
        
        }
        total_size=conListWithAssignmentTotalResult.size();
        }
        
         if(StartDate != null && EndDate != null){
         Query='';
           system.debug('-----Where_Condition_Dates---'+Where_Condition_Dates);
        
         if(Where_Condition_Dates !=''){
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Assignment__c '+Where_Condition_Dates+' AND Contact__r.volunteer__c=true limit 500';
        }
         
        system.debug('----Query----'+Query);
        conListWithAssignmentTotal.clear();
        if(Query !=''){
        conListWithAssignmentTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentTotalResult.clear();
        for(Integer i=0;i<conListWithAssignmentTotal.size();i++){
        if(conIdsSet.add(conListWithAssignmentTotal[i].Contact__c)){
        conListWithAssignmentTotalResult.add(conListWithAssignmentTotal[i]);
        }
        }
        
        total_size=conListWithAssignmentTotalResult.size();
        }
        
        system.debug('----conListWithAssignmentTotal----'+conListWithAssignmentTotal);
        system.debug('----Assignment----'+Assignment);
        system.debug('----certification----'+certification);
         
        for(Assignment__c ass:conListWithAssignmentTotal){
        conIdswithStartandEndDate.add(ass.Contact__c);
        }
        
        Assignment=false;
        certification=false;
        
        if(selectedAssignmentRole=='None' && selectedCertType=='None'){
        Query='';
        callFromWhereCondition();
        if(conIdswithStartandEndDate.size()>0){
        if(Where_Condition!=''){
        
        Query='Select id,FirstName,City__c,State_Province2__c,Phone,Email,Availability__c from Contact '+Where_Condition+' AND id!=:conIdswithStartandEndDate AND volunteer__c=true limit 500';
         }else{
         Query='Select id,FirstName,City__c,State_Province2__c,Phone,Email,Availability__c from Contact where id!=:conIdswithStartandEndDate AND volunteer__c=true limit 500';
         }
         system.debug('----Query----'+Query);
        conListTotal.clear();
        if(Query !=''){
        conListTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListTotalResult.clear();
        for(Integer i=0;i<conListTotal.size();i++){
        if(conIdsSet.add(conListTotal[i].id)){
        conListTotalResult.add(conListTotal[i]);
        }
        }
        
        total_size=conListTotalResult.size();
        }
        }else{
        if(Where_Condition!=''){
        Query='Select id,FirstName,City__c,State_Province2__c,Phone,Email,Availability__c from Contact '+Where_Condition+' AND volunteer__c=true limit 500';
        }else{
        Query='Select id,FirstName,City__c,State_Province2__c,Phone,Email,Availability__c from Contact where volunteer__c=true limit 500';
        }
        
        system.debug('----Query----'+Query);
        conListTotal.clear();
        if(Query !=''){
        conListTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListTotalResult.clear();
        for(Integer i=0;i<conListTotal.size();i++){
        if(conIdsSet.add(conListTotal[i].id)){
        conListTotalResult.add(conListTotal[i]);
        }
        }
        
        total_size=conListTotalResult.size();
        }
        }
        }
        
        if(selectedAssignmentRole!='None' && selectedCertType=='None'){
        Query='';
        if(conIdswithStartandEndDate.size()>0){
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__c!=:conIdswithStartandEndDate AND Contact__r.volunteer__c=true limit 500';
         system.debug('----Query----'+Query);
        conListWithAssignmentTotal.clear();
        if(Query !=''){
        conListWithAssignmentTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentTotalResult.clear();
        for(Integer i=0;i<conListWithAssignmentTotal.size();i++){
        if(conIdsSet.add(conListWithAssignmentTotal[i].Contact__c)){
        conListWithAssignmentTotalResult.add(conListWithAssignmentTotal[i]);
        }
        }
        
        total_size=conListWithAssignmentTotalResult.size();
        }
        }else{
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__r.volunteer__c=true limit 500';
        system.debug('----Query----'+Query);
        conListWithAssignmentTotal.clear();
        if(Query !=''){
        conListWithAssignmentTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentTotalResult.clear();
        for(Integer i=0;i<conListWithAssignmentTotal.size();i++){
        if(conIdsSet.add(conListWithAssignmentTotal[i].Contact__c)){
        conListWithAssignmentTotalResult.add(conListWithAssignmentTotal[i]);
        }
        }
        
        total_size=conListWithAssignmentTotalResult.size();
        }
        }
        }
        
        if(selectedAssignmentRole!='None' && selectedCertType!='None'){
        Query='';
        if(conIdswithStartandEndDate.size()>0){
        if(conIds.size()>0){
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__c!=:conIdswithStartandEndDate AND Contact__r.volunteer__c=true AND Contact__c=:conIds limit 500';
         }
         
         system.debug('----Query----'+Query);
        conListWithAssignmentTotal.clear();
        if(Query !=''){
        conListWithAssignmentTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentTotalResult.clear();
        for(Integer i=0;i<conListWithAssignmentTotal.size();i++){
        if(conIdsSet.add(conListWithAssignmentTotal[i].Contact__c)){
        conListWithAssignmentTotalResult.add(conListWithAssignmentTotal[i]);
        }
        }
        
        total_size=conListWithAssignmentTotalResult.size();
        }
        
        }else{
        if(conIds.size()>0){
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__c=:conIds AND Contact__r.volunteer__c=true limit 500';
        }
        system.debug('----Query----'+Query);
        conListWithAssignmentTotal.clear();
        if(Query !=''){
        conListWithAssignmentTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentTotalResult.clear();
        for(Integer i=0;i<conListWithAssignmentTotal.size();i++){
        if(conIdsSet.add(conListWithAssignmentTotal[i].Contact__c)){
        conListWithAssignmentTotalResult.add(conListWithAssignmentTotal[i]);
        }
        }
        
        total_size=conListWithAssignmentTotalResult.size();
        system.debug('-----total_size----'+total_size);
        }
        }
        }
        
        if(selectedAssignmentRole=='None' && selectedCertType!='None'){
        Query='';
        if(conIdswithStartandEndDate.size()>0){
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Certification__c '+Where_Condition_Certification+' AND Contact__c!=:conIdswithStartandEndDate AND Contact__r.volunteer__c=:true limit 500';
         system.debug('----Query----'+Query);
        conListWithCertificationTotal.clear();
        if(Query !=''){
        conListWithCertificationTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithCertificationTotalResult.clear();
        for(Integer i=0;i<conListWithCertificationTotal.size();i++){
        if(conIdsSet.add(conListWithCertificationTotal[i].Contact__c)){
        conListWithCertificationTotalResult.add(conListWithCertificationTotal[i]);
        }
        }
        
        total_size=conListWithCertificationTotalResult.size();
        }
        }else{
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c from Certification__c '+Where_Condition_Certification+' AND Contact__r.volunteer__c=true limit 500';
        system.debug('----Query----'+Query);
        conListWithCertificationTotal.clear();
        if(Query !=''){
        conListWithCertificationTotal = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithCertificationTotalResult.clear();
        for(Integer i=0;i<conListWithCertificationTotal.size();i++){
        if(conIdsSet.add(conListWithCertificationTotal[i].Contact__c)){
        conListWithCertificationTotalResult.add(conListWithCertificationTotal[i]);
        }
        }
        
        total_size=conListWithCertificationTotalResult.size();
        }
        }
        }
        }
       
        
        }
        else{
        
        Where_Condition='';
        
        if(Types !=''){
        if(Once){
        Once=false;
         Where_Condition='where Type__c includes '+'('+'\''+ Types + '\'' +')';
        }
        else{
         Where_Condition +=' AND Type__c includes '+'('+'\''+ Types + '\'' +')';
        }
        }
        
        if(SubjectSpecils !=''){
        if(Once){
        Once=false;
         Where_Condition='where Subject_Content_Specialties__c includes '+'('+'\''+ SubjectSpecils + '\'' +')';
        }
        else{
         Where_Condition +=' AND Subject_Content_Specialties__c includes '+'('+'\''+ SubjectSpecils + '\'' +')';
        }
        }
          
         if(SelectedSpecils !=''){
        if(Once){
        Once=false;
         Where_Condition='where Specialties__c includes '+'('+'\''+ SelectedSpecils + '\'' +')';
        }
        else{
         Where_Condition +=' AND Specialties__c includes '+'('+'\''+ SelectedSpecils + '\'' +')';
        }
        }
        
         if(RegionServs !=''){
        if(Once){
        Once=false;
         Where_Condition='where Regions_where_you_have_already_served__c includes '+'('+'\''+ RegionServs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Regions_where_you_have_already_served__c includes '+'('+'\''+ RegionServs + '\'' +')';
        }
        }
        
         if(Langs !=''){
        if(Once){
        Once=false;
         Where_Condition='where Languages__c includes '+'('+'\''+ Langs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Languages__c includes '+'('+'\''+ Langs + '\'' +')';
        }
        }
        
         if(InstructExps !=''){
        if(Once){
        Once=false;
         Where_Condition='where Instructional_Experience__c includes '+'('+'\''+ InstructExps + '\'' +')';
        }
        else{
         Where_Condition +=' AND Instructional_Experience__c includes '+'('+'\''+ InstructExps + '\'' +')';
        }
        }
        
     if(Instituteworks !=''){
        if(Once){
        Once=false;
         Where_Condition='where Types_of_Institutions_where_you_have_wor__c includes '+'('+'\''+ Instituteworks + '\'' +')';
        }
        else{
         Where_Condition +=' AND Types_of_Institutions_where_you_have_wor__c includes '+'('+'\''+ Instituteworks + '\'' +')';
        }
        }
        
        if(ServedAdvances !=''){
        if(Once){
        Once=false;
         Where_Condition='where In_what_roles_have_you_served_AdvancED__c includes '+'('+'\''+ ServedAdvances + '\'' +')';
        }
        else{
         Where_Condition +=' AND In_what_roles_have_you_served_AdvancED__c includes '+'('+'\''+ ServedAdvances + '\'' +')';
        }
        }
        
        if(WouldServes !=''){
        if(Once){
        Once=false;
         Where_Condition='where I_would_like_to_serve_as__c includes '+'('+'\''+ WouldServes + '\'' +')';
        }
        else{
         Where_Condition +=' AND I_would_like_to_serve_as__c includes '+'('+'\''+ WouldServes + '\'' +')';
        }
        }
        
        if(GradeSpecials !=''){
        if(Once){
        Once=false;
         Where_Condition='where Grade_level_Speciality__c includes '+'('+'\''+ GradeSpecials + '\'' +')';
        }
        else{
         Where_Condition +=' AND Grade_level_Speciality__c includes '+'('+'\''+ GradeSpecials + '\'' +')';
        }
        }
        
        if(AccExps !=''){
        if(Once){
        Once=false;
         Where_Condition='where Accreditation_affiliation_and_experience__c includes '+'('+'\''+ AccExps + '\'' +')';
        }
        else{
         Where_Condition +=' AND Accreditation_affiliation_and_experience__c includes '+'('+'\''+ AccExps + '\'' +')';
        }
        }
        
        if(AreaSpecials !=''){
        if(Once){
        Once=false;
         Where_Condition='where Area_Specialties__c includes '+'('+'\''+ AreaSpecials + '\'' +')';
        }
        else{
         Where_Condition +=' AND Area_Specialties__c includes '+'('+'\''+ AreaSpecials + '\'' +')';
        }
        }
        
        if(EngagementRevs !=''){
        if(Once){
        Once=false;
         Where_Condition='where Engagement_Review_Team_Experience__c includes '+'('+'\''+ EngagementRevs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Engagement_Review_Team_Experience__c includes '+'('+'\''+ EngagementRevs + '\'' +')';
        }
        }
        
        if(selectedCountry !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Country1__c ='+'\''+ selectedCountry + '\'';
        }
        else{
         Where_Condition +=' AND Country1__c ='+'\''+ selectedCountry + '\'';
        }
        }
        
        if(selectedStateProvince !='None'){
        if(Once){
        Once=false;
         Where_Condition='where State_Province2__c ='+'\''+ selectedStateProvince + '\'';
        }
        else{
         Where_Condition +=' AND State_Province2__c ='+'\''+ selectedStateProvince + '\'';
        }
        }
        
     /*   if(selectedPosition !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Position__c ='+'\''+ selectedPosition + '\'';
        }
        else{
         Where_Condition +=' AND Position__c ='+'\''+ selectedPosition + '\'';
        }
        } */
        
        if(selectedEleotCertified !='None'){
        if(Once){
        Once=false;
         Where_Condition='where I_am_eleot_2_0_certified__c ='+'\''+ selectedEleotCertified + '\'';
        }
        else{
         Where_Condition +=' AND I_am_eleot_2_0_certified__c ='+'\''+ selectedEleotCertified + '\'';
        }
        }
        
     /*   if(selectedHighDegree !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Highest_Degree__c ='+'\''+ selectedHighDegree + '\'';
        }
        else{
         Where_Condition +=' AND Highest_Degree__c ='+'\''+ selectedHighDegree + '\'';
        }
        }  */
        
        if(selectedExperienceAdvancedOptions !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Experence_AdvancED__c ='+'\''+ selectedExperienceAdvancedOptions + '\'';
        }
        else{
         Where_Condition +=' AND Experence_AdvancED__c ='+'\''+ selectedExperienceAdvancedOptions + '\'';
        }
        }
        
        if(selectedAvailable !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Availability__c ='+'\''+ selectedAvailable + '\'';
        }
        else{
         Where_Condition +=' AND Availability__c ='+'\''+ selectedAvailable + '\'';
        }
        }
        
        if(selectedEmployStatus !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Employment_status__c ='+'\''+ selectedEmployStatus + '\'';
        }
        else{
         Where_Condition +=' AND Employment_status__c ='+'\''+ selectedEmployStatus + '\'';
        }
        }

         if(Where_Condition !=''){
        Query='Select id,FirstName,City__c,State_Province2__c,Phone,Email,Availability__c from Contact '+Where_Condition+' AND Volunteer__c=true limit 500';
        }else{
        Query='Select id,FirstName,City__c,State_Province2__c,Phone,Email,Availability__c from Contact where Volunteer__c=true limit 500';
        }   
         system.debug('--------query------'+Query);
         conListTotal.clear();
        conListTotal = Database.query(Query);    
        
        Set<String> conIdsSet=new Set<String>();
        conListTotalResult.clear();
        for(Integer i=0;i<conListTotal.size();i++){
        if(conIdsSet.add(conListTotal[i].id)){
        conListTotalResult.add(conListTotal[i]);
        }
        }
        
        total_size=conListTotalResult.size();
        }
        
        
       
        
     system.debug('------conList----'+conList.size());
    system.debug('------conListWithAssignment----'+conListWithAssignment);
    system.debug('------conListWithCertification----'+conListWithCertification);
   

   }
   
      public void callFromWhereCondition(){
        Boolean Once=true;
        Where_Condition='';
        Once=true;
        
        if(Types !=''){
        if(Once){
        Once=false;
         Where_Condition='where Type__c includes '+'('+'\''+ Types + '\'' +')';
        }
        else{
         Where_Condition +=' AND Type__c includes '+'('+'\''+ Types + '\'' +')';
        }
        }
        
        if(SubjectSpecils !=''){
        if(Once){
        Once=false;
         Where_Condition='where Subject_Content_Specialties__c includes '+'('+'\''+ SubjectSpecils + '\'' +')';
        }
        else{
         Where_Condition +=' AND Subject_Content_Specialties__c includes '+'('+'\''+ SubjectSpecils + '\'' +')';
        }
        }
          
         if(SelectedSpecils !=''){
        if(Once){
        Once=false;
         Where_Condition='where Specialties__c includes '+'('+'\''+ SelectedSpecils + '\'' +')';
        }
        else{
         Where_Condition +=' AND Specialties__c includes '+'('+'\''+ SelectedSpecils + '\'' +')';
        }
        }
        
         if(RegionServs !=''){
        if(Once){
        Once=false;
         Where_Condition='where Regions_where_you_have_already_served__c includes '+'('+'\''+ RegionServs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Regions_where_you_have_already_served__c includes '+'('+'\''+ RegionServs + '\'' +')';
        }
        }
        
         if(Langs !=''){
        if(Once){
        Once=false;
         Where_Condition='where Languages__c includes '+'('+'\''+ Langs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Languages__c includes '+'('+'\''+ Langs + '\'' +')';
        }
        }
        
         if(InstructExps !=''){
        if(Once){
        Once=false;
         Where_Condition='where Instructional_Experience__c includes '+'('+'\''+ InstructExps + '\'' +')';
        }
        else{
         Where_Condition +=' AND Instructional_Experience__c includes '+'('+'\''+ InstructExps + '\'' +')';
        }
        }
        
     if(Instituteworks !=''){
        if(Once){
        Once=false;
         Where_Condition='where Types_of_Institutions_where_you_have_wor__c includes '+'('+'\''+ Instituteworks + '\'' +')';
        }
        else{
         Where_Condition +=' AND Types_of_Institutions_where_you_have_wor__c includes '+'('+'\''+ Instituteworks + '\'' +')';
        }
        }
        
        if(ServedAdvances !=''){
        if(Once){
        Once=false;
         Where_Condition='where In_what_roles_have_you_served_AdvancED__c includes '+'('+'\''+ ServedAdvances + '\'' +')';
        }
        else{
         Where_Condition +=' AND In_what_roles_have_you_served_AdvancED__c includes '+'('+'\''+ ServedAdvances + '\'' +')';
        }
        }
        
        if(WouldServes !=''){
        if(Once){
        Once=false;
         Where_Condition='where I_would_like_to_serve_as__c includes '+'('+'\''+ WouldServes + '\'' +')';
        }
        else{
         Where_Condition +=' AND I_would_like_to_serve_as__c includes '+'('+'\''+ WouldServes + '\'' +')';
        }
        }
        
        if(GradeSpecials !=''){
        if(Once){
        Once=false;
         Where_Condition='where Grade_level_Speciality__c includes '+'('+'\''+ GradeSpecials + '\'' +')';
        }
        else{
         Where_Condition +=' AND Grade_level_Speciality__c includes '+'('+'\''+ GradeSpecials + '\'' +')';
        }
        }
        
        if(AccExps !=''){
        if(Once){
        Once=false;
         Where_Condition='where Accreditation_affiliation_and_experience__c includes '+'('+'\''+ AccExps + '\'' +')';
        }
        else{
         Where_Condition +=' AND Accreditation_affiliation_and_experience__c includes '+'('+'\''+ AccExps + '\'' +')';
        }
        }
        
        if(AreaSpecials !=''){
        if(Once){
        Once=false;
         Where_Condition='where Area_Specialties__c includes '+'('+'\''+ AreaSpecials + '\'' +')';
        }
        else{
         Where_Condition +=' AND Area_Specialties__c includes '+'('+'\''+ AreaSpecials + '\'' +')';
        }
        }
        
        if(EngagementRevs !=''){
        if(Once){
        Once=false;
         Where_Condition='where Engagement_Review_Team_Experience__c includes '+'('+'\''+ EngagementRevs + '\'' +')';
        }
        else{
         Where_Condition +=' AND Engagement_Review_Team_Experience__c includes '+'('+'\''+ EngagementRevs + '\'' +')';
        }
        }
        
        if(selectedCountry !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Country1__c ='+'\''+ selectedCountry + '\'';
        }
        else{
         Where_Condition +=' AND Country1__c ='+'\''+ selectedCountry + '\'';
        }
        }
        
        if(selectedStateProvince !='None'){
        if(Once){
        Once=false;
         Where_Condition='where State_Province2__c ='+'\''+ selectedStateProvince + '\'';
        }
        else{
         Where_Condition +=' AND State_Province2__c ='+'\''+ selectedStateProvince + '\'';
        }
        }
        
     /*   if(selectedPosition !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Position__c ='+'\''+ selectedPosition + '\'';
        }
        else{
         Where_Condition +=' AND Position__c ='+'\''+ selectedPosition + '\'';
        }
        } */
        
        if(selectedEleotCertified !='None'){
        if(Once){
        Once=false;
         Where_Condition='where I_am_eleot_2_0_certified__c ='+'\''+ selectedEleotCertified + '\'';
        }
        else{
         Where_Condition +=' AND I_am_eleot_2_0_certified__c ='+'\''+ selectedEleotCertified + '\'';
        }
        }
        
     /*   if(selectedHighDegree !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Highest_Degree__c ='+'\''+ selectedHighDegree + '\'';
        }
        else{
         Where_Condition +=' AND Highest_Degree__c ='+'\''+ selectedHighDegree + '\'';
        }
        }  */
        
        if(selectedExperienceAdvancedOptions !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Experence_AdvancED__c ='+'\''+ selectedExperienceAdvancedOptions + '\'';
        }
        else{
         Where_Condition +=' AND Experence_AdvancED__c ='+'\''+ selectedExperienceAdvancedOptions + '\'';
        }
        }
        
        if(selectedAvailable !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Availability__c ='+'\''+ selectedAvailable + '\'';
        }
        else{
         Where_Condition +=' AND Availability__c ='+'\''+ selectedAvailable + '\'';
        }
        }
        
        if(selectedEmployStatus !='None'){
        if(Once){
        Once=false;
         Where_Condition='where Employment_status__c ='+'\''+ selectedEmployStatus + '\'';
        }
        else{
         Where_Condition +=' AND Employment_status__c ='+'\''+ selectedEmployStatus + '\'';
        }
        }
        
   
   }
   

   public void Numbers() {
   system.debug('Entered into the method');
   
    if(selectedCertType != 'none' || selectedAssignmentRole!='none' || StartDate != null || EndDate != null || ReviewId !=null){

     if(selectedCertType !='None'){
        Cert=true;
        Selected=true;
        Query='';
        
        conListWithCertification.clear();
         if(Where_Condition_Certification !=''){
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Certification__c '+Where_Condition_Certification+' AND Contact__r.Volunteer__c=true order by Contact__r.FirstName limit :list_size offset :counter';
        }
         system.debug('--------query------'+Query);
        certification=true;
        Assignment=false;
        if(Query!=''){
        conListWithCertification = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        
        conListWithCertificationResult.clear();
        for(Integer i=0;i<conListWithCertification.size();i++){
        
        system.debug('----------------------'+conListWithCertification[i].Contact__c);
        
        if(conIdsSet.add(conListWithCertification[i].Contact__c)){
        system.debug('---------entered----'+i);
        conListWithCertificationResult.add(conListWithCertification[i]);
        }
        }
        
        
        }
        
        }
        
         if(selectedAssignmentRole !='None' && selectedCertType =='None'){
        Selected=true;
        Query='';
        
         if(Where_Condition_Assignment !=''){
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__r.volunteer__c=true order by Contact__r.FirstName limit :list_size offset :counter';
        }
        system.debug('--------query------'+Query);
        Assignment=true;
        certification=false;
        conListWithAssignment.clear();
        if(Query!=''){
        conListWithAssignment = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentResult.clear();
        for(Integer i=0;i<conListWithAssignment.size();i++){
        if(conIdsSet.add(conListWithAssignment[i].Contact__c)){
        conListWithAssignmentResult.add(conListWithAssignment[i]);
        }
        }
        
        }
        }
        
        if(selectedAssignmentRole !='None' && selectedCertType !='None' && StartDate==null && EndDate==null){
        Query='';
        system.debug('-----Where_Condition---'+Where_Condition);
         if(Where_Condition_Assignment !=''){
         if(conIds.size()>0){
         Where_Condition_Assignment+=' AND Contact__c=:conIds';
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__r.volunteer__c=true order by Contact__r.FirstName limit :list_size offset :counter';
        
        }
        }
        system.debug('--------query------'+Query);
        certification=false;
        Assignment=true;
        conListWithAssignment.clear();
        if(Query!=''){
        conListWithAssignment = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentResult.clear();
        for(Integer i=0;i<conListWithAssignment.size();i++){
        if(conIdsSet.add(conListWithAssignment[i].Contact__c)){
        conListWithAssignmentResult.add(conListWithAssignment[i]);
        }
        }
        
        }
        }
        
         if(StartDate != null && EndDate != null){
         Assignment=true;
         Certification=false;
         Query='';
           system.debug('-----Where_Condition_Dates---'+Where_Condition_Dates);
        
         if(Where_Condition_Dates !=''){
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.LastName,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Assignment__c '+Where_Condition_Dates+' AND Contact__r.volunteer__c=true order by Contact__r.FirstName limit :list_size offset :counter';
        }
         
        system.debug('----Query----'+Query);
        conListWithAssignment.clear();
        if(Query !=''){
        conListWithAssignment = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentResult.clear();
        for(Integer i=0;i<conListWithAssignment.size();i++){
        if(conIdsSet.add(conListWithAssignment[i].Contact__c)){
        conListWithAssignmentResult.add(conListWithAssignment[i]);
        }
        }
        
        }
        
        system.debug('----conListWithAssignment----'+conListWithAssignment);
        system.debug('----Assignment----'+Assignment);
        system.debug('----certification----'+certification);
         
        for(Assignment__c ass:conListWithAssignment){
        conIdswithStartandEndDate.add(ass.Contact__c);
        }
        
        Assignment=false;
        certification=false;
        
        if(selectedAssignmentRole=='None' && selectedCertType=='None'){
        Query='';
        callFromWhereCondition();
        if(conIdswithStartandEndDate.size()>0){
        if(Where_Condition!=''){
        
        Query='Select id,FirstName,LastName,City__c,State_Province2__c,Phone,Email,Availability__c,Number_of_Certifications__c,Number_of_Reviews__c from Contact '+Where_Condition+' AND id!=:conIdswithStartandEndDate AND volunteer__c=true order by FirstName limit :list_size offset :counter';
         }else{
         Query='Select id,FirstName,LastName,City__c,State_Province2__c,Phone,Email,Availability__c,Number_of_Certifications__c,Number_of_Reviews__c from Contact where id!=:conIdswithStartandEndDate AND volunteer__c=true order by FirstName limit :list_size offset :counter';
         }
         system.debug('----Query----'+Query);
        conList.clear();
        if(Query !=''){
        conList = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListResult.clear();
        for(Integer i=0;i<conList.size();i++){
        if(conIdsSet.add(conList[i].id)){
        conListResult.add(conList[i]);
        }
        }
        
        certification=false;
        assignment=false;
        }
        }else{
        if(Where_Condition!=''){
        Query='Select id,FirstName,LastName,City__c,State_Province2__c,Phone,Email,Availability__c,Number_of_Certifications__c,Number_of_Reviews__c from Contact '+Where_Condition+' AND volunteer__c=true order by FirstName limit :list_size offset :counter';
        }else{
        Query='Select id,FirstName,LastName,City__c,State_Province2__c,Phone,Email,Availability__c,Number_of_Certifications__c,Number_of_Reviews__c from Contact where volunteer__c=true order by FirstName limit :list_size offset :counter';
        }
        
        system.debug('----Query----'+Query);
        conList.clear();
        if(Query !=''){
        assignment=false;
        certification=false;
        conList = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListResult.clear();
        for(Integer i=0;i<conList.size();i++){
        if(conIdsSet.add(conList[i].id)){
        conListResult.add(conList[i]);
        }
        }
        
        }
        }
        }
        
        if(selectedAssignmentRole!='None' && selectedCertType=='None'){
        Query='';
        if(conIdswithStartandEndDate.size()>0){
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__c!=:conIdswithStartandEndDate AND Contact__r.volunteer__c=true order by Contact__r.FirstName limit :list_size offset :counter';
         system.debug('----Query----'+Query);
        conListWithAssignment.clear();
        if(Query !=''){
        conListWithAssignment = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentResult.clear();
        for(Integer i=0;i<conListWithAssignment.size();i++){
        if(conIdsSet.add(conListWithAssignment[i].Contact__c)){
        conListWithAssignmentResult.add(conListWithAssignment[i]);
        }
        }
        
        assignment=true;
        certification=false;
        }
        }else{
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__r.volunteer__c=true order by Contact__r.FirstName limit :list_size offset :counter';
        system.debug('----Query----'+Query);
        conListWithAssignment.clear();
        if(Query !=''){
        conListWithAssignment = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentResult.clear();
        for(Integer i=0;i<conListWithAssignment.size();i++){
        if(conIdsSet.add(conListWithAssignment[i].Contact__c)){
        conListWithAssignmentResult.add(conListWithAssignment[i]);
        }
        }
        
        assignment=true;
        certification=false;
        }
        }
        }
        
        if(selectedAssignmentRole!='None' && selectedCertType!='None'){
        Query='';
        if(conIdswithStartandEndDate.size()>0){
        if(conIds.size()>0){
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__c!=:conIdswithStartandEndDate AND Contact__r.volunteer__c=true AND Contact__c=:conIds order by Contact__r.FirstName limit :list_size offset :counter';
         }
         
         system.debug('----Query----'+Query);
        conListWithAssignment.clear();
        if(Query !=''){
        conListWithAssignment = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentResult.clear();
        for(Integer i=0;i<conListWithAssignment.size();i++){
        if(conIdsSet.add(conListWithAssignment[i].Contact__c)){
        conListWithAssignmentResult.add(conListWithAssignment[i]);
        }
        }
        
        assignment=true;
        certification=false;
        }
        
        }else{
        if(conIds.size()>0){
        Query='Select id,Contact__r.FirstName,Contact__c,Contact__r.LastName,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Assignment__c '+Where_Condition_Assignment+' AND Contact__c=:conIds AND Contact__r.volunteer__c=true order by Contact__r.FirstName limit :list_size offset :counter';
        }
        system.debug('----Query----'+Query);
        conListWithAssignment.clear();
        if(Query !=''){
        conListWithAssignment = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithAssignmentResult.clear();
        for(Integer i=0;i<conListWithAssignment.size();i++){
        if(conIdsSet.add(conListWithAssignment[i].Contact__c)){
        conListWithAssignmentResult.add(conListWithAssignment[i]);
        }
        }
        
        assignment=true;
        certification=false;
        }
        }
        }
        
        if(selectedAssignmentRole=='None' && selectedCertType!='None'){
        Query='';
        if(conIdswithStartandEndDate.size()>0){
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Certification__c '+Where_Condition_Certification+' AND Contact__c!=:conIdswithStartandEndDate AND Contact__r.volunteer__c=:true order by Contact__r.FirstName limit :list_size offset :counter';
         system.debug('----Query----'+Query);
        conListWithCertification.clear();
        if(Query !=''){
        conListWithCertification = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithCertificationResult.clear();
        for(Integer i=0;i<conListWithCertification.size();i++){
        if(conIdsSet.add(conListWithCertification[i].Contact__c)){
        conListWithCertificationResult.add(conListWithCertification[i]);
        }
        }
        
        certification=true;
        assignment=false;
        }
        }else{
        Query='Select id,Contact__r.FirstName,Contact__r.LastName,Contact__c,Contact__r.City__c,Contact__r.State_Province2__c,Contact__r.Phone,Contact__r.Email,Contact__r.Availability__c,Contact__r.Number_of_Certifications__c,Contact__r.Number_of_Reviews__c from Certification__c '+Where_Condition_Certification+' AND Contact__r.volunteer__c=true order by Contact__r.FirstName limit :list_size offset :counter';
        system.debug('----Query----'+Query);
        conListWithCertification.clear();
        if(Query !=''){
        conListWithCertification = Database.query(Query);
        
        Set<String> conIdsSet=new Set<String>();
        conListWithCertificationResult.clear();
        for(Integer i=0;i<conListWithCertification.size();i++){
        if(conIdsSet.add(conListWithCertification[i].Contact__c)){
        conListWithCertificationResult.add(conListWithCertification[i]);
        }
        }
        
        certification=true;
        assignment=false;
        }
        }
        }
        }
        }
        else{
        
        if(Where_Condition !=''){
        Query='Select id,FirstName,LastName,City__c,State_Province2__c,Phone,Email,Availability__c,Number_of_Certifications__c,Number_of_Reviews__c from Contact '+Where_Condition+' AND Volunteer__c=true limit 500';
        }else{
        Query='Select id,FirstName,LastName,City__c,State_Province2__c,Phone,Email,Availability__c,Number_of_Certifications__c,Number_of_Reviews__c from Contact where Volunteer__c=true limit 500';
        }   
         system.debug('--------query------'+Query);
         conList.clear();
        conList = Database.query(Query);    
        
        Set<String> conIdsSet=new Set<String>();
        conListResult.clear();
        for(Integer i=0;i<conList.size();i++){
        if(conIdsSet.add(conList[i].id)){
        conListResult.add(conList[i]);
        }
        }
        
        }
        
    
   if((conListWithCertification.size() == 0 && certification==true) || (conListWithAssignment.size() ==0 && assignment==true) || (conList.size()==0 && assignment==false && certification==false)){
       apexPages.addmessage(new apexpages.message(apexpages.severity.Error, 'Sory, no results returned with matching string..'));
       return;
   }
   
    selectedSubjectSpeciality.clear();
      selectedRegionServed.clear();
      selectedLanguages.clear();
      selectedInstructionalExp.clear();
      selectedTypesInstitutionWorked.clear();
      selectedWouldServe.clear();
      selectedGradeSpeciality.clear();
      selectedAccExperience.clear();
      selectedAreaSpecialty.clear();
      selectedEngagementRevExp.clear();
   
   
   }
 
      
  
  
   

   public PageReference Beginning() { //user clicked beginning
      counter = 0;
       Numbers();
       PageNumber();
      return null;
   }

   public PageReference Previous() { //user clicked previous button
      counter -= list_size;
       Numbers();
       PageNumber();
      return null;
     
   }

   public PageReference Next() { //user clicked next button
      counter += list_size;
       Numbers();
       PageNumber();
      return null;
   }

   public PageReference End() { //user clicked end
      counter = total_size - math.mod(total_size, list_size);
       Numbers();
       PageNumber();
      return null;
   }

   public Boolean getDisablePrevious() { 
      //this will disable the previous and beginning buttons
      if (counter>0) return false; else return true;
   }

   public Boolean getDisableNext() { //this will disable the next and end buttons
      if (counter + list_size < total_size) return false; else return true;
   }

   public Integer getTotal_size() {
      return total_size;
   }

   public void PageNumber() {
   system.debug('----counter----'+counter);
   PageNumb=counter/list_size + 1;
     system.debug('----PageNumber----'+PageNumb);
     
   }

   public Integer getTotalPages() {
      if (math.mod(total_size, list_size) > 0) {
         return total_size/list_size + 1;
      } else {
         return (total_size/list_size);
      }
   }
   
   public void SubmitButton(){
     Where_Condition_Certification='';
       Where_Condition='';
       Where_Condition_Assignment='';
       Where_Condition_Dates='';
       conList.clear();
       conListWithAssignment.clear();
       conListWithAssignmentTotal.clear();
       conListTotal.clear();
       conListWithCertification.clear();
       conListWithCertificationTotal.clear();
       conids.clear();
       conIdswithStartandEndDate.clear();
       assignment=false;
      certification=false;
      Query='';
      
 
       this.ass = (Assignment__c)stdController.getRecord();
       ReviewId=ass.Engagement__c;
     system.debug('----------------------this.ass-------------'+this.ass);
   counter=0;  //keeps track of the offset
   list_size=100;
   PageNumb=0;
   total_size=0;
   Selected=false;
   Cert=false;
   Result=false;
   
    system.debug('----counter----'+counter);
   totalSize();
   PageNumber();
  
    Numbers();
  }
  
   
}