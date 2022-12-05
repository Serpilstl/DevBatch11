public  class Loops_assigment {
    public void  Forloops(integer n) {
     for(Integer i=0;i<n;i++){
        system.debug(i);
     }
    }
    public void printEven(integer startInt,integer endInt){
        for (Integer i=startInt;i<endInt;i++) {
            integer remainder=math.mod(i,2);
            if(remainder==0){
                system.debug(i+ 'i is even number.');
            }
            
        }




    }
      

    
}
