public  class AccountUpdateHelper {
    @invocableMethod
    public  static void accountWebsiteUpdate(List<id> accIds) {
        system.debug('inside inc method');
        List<Account> listAcc = [select id,website,name from account where id in :accIds];
        for (Account eachacc : listAcc) {
            eachacc.website = 'www.softinnovas.com';
            
        }
        update listAcc;

    }
}
