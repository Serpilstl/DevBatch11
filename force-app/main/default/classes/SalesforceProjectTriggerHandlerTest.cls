@isTest
public  class SalesforceProjectTriggerHandlerTest {
    private static void  createDefaultTicketTest(){
        //data preparation
        Salesforce_Project__c sfp1 = new Salesforce_Project__c ();
        sfp1.Project_Name__c ='Name 1';
        sfp1.Status__c ='Completed';
        List<Salesforce_Project__c> sfpList =new  List<Salesforce_Project__c>{sfp1};

        Salesforce_Ticket__c sft1 = new Salesforce_Ticket__c ();
        sft1.Subject__c = 'Subject';
        sft1.id =sfp1.Id;

        insert sfpList;

    }
     @isTest 
     private static void completeSPvalidationTest (){
        test.startTest();
        List<Salesforce_Project__c> listSFP = new List<Salesforce_Project__c> ();
        Salesforce_Project__c sfp = new Salesforce_Project__c ();
        sfp.Project_Name__c ='Test Project Name';
        sfp.Status__c = 'Completed';

        Salesforce_Ticket__c sfT = new Salesforce_Ticket__c ();
        sfT.Status__c = 'Copleted';
        sfT.Id = sfp.Id;
        listSFP.add(sfp);
        insert listSFP;
        //Update 
        Map<Id, Salesforce_Project__c > spMap = new  Map<Id, Salesforce_Project__c > ();
        spMap.put(sfp.Id, sfp);
        listSFP.get(0).Status__c = 'Copleted';
        update listSFP ;

        SalesforceProjectTriggerHandler.completeSPvalidation(listSFP, listSFP,spMap, spMap);
        Test.stopTest();

     }

    }

