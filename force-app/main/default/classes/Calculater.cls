public  class Calculater {
    public void welcomeMessage(){
        system.debug('Welcome to apaex calc');
    }
    public void printNewMessage(string msg){
        system.debug(msg);
    }
    public string printAndReturnMessage(string msg){
        string returnString=msg+'....OK cool.';
        return returnString;
    }
    public integer add(integer a,integer b){
         integer sum=a+b;
         return sum;
    
    }
    public integer add(integer a,integer b, integer c){
        integer sum=a+b+c;
        return sum;
   
   }
    public boolean leapYearCheck(date dt){
        integer year=dt.year();
        boolean lp=date.isLeapYear(year);
        return lp;
    }
}
