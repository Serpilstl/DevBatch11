public  class SetDemo {
    public static void citySet() {
        Set<String>cities=new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('TOKYO');
        System.debug('cities are '+cities);

        
    }
    public static void randomIntegerSet() {
         Set<Integer>setInt=new Set<Integer>();
         setInt.add(15);
         setInt.add(10);
         setInt.add(21);
         setInt.add(15);
         system.debug(setInt);


        
    }
    public static set<integer>setFromList (list<integer>intList) {
        set<integer>returnSet=new set<integer>();
        returnSet.addAll(intList);
        return returnSet;



        
    }
    public static set<string> capitalizeSet(set<string>setStr) {
        Set<String>returnSet=new set<string>();
        //iterete over each element os set
        //convert each element to uppercase
        //add in anewly created set
        for (string eachString: setStr) {
            //eachStr each element one by one from the set
            string tempstring=eachString.toUpperCase();
            returnSet.add(tempstring);
            
        }
        return returnSet;
        
    }
    

    
}
