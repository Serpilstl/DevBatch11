public  class DateTimeMethodsDemo {
    public void calculateAgeInMonth(){
        date dttoday=date.today();
        date sBdate=date.newInstance(1977, 5, 7);
        integer ageInMonths=sBdate.monthsBetween(dttoday);
        system.debug('Serpils age in months is ' +ageInMonths);
        

        }
        public void calculateAgeInDays(){
            date dttoday=date.today();
            date sBdate=date.newInstance(1977, 7, 5);
            integer ageInDays=sBdate.daysBetween(dttoday);
            system.debug('Serpils age in days in '+ageInDays);
        }
        public void printOfferEndDateTime(){
            Datetime dtNow=datetime.now();
            Datetime dtOfferEnd=dtNow.addHours(51);
            system.debug('offer date time is '+dtOfferEnd);
            Date dateOfferEnd=dtOfferEnd.date();
            system.debug('date of offer '+ dateOfferEnd);








        }
        public void birthDateToMilliSeconds(){
            datetime birthDate=datetime.newInstance(1977,7,5);
            long longBirthDate=birthDate.getTime();
            system.debug('long birth date==> '+ longBirthDate);





        }
        
    

        
        
   }






        





    



    

