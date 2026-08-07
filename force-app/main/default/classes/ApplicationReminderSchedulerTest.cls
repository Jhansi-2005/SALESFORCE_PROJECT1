@isTest
public class ApplicationReminderSchedulerTest {


    @isTest
    static void testScheduler(){


        String cronExpression = 
        '0 0 12 * * ?';


        Test.startTest();


        System.schedule(
            'Application Reminder Job',
            cronExpression,
            new ApplicationReminderScheduler()
        );


        Test.stopTest();


    }

}