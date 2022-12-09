trigger AccountTrigger on Account (before insert,before update, after insert, after update) {
    List<Account> accTriggerNew = trigger.new;
    /*
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('BEFORE INSERT new record ==> '+accTriggerNew);
        system.debug('BEFORE INSERT new account size==>'+ accTriggerNew.size());
        for(account eachAcc : accTriggerNew){
            system.debug('BEFORE each acc id is '+eachAcc.id+ ' ,each name is '+eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('newly inserted record ==>'+ trigger.new);
        system.debug('inserted account size '+accTriggerNew.size());
        for (account eachAcc : accTriggerNew){
            system.debug('each acc id is '+eachAcc.Id + 'each acc name is '+eachacc.Name);
        }
    }
    //before insert
   // system.debug('account before insert trigger called');
    //system.debug('account before UPDATE trigger called');
    //when this code run?
    /*
    if(Trigger.isBefore){
system.debug('account before insert the trigger called');
    }
    if(Trigger.isAfter){
system.debug('account after the  trigger called');
    }
    
    if (Trigger.isInsert){
        system.debug('Before Insert');
    } 
    if (Trigger.isUpdate){
        system.debug('After Insert');
    }
    
    if(trigger.isInsert && trigger.isBefore){
        system.debug('before insert');
    }
    if(trigger.isInsert && trigger.isAfter){
        system.debug('after inser');
    }
    if  (trigger.isUpdate && Trigger.isBefore){
        system.debug('Before UPDATE trigger');
    }
    if (trigger.isUpdate && Trigger.isAfter){
        system.debug('After UPDATE trigger');
    }
    */
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('BEFORE INSERT new record ==> '+accTriggerNew);
        system.debug('BEFORE INSERT new account size==>'+ accTriggerNew.size());
        for(account eachAcc : accTriggerNew){
            system.debug('BEFORE each acc id is '+eachAcc.id+ ' ,each name is '+eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('newly inserted record ==>'+ trigger.new);
        system.debug('inserted account size '+accTriggerNew.size());
        for (account eachAcc : accTriggerNew){
            system.debug('each acc id is '+eachAcc.Id + 'each acc name is '+eachacc.Name);
        }
    }


}