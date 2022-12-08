trigger AccountTrigger on Account (before insert,before update) {
    //before insert
    system.debug('account before insert trigger called');
    system.debug('account before UPDATE trigger called');
    //when this code run?
    /*
    if(Trigger.isBefore){
system.debug('account before insert the trigger called');
    }
    if(Trigger.isAfter){
system.debug('account after the  trigger called');
    }
    */
}