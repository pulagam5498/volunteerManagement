@RestResource(urlMapping='/school_search/accounts')
global class SchoolSearch_accounts{

    public static final String queryStr = 'select Id, Name,ShippingCountry,ShippingCity,ShippingState,ShippingPostalCode,toLabel(School_Type__c),Parent.Name from Account where ';

    public class Response {
        public String whereClause {get;set;}
    }

    @HTTPPOST
    global static List<Account> do_search(){

        Response body = (Response)JSON.deserialize(RestContext.request.requestBody.toString(), SchoolSearch_accounts.Response.class);
        List<Account> result;
        System.debug(LoggingLEvel.ERROR, body);

        try{
            result = Database.query(queryStr+body.whereClause);
        }
        catch(Exception e){
            throw new SchoolSearchException(e.getMessage());
        }

        return result;
    }

    @HTTPGET
    global static Account fetchAccount(){

        Account result;

        try{

            String recordId = RestContext.request.headers.get('recordId');

            result = [
                SELECT Id, Name,Initial_Accreditation_Date__c, Actual_Org_Status__c, (select Name, Asset_Product_Name__c, Status, IsAccredited__c, RecordType.Name, Start_date__c from Assets ),ShippingCountry,ShippingCity,ShippingState,ShippingPostalCode,toLabel(School_Type__c),Parent.Name
                FROM Account
                WHERE Id =:recordId
            ];
        }
        catch(Exception e){
            throw new SchoolSearchException(e.getMessage());
        }

        return result;
    }

    public class SchoolSearchException extends Exception {}
}