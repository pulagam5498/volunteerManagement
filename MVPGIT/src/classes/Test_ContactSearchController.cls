@istest
public class Test_ContactSearchController  {

static testmethod void TestContactSearchController (){

   Assignment__c Assign=new Assignment__c();
     ApexPages.StandardController sc = new ApexPages.StandardController(Assign);
        ContactSearchController testConPlan = new ContactSearchController(sc);
      testConPlan.SubmitButton();
      
      
        ApexPages.StandardController sc1 = new ApexPages.StandardController(Assign);
        ContactSearchController testConPlan1 = new ContactSearchController(sc1);
        testConPlan1.selectedcertType='Early Learning';
      testConPlan1.SubmitButton();
      testConPlan1.Beginning();
      testConPlan1.Next();
      testConPlan1.End();
      testConPlan1.getDisablePrevious();
      testConPlan1.getTotalPages();
      
      testConPlan1.selectedAssignmentRole='TeamLead';
      testConPlan1.selectedcertType='None';
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
       testConPlan1.SubmitButton();
       
       List<String> TypeMulti=new List<String>();
       TypeMulti.add('Type1');
       TypeMulti.add('Type2');
       
       
        testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
       testConPlan1.selectedTypeMulti.addAll(TypeMulti);
        testConPlan1.selectedSubjectSpeciality.addAll(TypeMulti);
        testConPlan1.selectedSpeciality.addAll(TypeMulti);
        testConPlan1.selectedRegionServed.addAll(TypeMulti);
        testConPlan1.selectedLanguages.addAll(TypeMulti);
        testConPlan1.selectedInstructionalExp.addAll(TypeMulti);
        testConPlan1.selectedRolesServedAdvanceOptions.addAll(TypeMulti);
        testConPlan1.selectedWouldServe.addAll(TypeMulti);
        testConPlan1.selectedGradeSpeciality.addAll(TypeMulti);
        testConPlan1.selectedAccExperience.addAll(TypeMulti);
        testConPlan1.selectedTypesInstitutionWorked.addAll(TypeMulti);
        testConPlan1.selectedAreaSpecialty.addAll(TypeMulti);
        testConPlan1.selectedEngagementRevExp.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
       testConPlan1.selectedAssignmentRole='TeamLead';
      testConPlan1.selectedcertType='eleot 2.0';
        testConPlan1.SubmitButton();
        
        testConPlan1.selectedAssignmentRole='TeamLead';
      testConPlan1.selectedcertType='None';
      testConPlan1.selectedTypeMulti.clear();
        testConPlan1.SubmitButton();
        
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='eleot 2.0'; 
        testConPlan1.SubmitButton();
        
       testConPlan1.getDisableNext();
       testConPlan1.getTotal_size();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedSubjectSpeciality.addAll(TypeMulti);
        testConPlan1.selectedEngagementRevExp.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
       testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedRegionServed.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
        testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
       testConPlan1.selectedTypeMulti.clear();
        testConPlan1.selectedSubjectSpeciality.clear();
        testConPlan1.selectedSpeciality.clear();
        testConPlan1.selectedRegionServed.addAll(TypeMulti);
        testConPlan1.selectedLanguages.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
        testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
       testConPlan1.selectedTypeMulti.clear();
        testConPlan1.selectedSubjectSpeciality.clear();
        testConPlan1.selectedSpeciality.clear();
        testConPlan1.selectedRegionServed.clear();
        testConPlan1.selectedLanguages.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedInstructionalExp.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedRolesServedAdvanceOptions.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
       testConPlan1.selectedTypeMulti.clear();
        testConPlan1.selectedSubjectSpeciality.clear();
        testConPlan1.selectedSpeciality.clear();
        testConPlan1.selectedRegionServed.clear();
        testConPlan1.selectedLanguages.clear();
        testConPlan1.selectedInstructionalExp.clear();
        testConPlan1.selectedRolesServedAdvanceOptions.clear();
        testConPlan1.selectedWouldServe.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedGradeSpeciality.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedAccExperience.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedTypesInstitutionWorked.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedAreaSpecialty.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
       
         testConPlan1.selectedAssignmentRole='None';
      testConPlan1.selectedcertType='None';
        testConPlan1.selectedEngagementRevExp.addAll(TypeMulti);
        testConPlan1.StartDate=Date.parse('11/20/2010');
      testConPlan1.EndDate=Date.parse('11/20/2010');
       testConPlan1.SubmitButton();
      
}

}