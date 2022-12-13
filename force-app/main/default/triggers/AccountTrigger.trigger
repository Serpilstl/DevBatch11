trigger AccountTrigger on Account (before insert,before update, after insert, after update) {
   if(Trigger.isBefore){
      AccountTriggerHandler.updateDescription(Trigger.New,Trigger.Old,Trigger.NewMap,Trigger.OldMap);
   }






     /*
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
           
        }
        system.debug('website updated for # of accounts => ' + countwebsite);
    }

    
    /*
    List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
    if (Trigger.isAfter && Trigger.isUpdate) {

        //old account name and new account name using ONE for loop.
        
        //get set of id using map.
        set<id> accountIds = accTriggerNewMap.keySet();
        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            system.debug('NEW Acc Name is ' +  newacc.Name);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            system.debug('Old Acc Name is ' +  oldacc.Name);
        }
    }



    /*
    map<id, account> accTriggerOldMap = trigger.oldMap;
    map<id, account> accTriggerNewMap = trigger.newMap;

    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    }
    
    /*
   /*
  if(trigger.isBefore && trigger.isUpdate){
    List<Account> accTriggerOld = trigger.old;//Old values
    for(account oldAcc:accTriggerOld){
        System.debug('old name acc = '+oldAcc.Name +' old acc id ===>'+oldAcc.Id);

    }
    List<account> accTriggerNew= trigger.New;
    for(account newAcc : accTriggerNew){
        system.debug('new acc name ='+ newAcc.Name + 'new acc id ==> '+newAcc.id);
    }
  }

 
  if (Trigger.isBefore && Trigger.isInsert){
    system.debug('account before insert trigger.old'+trigger.old);
  }
  if (Trigger.isAfter && Trigger.isInsert){
    system.debug('account after insert trigger.old '+ trigger.old);
  }
  if (Trigger.isBefore&& Trigger.isUpdate){
    system.debug('account before insert trigger.old'+trigger.old);
  }
  if (Trigger.isAfter && Trigger.isUpdate){
    system.debug('account before insert trigger.old'+trigger.old);
  }




    List<Account> accTriggerNew = trigger.new;
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('BEFORE UPDATE new record ==> '+accTriggerNew);
        system.debug('BEFORE UPDATE new account size==>'+ accTriggerNew.size());
        for(account eachAcc : accTriggerNew){
            system.debug('BEFORE UPDATE each acc id is '+eachAcc.id+ ' ,each name is '+eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('AFTER newly UPDATE record ==>'+ trigger.new);
        system.debug('AFTER newly UPDATE accounts size '+accTriggerNew.size());
        for (account eachAcc : accTriggerNew){
            system.debug('AFTER UPDATE acc id is '+eachAcc.Id + 'each acc name is '+eachacc.Name);
        }
    }


}
    
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
}