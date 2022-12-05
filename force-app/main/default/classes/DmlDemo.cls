public  class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        //create a new account record using apex code
        //create new instance
        Account acc = new account();
        //2. set values to fields
        acc.Name= 'SoftInnovas';
        system.debug('Not inserted '+acc);
        //dml.
        insert acc;//boom
        system.debug('After inserted '+acc);
    }
    public static void dmlInsertDemo_cstmObj(){
        //create new instance
        Salesforce_project__c spNew = new  Salesforce_project__c();
        //set field values
        spNew.project_name__c ='Teach DML to batch 11';
        spNew.description__c ='Everybody is doing great';
        //3 dml
        insert spNew;
    }
    public static void dmlUpdateDemo_1(){
        //create new instance
        account acc= new account();
        acc.Name ='softinnovas ';
        insert acc;
        //change field values 
        acc.Name ='Salesforce Inc.';
        update acc;
        System.debug(acc);
    }
}
