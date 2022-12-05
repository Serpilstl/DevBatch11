string valueAt2=ListDemo.candidatesList(2);
system.debug(valueAt2);
ListDemo.randomIntegerList();
string valuesAt5=ListDemo.candidatesList(5);
system.debug(valuesAt5);
ListDemo.allCats();

List<string> listStr= new list<string>();
if(listStr.isEmpty()){
    system.debug('List is empty.');
}

list<integer> listInteger=new list<integer>();
        listInteger.add(10);//0
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(15);//4
        listInteger.add(12);
        listInteger.add(18);
        system.debug('Before the sort '+ listInteger);
        listInteger.sort();
        system.debug('after the sort '+listInteger);

        
