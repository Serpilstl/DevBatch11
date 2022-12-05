public  class ForEachLoopDemo1 {
    public static void iterateIntegerList() {
        list<integer> listInteger=new list<integer>();
        listInteger.add(10);//0
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(15);//4

        for(integer eachInteger : listInteger){
            system.debug(eachInteger);
        }

    
 }
}
