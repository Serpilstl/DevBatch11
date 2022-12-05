public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates=0;
    public Candidates(){
        countCandidates++;

    }
    public Candidates(string n,string g){
        this();
        name=n;
        Gender=g;
    }
    public void printCandidate(){
        system.debug('Name is '+ Name);
        system.debug('gender is '+Gender);
        system.debug('Company name is '+CompanyName);
    }
    public static void printCandidateInfo(){
        //we can acssess only static members insisde static method
        system.debug('company name is '+CompanyName);

    }

}
