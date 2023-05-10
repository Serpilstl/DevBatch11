@isTest
public with sharing class SoapApiOutboundCalloutParkMock implements WebServiceMock{
    public void doInvoke (
        Object stub,
        Object request,
        Map<String, Object> response,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName,
        String responseType
    ){
        ParkSOAPApex.byCountryResponse response_x = new ParkSOAPApex.byCountryResponse();
        List<String> parkNames = new List<String> {'Park1','Park2','Park3'};
        response_x.return_x = parkNames;
        response.put('response_x', response_x);

    }
}