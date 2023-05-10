/*
External System/Insomnia/Workbench --> Salesforce (Inbound Integration)
Agenda Build REST Web Services -- Example :Case Manager
Http Methods GET,POST,PATCH,Delete,Put
*/
@RestResource(urlmapping= '/InboundCaseManager/*')
global with sharing class RestInboundWebService {
    @HttpGet
    global static Case getCaseById(){
        //Consumer secret E88648D2A948482994D98D6F37569C32B45B92762A8BB25E0DBF15AD6596E1CC
        //Consumer key 3MVG9gtDqcOkH4PLh7APh8ixWpmwufz4v533VpQ2LII5MMlq_o22l_Zszgmanjj39ULvmMeDf8OjmhBOrk8XW
        //Grab case Record ID from the URL
        RestRequest request =RestContext.request;
        System.debug('HTTP Request Details sent by ExternalSystem'+ request);
        System.debug('Endpoint'+request.requestURI);
        System.debug('Http Method '+request.httpMethod);
        System.debug('header '+ request.headers);
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        System.debug('Case record Id: '+ caseId);
        //SOQL to fetch Case record information
        Case result = [SELECT id,Description, CaseNumber, Status, Origin, Subject, Priority FROM Case WHERE Id =:caseId WITH SECURITY_ENFORCED];
        System.debug('Case Record: '+result);
        return result;
    }
    /**
	 * This Method is deleting Case record by their Salesforce Id
	 * Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/5002w000003zzJxAAI
	 * HTTP Method - DELETE
	 * Create Success & Fail Response with dynmaic Status Code and Body
	 */
    @HttpDelete
    global static void deleteCase(){
        //To fetch Rest Request sen to External system
        RestRequest request = RestContext.Request;
        System.debug('HTTP Request Details sent by ExternalSystem'+ request);
        System.debug('Endpoint'+request.requestURI);
        System.debug('Http Method '+request.httpMethod);
        System.debug('header '+ request.headers);
        //Find Case Id info from 
        String caseId=request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        System.debug('Case record Id : '+caseId);
        Case matchingResult = [SELECT Id FROM Case WHERE Id =:caseId WITH SECURITY_ENFORCED LIMIT 1];
        //Build Custom Response
        RestResponse response = RestContext.Response;
        if (matchingResult != null) {
            delete matchingResult;
            response.statusCode = 204;
            response.responseBody = Blob.valueOf('Case record was succesfully deleted! :) ') ;
        } else {
           response.statusCode = 404;
           response.responseBody = Blob.valueOf('No record');
        }

    }
    //This method is going to create Case record by getting all required field values from Ext System
    //Http Method- POST
    //Testing Endpoint
    //Request Body - { 'subject'}
    //Return Custom meaningful JSON response based on Success
    //Response Body
    @HttpPost
    global static void createCase(String subject,String description,String status,String priority,String origin){
        //Get Request content sent by External System
        RestRequest request = RestContext.Request;
        System.debug('HTTP Request Details sent by ExternalSystem'+ request);
        System.debug('Endpoint'+request.requestURI);
        System.debug('Http Method '+request.httpMethod);
        System.debug('header '+ request.headers);
        System.debug('Request Body '+ request.requestBody);

        //Create Case Sobject
        Case newRec = new Case();
        newRec.Subject = subject;
        newRec.Description = description;
        newRec.Status = status;
        newRec.Priority = priority;
        newRec.Origin = origin;
        //prepare Custom Response 
        RestResponse response = new RestResponse();
        response.addHeader('Content-Type', 'application/json');
        PostResponseWrapper  responseContent = new  PostResponseWrapper ();
        //Insertion case reord 
        try {
            insert newRec;
            response.statusCode = 201;
            responseContent.id = newRec.Id;
            responseContent.status = 'Success';
            responseContent.errorMessage = '';
        }
        catch (Exception ex) {
            //Error Response
            response.statusCode = 404 ;
            responseContent.id = '';
            responseContent.status = 'Fail';
            responseContent.errorMessage = ex.getMessage();
            
        }
        //Populate Response Body
        String responseBody = JSON.serialize(responseContent);
        response.responseBody = Blob.valueOf(responseBody);


    }
    //Wrapper class for Response Building
    public class PostResponseWrapper {
        public String id;
        public String status;
        public String errorMessage;
    }
    //This method is going to update Case record by looking at the Salesforce Id 
    //HttpMethod - PATCH

    @HttpPatch
    global static Case updatecaseFields(){
        //Grab Current Inbound Integration Request
        RestRequest request = RestContext.Request;
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        List<Case> existingRec = [SELECT Id FROM Case Where Id =: caseId WITH SECURITY_ENFORCED];
        String requestJSON = request.requestBody.toString();
        Map<String,Object> fieldValues = (Map<String,Object>)JSON.deserializeUntyped(requestJSON);
        for (String fieldName : fieldValues.keySet()) {
            existingRec[0].put(fieldName, fieldValues.get(fieldName));
        }

        update existingRec[0];
        return existingRec[0];
    }
    /**
     * This method will be used to perform UPSERT(Insert/Update) case record by parsing all required parameters from Rest Request sent by External System
     * Incase of Upsert, if Salesforce Id is provided then it is an Update scenario. If not, it is an Insert scenario
     * Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/
     * Http Method - PUT
     * Request Body - { "id" : "xxx", "subject" : "xxx", "description" : "xxx", "status" : "xxx", "priority" : "xxx", "origin" : "xxx" }
     * Return meaningful JSON response based on Success/Failure
     * Response Body - { 'id' : 'xxx', 'status' : 'Success/Failure', 'errorMessage' : 'xxx' }
     * If Method parameters are not added then it means We have to do Deserilisation at our terms
     */
    @HttpPut 
    global static void upsertCase(){
        //Get Incoming Inbound REST API Request
        RestRequest request = RestContext.Request;
        //Extract Information/data from Request Body by deserailising JSON
        String requestBody = request.requestBody.toString();
        //Use deserialize  when dealing Wrapper class
        //Use deserialize Untyped when dealing with Map<>String
        PutRequestWrapper requestContent = (PutRequestWrapper) JSON.deserializeStrict(requestBody, PutRequestWrapper.class);

        // Prepare Case Object record
        case newRec = new Case();
        newRec.Status = requestContent.status;
        newRec.Subject = requestContent.subject;
        newRec.Description = requestContent.description;
        newRec.Origin = requestContent.origin;
        newRec.Priority = requestContent.priority;
        if(requestContent.id != null && requestContent.id != ''){
            newRec.Id = requestContent.id;
        }

        //Prepare Response Content
        RestResponse response = RestContext.Response;
        response.addHeader('Content-Type', 'application/json');
        PostResponseWrapper responseContent = new PostResponseWrapper();

        try {
            // Upsert Operation
            upsert newRec;

            // Success Response
            response.statusCode = 201;
            responseContent.status = 'Success';
            responseContent.id = newRec.Id;
            responseContent.errorMessage = '';
        } catch (Exception ex) {
            // Error Response
            response.statusCode = 404;
            responseContent.status = 'Failure';
            responseContent.id = '';
            responseContent.errorMessage = ex.getMessage();
        }

        // Prepare Response Body in JSOn format
        String responseJSON = JSON.serialize(responseContent);
        response.responseBody = Blob.valueOf(responseJSON);
    }

    // Wrapper Class for Put Request Body Deseariliasation
    public class PutRequestWrapper {
        public String id;
        public String subject;
        public STring description;
        public String priority;
        public STring origin;
        public STring status;
    }
}