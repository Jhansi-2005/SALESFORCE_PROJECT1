public class OfferPostProcessingJob implements Queueable {

    private Id applicationId;


    public OfferPostProcessingJob(Id appId){

        this.applicationId = appId;

    }


    public void execute(QueueableContext context){


        Application__c app = [
            SELECT Id, Status__c
            FROM Application__c
            WHERE Id = :applicationId
            LIMIT 1
        ];


        System.debug(
            'Processing offer for Application: ' + app.Id
        );


    }

}