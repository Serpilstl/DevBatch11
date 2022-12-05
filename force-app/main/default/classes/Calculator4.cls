public  class Calculator4 {
    //method name=add
    //parameter=list<integer
    //return type =integer
    public static integer add(List<integer>listInt) {
        //first take temp var
        integer returnInt=0;
        for (integer eachInt : listInt) {
            system.debug('eachInt '+eachInt);
            returnInt+=eachInt;
            system.debug('returnInt '+returnInt);
            
        }
        return returnInt;
        
    }
    

    
}
