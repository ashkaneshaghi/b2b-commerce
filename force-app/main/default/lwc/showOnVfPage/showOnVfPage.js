import { api, LightningElement } from 'lwc';

export default class ShowOnVfPage extends LightningElement {

    @api footerJson;
    @api footerJson1;

    connectedCallback() {

        console.log('This is a test LWC' + this.footerJson);
        console.log('This is a test LWC 1' + this.footerJson1);
    }

}