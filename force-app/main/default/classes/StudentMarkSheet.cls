public  class StudentMarkSheet {
    public void showMarksheetUsingDatatype(){
        string firstName='Serpil';
        string lastName='Iyiyol';
        system.debug('Student first name : '+ firstName);
        system.debug('Student lastname : '+lastName);
        integer mathematicGrade=10;
        system.debug('Math =  '+mathematicGrade);
        integer chemistryGrade=8;
        system.debug('Chemistry =  '+chemistryGrade );
        integer englishGrade=7;
        system.debug('English =  '+englishGrade);    
    }
    public void showMarksheetUsingObject(){
        Object firstName='Serpil ';
        Object lastName='Iyiyol ';
        Object mathematicGrade=10;
        Object chemistryGrade=8;
        Object englishGrade=7;
        system.debug(firstName);
        system.debug(lastName);
        system.debug('Mathematic = '+ mathematicGrade);
        system.debug('Chemistry = '+chemistryGrade);
        system.debug('English= '+ englishGrade);
        
        
    }

}