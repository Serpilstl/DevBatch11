public  class SoqlVideo {
    public static void allContacts() {
        //select id, name, phone from contact
        List<Contact>listContacts =[select name, phone from Contact];
        system.debug(listContacts);
        
    }
    public static void latestContactOnly() {
        Contact latestCnt = [select name,  email from contact order by CreatedDate desc limit 1];
        system.debug('latest created contact is   '+latestCnt);
        string latestCntName= latestCnt.Name;
        system.debug('latest contact name is '+latestCntName);
        system.debug('latest contact name is '+latestCnt.Email);

        
    }
    public static void contactsWithEmail() {
        List<Contact>listEmailContacts = [select id, name, email from contact where email !=''];
        system.debug(listEmailContacts.size());
        for (contact eachCnt : listEmailContacts) {
            System.debug('contact name is '+eachCnt.Name.toUpperCase()+ ' and its email is '+ eachCnt.Email.toUpperCase());
            System.debug('----------');
            
        }

        
    }
    public static void contactFilterName(string fname) {
        List<Contact> filteredContacts = [select name, email, phone from contact where FirstName = :fname];
        system.debug(filteredContacts);


        
    }
}
