@isTest 
public  class AccountsBatchTest {
    @isTest 
    private static void testBatch1(){
        //1. prepare data
        List<Account> listAcc = new List<Account> ();
        for (Integer i = 0; i < 900; i++) {
            account a = new account ();
            a.Name ='Pi account '+ i;
            a.Active__c = 'Yes';
            listAcc.add(a);
            
        }
        insert listAcc;
        Test.startTest();
        AccountsBatch ab = new AccountsBatch ();
        Database.executeBatch(ab, 1000);
        Test.stopTest();
        List<Account> getAcc = [select id,description from Account];
        system.assert(getAcc[0].Description.contains('batch'));

    }
}
