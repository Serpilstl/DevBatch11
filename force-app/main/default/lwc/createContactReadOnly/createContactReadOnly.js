import { api, LightningElement } from 'lwc';

import NAME_FIELDS from '@salesforce/schema/Contact.Name';
import ACCOUNTID_FIELDS from '@salesforce/schema/Contact.AccountId'
import PHONE_FIELDS from '@salesforce/schema/Contact.Phone';
import LEADSOURCE_FIELDS from '@salesforce/schema/Contact.LeadSource';
import DEPARTMENT_FIELDS from '@salesforce/schema/Contact.Department';
import BIRTHDATE_FIELDS from '@salesforce/schema/Contact.Birthdate';

import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class RecordViewFormAccount extends LightningElement {
    objectName = CONTACT_OBJECT;
    @api recordId;

    fields = {
        name:NAME_FIELDS,
        ACCOUNTID_FIELDS:ACCOUNTID_FIELDS,
        phone:PHONE_FIELDS,
        leadSource:LEADSOURCE_FIELDS,
        department:DEPARTMENT_FIELDS,
        birthdate:BIRTHDATE_FIELDS
    }
}