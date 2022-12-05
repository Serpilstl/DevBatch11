SetDemo.citySet();
SetDemo.randomIntegerSet();
 list<Integer>listInteger=new List<Integer>();
         listInteger.add(15);
         listInteger.add(10);
         listInteger.add(21);
         listInteger.add(15);
         system.debug('list ' +listInteger);
         set<integer>setInt=SetDemo.setFromList(listInteger);
         system.debug('set '+setInt);

        
Set<String>cities=new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('TOKYO');
    set<string>upperCaseSet=SetDemo.capitalizeSet(cities);
    system.debug(upperCaseSet);