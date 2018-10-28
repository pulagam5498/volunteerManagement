public class ServiceHelper {
    public static Map<Integer, Id> getUsers(Set<Integer> UserIDs) {
        Map<Integer, Id> mapContacts = new Map<Integer, Id>();
        for (Contact c : [SELECT Id, User_Id__c FROM Contact WHERE (User_Id__c IN :UserIDs)]) {
            if (c.User_Id__c != null) {
                mapContacts.put(Integer.valueOf(c.User_Id__c), c.Id);
            }
        }
        return mapContacts;
    }
    
    public static Map<Integer, Id> getEngagements(Integer EngagementIDs) {
        Map<Integer, Id> mapEngagements = new Map<Integer, Id>();
        for (Engagement__c c : [SELECT Id, Review_Id__c FROM Engagement__c WHERE (Review_Id__c =:EngagementIDs)]) {
            if (c.Review_Id__c != null) {
                mapEngagements.put(Integer.valueOf(c.Review_Id__c), c.Id);
            }
        }
        return mapEngagements;
    }
    
    
      public static Map<Integer, Id> getEngagements(set<Integer> EngagementIDs) {
        Map<Integer, Id> mapEngagements = new Map<Integer, Id>();
        for (Engagement__c c : [SELECT Id, Review_Id__c FROM Engagement__c WHERE (Review_Id__c IN :EngagementIDs)]) {
            if (c.Review_Id__c != null) {
                mapEngagements.put(Integer.valueOf(c.Review_Id__c), c.Id);
            }
        }
        return mapEngagements;
    }
    
    public static Map<Integer, Id> getCertificates(set<Integer> CertificateIDs) {
        Map<Integer, Id> mapCertificates = new Map<Integer, Id>();
        for (Certification__c c : [SELECT Id, Certificate_Id__c FROM Certification__c WHERE (Certificate_Id__c IN :CertificateIDs)]) {
            if (c.Certificate_Id__c != null) {
                mapCertificates.put(Integer.valueOf(c.Certificate_Id__c), c.Id);
            }
        }
        return mapCertificates;
    }
    
    public static Map<String, Id> getCustomers(Set<String> CustomerIDs) {
        Map<String, Id> mapCustomers = new Map<String, Id>();
        for (Account a : [SELECT Id FROM Account WHERE (Customer_Id__c IN :CustomerIDs)]) {
            if (a.Customer_Id__c != null) {
                mapCustomers.put(a.Customer_Id__c, a.Id);
            }
        }
        return mapCustomers;
    }
}