public with sharing class PlacementTriggerService {

    public static void handleApplicationUpdate(
        List<Application__c> newApplications,
        Map<Id, Application__c> oldMap
    ) {
        for (Application__c app : newApplications) {

            Application__c oldApp = oldMap.get(app.Id);

            if (app.Status__c == 'Selected' &&
                oldApp.Status__c != 'Selected') {

                System.debug('Application selected successfully');
            }
        }
    }
}