trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert,before update) {
    if(Trigger.isAfter && Trigger.isInsert){
        //call trigger handler to create salesforce ticket
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}