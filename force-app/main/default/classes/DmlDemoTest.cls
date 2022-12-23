@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlInsert1Test(){
        DmlDemo.dmlInsertDemo_stndObj();
        //asserts means actual test
        List<Account> listAcc = [select id,name from account where name = 'SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest
    
    private static void dmlInsert4Test(){
        Account acc = new account ();
        acc.name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlInsertDemo_4();
        List<contact> listContact = [select id, lastName from contact where lastname = 'Biden'];
        system.assertEquals(1,listContact.size());
    }
    @isTest
    private static void dmlInsert5Test() {
        //prepare data
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Test SP';
        sp.Status__c = 'New';
        insert sp;
        DmlDemo.dmlInsertDemo_55();
        //verifyList
        List<Salesforce_Ticket__c> listST = [select id,name, subject__c,Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c =:sp.id and subject__c = 'Learn Apex dmls'];
        system.assertEquals('Learn Apex dmls',listST[0].Subject__c);

        
    }
}