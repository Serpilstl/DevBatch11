public  class StringAssigment {
    public void localstring() {
        string Localstring='Thanks for sesion on the string';
        integer lengthofLocalstring=Localstring.length();
        system.debug('Thanks for sesion on the string has ' +lengthofLocalstring+' charecter.');
        string upperCase=Localstring.toUpperCase();
        system.debug(upperCase);
        boolean checksession=Localstring.contains('session');
        system.debug('session is present in Localstring '+checksession);
        boolean checksessions=Localstring.contains('sessions');
        system.debug('sessions is present in Localstring '+ checksessions);
        boolean check3=Localstring.contains('SESSION');
        system.debug('SESSION is present in Localstring '+check3);





    }
}
