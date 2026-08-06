trigger ApplicationTrigger on Application__c (before insert, after update) {

    if (Trigger.isBefore && Trigger.isInsert) {
        ApplicationService service = new ApplicationService();

        // Placeholder call for future validation
        for (Application__c app : Trigger.new) {
            service.submitApplication(app.Student__c, app.Job__c);
        }
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        PlacementTriggerService.handleApplicationUpdate(
            Trigger.new,
            Trigger.oldMap
        );
    }
}