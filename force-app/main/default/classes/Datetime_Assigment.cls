public  class Datetime_Assigment {
    public void diffofDate() {
        Date varTomorrowDate=date.newInstance(2022, 11, 15);
        system.debug('Tomorrow date will be '+ varTomorrowDate);
        Date varTodayDate=date.newInstance(2022, 11, 14);
        system.debug('Today s date will be '+varTodayDate);
        Integer dayDiffernceBetween=varTodayDate.daysBetween(varTomorrowDate);
        system.debug('Days difference between '+dayDiffernceBetween);
    }
    public void timeCheck(){
        Datetime varTomorrowDateTime=Datetime.newInstance(2022, 11, 15, 7, 0, 0);
        system.debug('Tomorrow date time at 7.00 am-->'+varTomorrowDateTime);
        Datetime var10days=varTomorrowDateTime.addDays(10);
        system.debug('10 days later  in GMT-->'+ var10days);
        Long dateTimeLong=12339874361L;
        Datetime varDateTimeLong=datetime.newInstance(dateTimeLong);
        system.debug('Long variable -->'+ varDateTimeLong);
        Datetime add7Days=varTomorrowDateTime.addDays(7);
        system.debug('Add 7 days--> '+add7Days);
        Datetime add10days=var10days.addDays(10);
        system.debug('Add 10 days--> '+add10Days);
        










    }





    

    
}
