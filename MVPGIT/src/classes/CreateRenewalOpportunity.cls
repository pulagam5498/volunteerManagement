global class CreateRenewalOpportunity implements Schedulable {
    global void execute(SchedulableContext SC)
    {
        getInstitutionsForRenewal();
    }
    
    public CreateRenewalOpportunity() {}
    
    webservice static void getInstitutionsForRenewal()
    {
        Map<String, String> billToAccounts = new Map<String, String>();
        
        for(Account a : [SELECT Accreditation_Bill_To__c FROM Account WHERE Accreditation_Annual__c = TRUE])
        {
            billToAccounts.put(a.Accreditation_Bill_To__c, a.Accreditation_Bill_To__c);
        }
        
        for(String s : billToAccounts.values())
        {
            Map<String, object> varMap = new Map<String, object>();
            varMap.put('BillToAccountId', s);
            Flow.Interview.Account_Renewal_Opportunity_Create_Renewal_Oppty createOppty = new Flow.Interview.Account_Renewal_Opportunity_Create_Renewal_Oppty(varMap);
            createOppty.start();
            varMap.clear();
        }
    }   
}