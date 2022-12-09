trigger ContactTrigger on Contact (before insert,after insert,before update,after update) {
    if ((Trigger.isBefore)){
        system.debug('We are in BEFORE not saved');
        if(Trigger.isInsert){
            system.debug('We are in befire insert tri');
        }
        if (Trigger.isUpdate){
            system.debug('We are in before update ');
        }
    }
    if (Trigger.isAfter){
        system.debug('We are in after ');
    }  
       if (Trigger.isInsert){
         system.debug('We are in after insert trigger');
       }
       if (Trigger.isUpdate){
        system.debug('We are in after update trigger');
       }

}