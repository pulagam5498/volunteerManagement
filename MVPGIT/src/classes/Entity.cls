global class Entity {
    global class Review {
        global String ReviewName {get; set;}
        global Integer ReviewId {get; set;}
        global String ReviewType {get; set;}
        global String ProtocolName {get; set;}
        global String ProtocolId {get; set;}
        global String ProtocolType {get; set;}
        global Id sfCustomerId {get; set;}
        
        global Boolean isActive {get; set;}
        global Date StartDate {get; set;}
        global Date EndDate {get; set;}
        global Date ConfirmDate {get; set;}
        
        global String error {get; set;}
        
        global String CustomerNumber {get; set;}
        global Integer UserId {get; set;}
        
        global Id sfReviewId {get; set;}
    }
    
    global class Assignment {
        global Id sfUserId {get; set;}
        global Integer ReviewId {get; set;}
        global String Email {get; set;}
        global String Role {get; set;}
        global Boolean isActive {get; set;}
        
        global String error {get; set;}
        
        global Integer eUserId {get; set;}
        
        global Id sfAssignmentId {get; set;}
    }
    
    global class Certification {
        global Id sfUserId {get; set;}
        global String Email {get; set;}
        
        global Integer CertificateId {get; set;}
        global String CertificateName {get; set;}
        global Date DateFrom {get; set;}
        global Date DateTo {get; set;}
        global Date DateAssigned {get; set;}
        
        global Integer eUserId {get; set;}
        
        global String error {get; set;}
        
        global Id sfCertificationId {get; set;}
    }
    
    global class User {
        global Id sfCustomerId {get; set;}
        global Id sfUserId {get; set;}
        
        global Boolean isVolunteer {get; set;}
        global String Email {get; set;}
        global String FirstName {get; set;}
        global String LastName {get; set;}
        
        global String error {get; set;}
    }
}