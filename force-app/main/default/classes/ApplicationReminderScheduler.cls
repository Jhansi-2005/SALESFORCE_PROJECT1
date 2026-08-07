global class ApplicationReminderScheduler implements Schedulable {


    global void execute(SchedulableContext sc) {


        List<Application__c> applications = [
            SELECT Id, Status__c
            FROM Application__c
        ];


        for(Application__c app : applications){

            System.debug(
                'Checking Application: ' + app.Id
            );

        }


    }

}