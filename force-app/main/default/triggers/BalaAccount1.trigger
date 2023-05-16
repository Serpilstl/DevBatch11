trigger BalaAccount1 on Account (after insert) {
    if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            AccountHandler.afterInsert(Trigger.new);
            
        }
        
    }


}