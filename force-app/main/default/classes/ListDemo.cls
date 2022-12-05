public  class ListDemo {
    public static string candidatesList(integer i) {
        List<string>listCandidates= new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('list of candidates '+listCandidates);
        string returnValue='';//5 index did not found
        // check size of list.

        integer sizeOfList=listCandidates.size();
        if(i>=0 && i< sizeOfList){
            returnValue=listCandidates[i];
        }else{
            returnValue= 'No values';
        }
        return returnValue;
        
        
    }
    public static void randomIntegerList() {
        list<integer> listInteger=new list<integer>();
        listInteger.add(10);//0
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(15);//4

        integer index3value=listInteger.get(3);//get value at index 3 first way
        integer index3value2=listInteger[3];// second way
        system.debug('List of random integer is '+listInteger);

    }
    public static void allCats(){
        List<cat> listCats=new list<cat>();
        //how to add cats in this list?
        Cat batch11Cat=new Cat('fluff','white');
        Cat sfCat2=new Cat('leo','orange');
        Cat sfCat3=new Cat('luna','brown');
        listCats.add(batch11Cat);
        listCats.add(sfCat2);
        listCats.add(sfCat3);
        system.debug('cat list '+listCats);





    }


}
