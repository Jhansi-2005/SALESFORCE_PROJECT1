import { LightningElement } from 'lwc';

export default class PlacementHome extends LightningElement {

    studentName = 'Rahul';
    rollNumber = '22B81A0501';
    department = 'CSE';

    todayDate = new Date().toLocaleDateString();

    welcomeMessage = '';

    applicationStatus = 'Not Applied';

    showWelcomeMessage() {
        this.welcomeMessage = 'Welcome to Salesforce Development';
    }

    changeStatus() {
        this.applicationStatus = 'Applied';
    }
}