public with sharing class PlacementTriggerService {

    public static void handleApplicationUpdate(
        List<Application__c> newApplications,
        Map<Id, Application__c> oldMap
    ) {

        Set<Id> studentIds = new Set<Id>();

        // Collect Student IDs whose Application status changed to Selected
        for (Application__c app : newApplications) {

            Application__c oldApp = oldMap.get(app.Id);

            if (app.Status__c == 'Selected' &&
                oldApp.Status__c != 'Selected') {

                if (app.Student__c != null) {
                    studentIds.add(app.Student__c);
                }

                // Queue the background job
                System.enqueueJob(new OfferPostProcessingJob(app.Id));
            }
        }

        if (studentIds.isEmpty()) {
            return;
        }

        List<Student__c> studentsToUpdate = [
            SELECT Id, Placement_Status__c
            FROM Student__c
            WHERE Id IN :studentIds
        ];

        for (Student__c student : studentsToUpdate) {
            student.Placement_Status__c = 'Placed';
        }

        update studentsToUpdate;
    }
}