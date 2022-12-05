public  class SOQL_Assigment {
    public static void soql_WhereClause() {
        List<Contact>lstcontact=[select name from Contact WHERE Name LIKE 'A%' ];
          System.debug('contact records where Name starts with string A '+lstcontact);
          system.debug(lstcontact.size());
          
        
    }
    public static void soql_FromMethod() {
        List<Contact>lstcontact=[select lastname, phone FROM Contact];
        for (Contact eachContact :lstcontact) {
            String conLastName=eachContact.lastName;
            String conPhone=eachContact.Phone;
            System.debug('Last name is '+ conLastName+ ' phone is '+conPhone);
            
        }

        
    }

    
}
