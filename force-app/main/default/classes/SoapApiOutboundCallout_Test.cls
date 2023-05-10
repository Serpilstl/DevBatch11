/*
* Step I : To Create a new Mock Response - Apex Class which will implement WebServiceMock
 * Step II: Inside Mock Response class we will be implementing doInvoke method with bunch of predefined Method parameters
 * Step III: Initialise Response Class of SOAP Utility/Serrvice Class
 * Step IV: Pass Dummy/Fake Response values
 * Step V: Assosiate Mock Response to our Unit Test method
 * Step VI: Invoking SOAP Callout
 * Step VII: System Assertion
*/
@isTest
public with sharing class SoapApiOutboundCallout_Test {
    @isTest
    public static void makeCalculatorCalloutSuccessTest(){
        //SoapApiOutboundCallout.makeMultiplication ();
        Test.setMock(WebServiceMock.class, new SoapApiOutboundCalloutCalculatorMock());
        //Invoke Soap Api Callout sceneria
        Test.startTest();
        Double result = SoapApiOutboundCallout.makeMultiplication();
        Test.stopTest();
        System.assertEquals(30.0, result, 'Should be matching');

    }
    @isTest 
    public static void makeParkCalloutSuccessTest(){
        Test.setMock(WebServiceMock.class, new SoapApiOutboundCalloutParkMock());
        Test.startTest();
        List<String> parks = SoapApiOutboundCallout.makeParkCallout();
        Test.stopTest();
        System.assertEquals(3, parks.size(), 'We should be expecting 3 park dummy results');
        List<String> expectResult = new List<String> {'Park1','Park2','Park3'};
        System.assertEquals(expectResult, parks, 'We should be existing 3 parks');
    }
    
}