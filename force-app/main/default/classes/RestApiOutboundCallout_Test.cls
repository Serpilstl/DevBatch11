/**
 * Error: Methods defined as TestMethod do not support Outbound Integration/Web service callouts
 * Covering Rest Callout Test Scenario can be done using 2 Approaches:
 * 1. Static Resource Callout Mock
 * 2. Creating a Mock Response using HttpCallout class
 */
@IsTest
public with sharing class RestApiOutboundCallout_Test {

    /**
     * Unit Test Success Response for Animal Heroku App - GET Method
     * STATIC RESOURCE MOCK APPROACH
     * Step 1: Upload Response Body as a Static Resource
     * Step 2: Fetching Mock Response from Static Resource
     * Step 3: Link/Assosiate the Mock Response to our Unit Test context
     * Step 4: Invoking REST merthod logic
     * Step 5: Assertion Stateements
     */
    @IsTest
    public static void getAnimalsSuccessTestUsingStaticResource(){
        // Create a mock Response based on our Static Resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetAnimalResource');
        mock.setStatusCode(200);
        mock.setStatus('OK');
        mock.setHeader('Content-Type', 'application/json');

        // Assosiate the Callout with this Mock Response
        Test.setMock(HttpCalloutMock.class, mock);

        // Invoking Apex logic
        Test.startTest();
        HttpResponse mockResponse = RestApiOutboundCallout.getAnimals();
        Test.stopTest();

        //Assertion Statements
        System.assertEquals(200, mockResponse.getStatusCode(), 'Success Response should be 200');
        System.assertEquals('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}', mockResponse.getBody(),'Mock response should match');

    }
    /*
    *Unit Test success response sceneria for Get User callout -Get Metheod
    *HTTP CALLOUT MOCK RESPONSE
    *Step 1 Create a new Apex Class implementing HttpCalloutMock
    *Step 2 Inside this class we try to create HttpResponse Object
    *Step 3 Assoiate Mock Response to our Unit Test method
    *Step4 Invoking REST Callout
    *Step5 System Assertion
    */
    @isTest
    public static void getUserSuccessTestUsingCalloutMock(){
        //Set Callout Mock Response
        Test.setMock(HttpCalloutMock.class, new GetUserCalloutMockResponse());
        //Rest Calllout in test context
        Test.startTest();
        HttpResponse mockResponse = RestApiOutboundCallout.getUser();
        Test.stopTest();
        //Assertion statements
       System.assertEquals(200, mockResponse.getStatusCode(), 'Success Response should be 200');
       System.assertNotEquals(null, mockResponse.getBody(), 'Mock Response content should give something');


    }
    //Create Mock response Class
     public class GetUserCalloutMockResponse implements HttpCalloutMock {
        //Implement respond Interface method
        public HttpResponse respond (HttpRequest request){
            //Create a fake respond
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setHeader('Content-Type','application/json' );
            response.setBody('{"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}');
            return response;
           

        }
     }
        
    }










    
    
