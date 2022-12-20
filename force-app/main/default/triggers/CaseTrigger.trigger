trigger CaseTrigger on Case (before insert,before update) {
    
    if (Trigger.isUpdate) {
        system.debug('Before update trigger called');
        CaseTriggerHandler.countTriggerExecution++;
        system.debug(' of times trigger ran '+CaseTriggerHandler.countTriggerExecution);
        integer size = trigger.size;
        CaseTriggerHandler.countTriggerRecords += size;
        system.debug('# of records updated'+CaseTriggerHandler.countTriggerRecords);
        
    }

}