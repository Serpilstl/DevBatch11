public with sharing class AccountHandler {
   public static void afterInsert(List<Account> newAccounts){
    List<Contact> contacts = new List<Contact>();
    //iterate over the new account and create a contact and opp
    for (Account acc : newAccounts) {
        //create a contact record
        Contact con = new Contact();
        con.LastName = acc.Name;
        con.Phone = acc.Phone;
        con.AccountId = acc.Id;
        contacts.add(con);    
    }
         insert contacts;
         if (!contacts.isEmpty()) {
            try {
                insert contacts;  
            } catch (Exception ex) {
                //create a log
                
            }
            
         }
   }
}