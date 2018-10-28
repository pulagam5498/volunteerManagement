public class OpportunityInstitutionsListController {
    public string OpptyId { get; set; }
    public string OpptyAccountId {get; set; }
    public List<cOpptyInstitution> opptyInstitutionList { get; set; } 
    
    public OpportunityInstitutionsListController()
    {
        OpptyId = ApexPages.currentPage().getParameters().get('OpptyId');
        OpptyAccountId = ApexPages.currentPage().getParameters().get('OpptyAccountId');
    }
    
    public List<cOpptyInstitution> getOpptyInstitutionObjects()
    {
        if(opptyInstitutionList == null)
        {
            opptyInstitutionList = new List<cOpptyInstitution>();
            Account a = [SELECT Id, Name, Type, Billing_NAV_Company__c, (SELECT Id, Name, Account__c, Opportunity__c 
                                                 FROM Opportunity_Institutions__r
                                                 WHERE Opportunity__c = :OpptyId)
                             FROM Account
                             WHERE Id = :OpptyAccountId AND Active__c = TRUE];
            List<Opportunity_Institutions__c> opptyInstitutions = a.Opportunity_Institutions__r;
            opptyInstitutionList.Add(new cOpptyInstitution(a, opptyInstitutions));
            Map<Id, Account> accMap = new Map<Id, Account>();
            accMap.put(a.Id, a);
            getInstitutionHierarchy(accMap);
        }
        return opptyInstitutionList;
    }
    
    public void getInstitutionHierarchy(Map<Id, Account> accountMap)
    {
        Map<Id, Account> accMap = new Map<Id, Account>();        
        /*for(Account a : [SELECT Id, Name, Type, (SELECT Id, Name, Account__c, Opportunity__c 
                                                 FROM Opportunity_Institutions__r
                                                 WHERE Opportunity__c = :OpptyId)
                         FROM Account
                         WHERE ParentId = :accountMap.keySet()])*/
       for(Account a : [SELECT Id, Name, Type, Billing_NAV_Company__c, (SELECT Id, Name, Account__c, Opportunity__c 
                                                 FROM Opportunity_Institutions__r
                                                 WHERE Opportunity__c = :OpptyId)
                         FROM Account
                         WHERE Accreditation_Billing_Account__c = :accountMap.keySet() AND Active__c = TRUE AND Accreditation_Annual__c = TRUE])
        {
            List<Opportunity_Institutions__c> opptyInstitutions = a.Opportunity_Institutions__r;
            opptyInstitutionList.Add(new cOpptyInstitution(a, opptyInstitutions));
            accMap.put(a.Id, a);
        }
        if(accMap.isEmpty() == false)
        {
            getInstitutionHierarchy(accMap);
        }
    }
    
    public PageReference processSelection()
    {
        List<Opportunity_Institutions__c> insertOpptyInst = new List<Opportunity_Institutions__c>();
        List<Opportunity_Institutions__c> deleteOpptyInst = new List<Opportunity_Institutions__c>();
        for(cOpptyInstitution cOpptyInst : opptyInstitutionList)
        {
            if(cOpptyInst.selected == true && cOpptyInst.oppInsts.size() == 0)
            {
                insertOpptyInst.add(new Opportunity_Institutions__c(Account__c = cOpptyInst.account.Id, Opportunity__c = OpptyId, Region_Type__c = cOpptyInst.account.Billing_NAV_Company__c));
            }
            else if(cOpptyInst.selected == false && cOpptyInst.oppInsts.size() != 0)
            {
                for(Opportunity_Institutions__c oi : cOpptyInst.oppInsts)
                {
                    deleteOpptyInst.add(oi);
                }
            }
        }
        insert insertOpptyInst;
        delete deleteOpptyInst;
        opptyInstitutionList = null;
        
        PageReference pr = new PageReference('/' + OpptyId);
        pr.setRedirect(true);
        return pr;
    }
    
    public PageReference selectAll()
    {
        for(cOpptyInstitution obj : opptyInstitutionList)
        {
            obj.selected = true;
        }
        return null;
    }
    
    public PageReference unselectAll()
    {
        for(cOpptyInstitution obj : opptyInstitutionList)
        {
            obj.selected = false;
        }
        return null;
    }
    
    public PageReference cancel()
    {
        PageReference pr = new PageReference('/' + OpptyId);
        pr.setRedirect(true);
        return pr;
    }
    
    public class cOpptyInstitution {
        public Account account {get; set;}
        public List<Opportunity_Institutions__c> oppInsts { get; set; }
        public Boolean selected {get; set;}
        
        public cOpptyInstitution(Account a, List<Opportunity_Institutions__c> oi)
        {
            account = a;
            oppInsts = oi;
            if(oi.size() == 0)
            {
                selected = false;
            }
            else
            {
                selected = true;    
            }   
        }
    }

}