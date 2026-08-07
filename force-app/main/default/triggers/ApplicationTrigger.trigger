trigger ApplicationTrigger on Application__c (before insert, after update) {

    if (Trigger.isBefore && Trigger.isInsert) {
        ApplicationService service = new ApplicationService();
        service.validateDuplicateApplication(Trigger.new);
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        PlacementTriggerService.handleApplicationUpdate(
            Trigger.new,
            Trigger.oldMap
        );
    }
}