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
            }
        }

        // Stop if no students need updating
        if (studentIds.isEmpty()) {
            return;
        }

        // Query Students once
        List<Student__c> studentsToUpdate = [
            SELECT Id, Placement_Status__c
            FROM Student__c
            WHERE Id IN :studentIds
        ];

        // Update in memory
        for (Student__c student : studentsToUpdate) {
            student.Placement_Status__c = 'Placed';
        }

        // One DML update
        update studentsToUpdate;
    }
}