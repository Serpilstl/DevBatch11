public class AccountSchedule  implements Schedulable {
    public void execute (SchedulableContext sc){
        Database.executeBatch(new AccountsBatch());
    }
}
