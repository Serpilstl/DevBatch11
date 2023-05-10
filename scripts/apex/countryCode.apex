Map<String, Country_Code__c> allCountryCodes =Country_Code__c.getAll();
System.debug('all country codes '+ allCountryCodes);

for(string eachCountry : allCountryCodes.keySet()){
    system.debug('Country is '+eachCountry + ' its code is '+ allCountryCodes.get(eachCountry).code__c);
}