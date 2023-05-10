@isTest
public with sharing class RestInboundWebservice_Test {
    @TestSetup
    public static void makeData(){
        Case testRec = new Case();
        testRec.Subject = 'Test Case';
        testRec.Description = 'Test Description';
        testRec.Origin = 'Phone';
        testRec.Status = 'New';
        testRec.Priority= 'High';
        insert testRec;
    }
    @IsTest 
    public static void getCaseByIdSuccessTest(){
        Id caseId = [SELECT Id FROM Case LIMIT 1].Id;
        //Setup a Mock Test
        RestRequest request = new RestRequest();
        request.requestURI= 'https://ddo000000hrp3mac-dev-ed.develop.lightning.force.com/services/apexrest/InboundCaseManager/'+ caseId;
        request.httpMethod = 'GET';
        RestContext.Request = request;
        Test.startTest();
        Case testRec = RestInboundWebService.getCaseById();
        Test.stopTest();
        System.assertEquals(testRec.Id, caseId,'Test case Record should be matching ');
    }
    @isTest 
    public static void createcaseSuccessTest(){
        RestRequest request = new RestRequest();
        request.requestURI = 'https://ddo000000hrp3mac-dev-ed.develop.lightning.force.com/services/apexrest/InboundCaseManager/';
        request.httpMethod = 'POST';
        RestContext.Request = request;
        //Call Webservice method
        Test.startTest();
        RestInboundWebService.createCase('Test Case #2','Test Case Description','New','High','Web');
        Test.stopTest();
        Case testRec = [SELECT Id, Subject FROM Case Where Subject = 'Test Case #2'];
        System.assertEquals('Test Case #2', testRec.Subject, 'New Test is created');
    }
    @IsTest 
    public static void deleteCaseSuccessTest(){
        Id caseId = [SELECT Id FROM case LIMIT 1].Id;
        RestRequest request = new RestRequest();
        request.requestURI = 'https://ddo000000hrp3mac-dev-ed.develop.lightning.force.com/services/apexrest/InboundCaseManager/' + caseId;
        request.httpMethod = 'DELETE';
        RestContext.Request = request;
        RestContext.Response = new RestResponse();
        Test.startTest();
        RestInboundWebService.deleteCase();
        Test.stopTest();
        List<Case> testRecList= [SELECT Id FROM Case];
        System.assertEquals(0, testRecList.size(), 'Not expecting ');
    }
}