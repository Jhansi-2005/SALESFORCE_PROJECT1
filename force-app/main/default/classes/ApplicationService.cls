public with sharing class ApplicationService {

    public void validateDuplicateApplication(List<Application__c> newApplications) {
        Set<Id> studentIds = new Set<Id>();
        Set<Id> jobIds = new Set<Id>();
        for (Application__c app : newApplications) {

    studentIds.add(app.Student__c);
    jobIds.add(app.Job__c);

}
List<Application__c> existingApplications = [
    SELECT Student__c, Job__c
    FROM Application__c
    WHERE Student__c IN :studentIds
    AND Job__c IN :jobIds
];
Set<String> existingPairs = new Set<String>();
for (Application__c app : existingApplications) {
    existingPairs.add(app.Student__c + '-' + app.Job__c);
}
for (Application__c app : newApplications) {

    String key = app.Student__c + '-' + app.Job__c;

    if (existingPairs.contains(key)) {
        app.addError('This student has already applied for this job.');
    }
}
    }

    public void submitApplication(Id studentId, Id jobId) {
    }

    public void withdrawApplication(Id applicationId) {
    }

    public void approveApplication(Id applicationId) {
    }

    public void rejectApplication(Id applicationId) {
    }

    public void viewApplicationHistory(Id studentId) {
    }

    public void reopenApplication(Id applicationId) {
    }
}