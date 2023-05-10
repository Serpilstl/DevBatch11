//SOAP (Simple Object Access Protocol)-earlier framework of doing Web Communication/Integration,Secure way of doing transferring, XML Messaging Format only
//Outboubd Callout using SOAP Api - 4 Steps of Implementation-4 steps of Implementation
//Step 1 Create Remote Site setting -to whitelist Domain
//Step 2 WSDL (Web Service Description Language)- Get WSDL from External System
//a.Endpoint Url,Features available,Input parameters (Request),Response- XML format
//Step 3 Convert WSDL to Apex Class using Salesforce framework
//Step 4 Use/Consume the Soap Apex Class to make callout


public with sharing class SoapApiOutboundCallout {
    //SOAP callout to Calculaor Heroku App to do multipication
    public static Double makeMultiplication(){
        calculatorSOAPApex.CalculatorImplPort calc = new calculatorSOAPApex.CalculatorImplPort();
        Double num1 = 8.0;
        Double num2 = 2.0;
        Double result = calc.doMultiply(num1, num2);
        System.debug('Calculator parameters are '+ num1 +' ' +num2);
        System.debug('Calculator Response for : '+result);
        return result;

    }
    public static Double Addition (){
        calculatorSOAPApex.CalculatorImplPort add = new calculatorSOAPApex.CalculatorImplPort ();
        Double num1 = 3.5;
        Double num2 = 3.5;
        Double result = add.doAdd(num1, num2);
        System.debug('Calculator paremeters are '+ num1 + ' '+ num2);
        System.debug('Calculator response for addition '+ result);
        return result;

    }
    public static Double Division(){
        calculatorSOAPApex.CalculatorImplPort div = new calculatorSOAPApex.CalculatorImplPort();
        Double num1 = 12.0;
        Double num2 = 12.0;
        Double result = div.doDivide(num1, num2);
        System.debug('Calculator parameters are '+ num1+ ' '+num2);
        System.debug('Calculator response for division '+ result);
        return result;

    }
    public static Double Substraction(){
        calculatorSOAPApex.CalculatorImplPort sub = new calculatorSOAPApex.CalculatorImplPort();
        Double num1 = 7.5;
        Double num2 = 3.0;
        Double result = sub.doSubtract(num1, num2);
        System.debug('Calculator parameters are '+ num1+ ' '+num2);
        System.debug('Calculator response for substraction '+result);
        return result;
    }

    //SOAP Callout to Park Heroku App to get list of Park names based on Country
    public static List<String> makeParkCallout(){
        ParkSOAPApex.ParksImplPort park = new ParkSOAPApex.ParksImplPort();
        String inputCountry = 'USA';
        List<String> parkNames = park.byCountry(inputCountry);
        System.debug('Park SOAP API for Country-WIse Feature is : '+ parkNames);
        return parkNames;

    }
    
}