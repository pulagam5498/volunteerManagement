@RestResource(urlMapping='/Assignment')
global without sharing class AssignmentService {
	@HttpPost
    global static List<Entity.Assignment> doPost(List<Entity.Assignment> assignments) {
        Set<Integer> ReviewIDs = new Set<Integer>();
        for (Entity.Assignment assignment : assignments) {
            ReviewIDs.add(assignment.ReviewId);
        }
        
        Map<Integer, Id> engagements = ServiceHelper.getEngagements(ReviewIDs);
        
        List<Assignment__c> newAssignments = new List<Assignment__c>();
        
        for (Entity.Assignment assignment : assignments) {
            Assignment__c newAssignment = new Assignment__c();
            
            newAssignment.IsActive__c = assignment.isActive;
            newAssignment.Role__c = assignment.Role;
            newAssignment.Contact__c = assignment.sfUserId;
            newAssignment.Engagement__c = engagements.get(assignment.ReviewId);
            
            newAssignments.add(newAssignment);
            
            assignment.error = 'NONE';
        }
        
        List<Database.SaveResult> results = Database.insert(newAssignments);
        
        for (Integer i = 0; i < results.size(); i++) {
            Entity.Assignment assignment = assignments.get(i);
            Database.SaveResult result = results.get(i);
            
            if (!result.isSuccess()) {
                assignment.error = result.getErrors()[0].getMessage();
            }
            else {
                assignment.error = 'OK';
                assignment.sfAssignmentId = result.getId();
            }
        }
        
        return assignments;
    }
}