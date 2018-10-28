public class CreateRenewalOpportunitiesController {
    public List<cOpUnit> cOpUnits { get; set; }
    public SelectOption[] selectOptions { get; private set; }
    public SelectOption[] selectCountryOptions { get; private set; }
    public String option { get; set; }
    public String countryOption { get; set; } 
        
    public CreateRenewalOpportunitiesController(){
        String[] dropdownValues = new String[]{'All','School','District'};
        this.selectOptions = new SelectOption[]{};
        for(String s : dropdownValues)
        {
            this.selectOptions.add(new SelectOption(s,s));
        }
    	
        dropdownValues = new String[]{'All','Domestic','International'};
        this.selectCountryOptions = new SelectOption[]{};
        for(String s : dropdownValues)
        {
            this.selectCountryOptions.add(new SelectOption(s,s));
        }
        
    }
    
    public List<cOpUnit> getOperatingUnits()
    {
        if(cOpUnits == null)
        {
            cOpUnits = new List<cOpUnit>();
            for(Operating_Unit__c ou : [SELECT Id, Name, Account__c, Active__c, Region__c, Unit_Number__c 
										FROM Operating_Unit__c
										WHERE Active__c = TRUE
										ORDER BY Name])
            {
                	cOpUnits.add(new cOpUnit(ou, false));
            }
        }
        
        return cOpUnits;
	}
    
    public PageReference processOpUnitSelection()
    {
        Set<Id> opUnitIds = new Set<Id>();
        for(cOpUnit ou : cOpUnits)
        {
            if(ou.selected)
            {
                opUnitIds.add(ou.opUnit.Id);
            }
        }
        CreateRenewalOpportunitiesBatch oppBatch = new CreateRenewalOpportunitiesBatch(option, countryOption, opUnitIds);
        database.executeBatch(oppBatch, 10);
        
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'The create renewal opportunities process has been started. This may take several minutes.'));
        return null;
    }

    public PageReference clearRenewalProcessedFlag()
    {
        Set<Id> opUnitIds = new Set<Id>();
        for(cOpUnit ou : cOpUnits)
        {
            if(ou.selected)
            {
                opUnitIds.add(ou.opUnit.Id);
            }
        }
        ClearRenewalProcessFlagBatch oppBatch = new ClearRenewalProcessFlagBatch(option, opUnitIds);
        database.executeBatch(oppBatch, 10);
        
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Clearing Renewal Processed Flag. This may take several minutes.'));
        return null;
    }
    
    public PageReference selectAllOpUnit()
    {
        for(cOpUnit ou : cOpUnits)
        {
            ou.selected = true;
        }
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'All Operating Units Selected.'));
        return null;
    }
    
    public PageReference unselectAllOpUnit()
    {
        for(cOpUnit ou : cOpUnits)
        {
            ou.selected = false;
        }
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'All Operating Units Unselected.'));
        return null;
    }
    
    public PageReference createRenewalOrders()
    {
        if(cOpUnits == null)
        {
            return null;
        }
        Set<Id> opUnitIds = new Set<Id>();
        for(cOpUnit ou : cOpUnits)
        {
            if(ou.selected)
            {
                opUnitIds.add(ou.opUnit.Id);
            }
        }
        if(opUnitIds.size() == 0)
        {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'No operating units selected.'));
        }
        else 
        {
            CreateRenewalOrdersBatch createOrders = new CreateRenewalOrdersBatch(opUnitIds);
        	Database.executeBatch(createOrders, 10);
        	ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Generating Renewal Orders. This may take several minutes.'));
        }
            
        return null;
    }
        
    
    public PageReference deleteRenewalOppty()
    {
        //Flow.Interview.Opportunity_Delete_All_Renewal_Opportunities deleteOppty = new Flow.Interview.Opportunity_Delete_All_Renewal_Opportunities(new Map<String, Object>());
        //deleteOppty.start();
        DeleteRenewalOpportunitiesBatch deleteOpp = new DeleteRenewalOpportunitiesBatch();
        Database.executeBatch(deleteOpp, 10);
        
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Delete all renewal opportunities batch process has started. This may take several minutes.'));
        return null;
    }
    
    public class cOpUnit {
        public Operating_Unit__c opUnit { get; set; }
        public Boolean selected { get; set;}
        
        public cOpUnit(Operating_Unit__c ou, Boolean checked)
        {
            opUnit = ou;
            selected = checked;
        }
    }

}