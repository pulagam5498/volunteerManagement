@RestResource(urlMapping='/Certification')
global without sharing class CertificationService {
	@HttpPost
    global static List<Entity.Certification> doPost(List<Entity.Certification> certifications) {
        Set<Integer> CertificateIDs = new Set<Integer>();
        for (Entity.Certification certificate : certifications) {
            CertificateIDs.add(certificate.CertificateId);
        }
        
        Map<Integer, Id> mapCertifications = ServiceHelper.getCertificates(CertificateIDs);
        
        List<Certification__c> newCertificates = new List<Certification__c>();
        
        for (Entity.Certification certificate : certifications) {
            Certification__c newCertificate = new Certification__c();
            
            newCertificate.Certificate_Id__c = certificate.CertificateId;
            newCertificate.Contact__c = certificate.sfUserId;
            newCertificate.Date_Assigned__c = certificate.DateAssigned;
            newCertificate.Date_Valid_To__c = certificate.DateTo;
            newCertificate.Date_Valid_From__c = certificate.DateFrom;
            newCertificate.Certifications_Type__c = certificate.CertificateName;
            
            newCertificates.add(newCertificate);
            
            certificate.error = 'NONE';
        }
        
        List<Database.UpsertResult> results = Database.upsert(newCertificates, Certification__c.Certificate_Id__c);
        
        for (Integer i = 0; i < results.size(); i++) {
            Entity.Certification certificate = certifications.get(i);
            Database.UpsertResult result = results.get(i);
            
            if (!result.isSuccess()) {
                certificate.error = result.getErrors()[0].getMessage();
            }
            else {
                certificate.error = 'OK';
                certificate.sfCertificationId = result.getId();
            }
        }
        
        return certifications;
    }
}