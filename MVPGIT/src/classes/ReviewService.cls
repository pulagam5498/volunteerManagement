@RestResource(urlMapping='/Review/*')
global without sharing class ReviewService {
    @HttpPost
    global static List<Entity.Review> doPost(List<Entity.Review> reviews) {
        Set<Integer> ReviewIDs = new Set<Integer>();
        for (Entity.Review review : reviews) {
            ReviewIDs.add(review.ReviewId);
        }
        
        Map<Integer, Id> engagements = ServiceHelper.getEngagements(ReviewIDs);
        
        List<Engagement__c> newReviews = new List<Engagement__c>();
        
        for (Entity.Review review : reviews) {
            Engagement__c newReview = new Engagement__c();
            
            newReview.Review_Id__c = review.ReviewId;
            newReview.Account__c = review.sfCustomerId;
            newReview.Start_Date__c = review.StartDate;
            newReview.End_Date__c = review.EndDate;
            newReview.Protocol_Name__c = review.ProtocolName;
            newReview.Protocol_Type__c = review.ProtocolType;
            newReview.Confirm_Date__c = review.ConfirmDate;
            newReview.Review_Name__c = review.ReviewName;
            newReview.review_type__c = 'Engagement Review';
            
            newReviews.add(newReview);
            
            review.error = 'NONE';
        }
        
        List<Database.UpsertResult> results = Database.upsert(newReviews, Engagement__c.Review_Id__c);
        
        for (Integer i = 0; i < results.size(); i++) {
            Entity.Review review = reviews.get(i);
            Database.UpsertResult result = results.get(i);
            
            if (!result.isSuccess()) {
                review.error = result.getErrors()[0].getMessage();
            }
            else {
                review.error = 'OK';
                review.sfReviewId = result.getId();
            }
        }
        
        return reviews;
    }
}