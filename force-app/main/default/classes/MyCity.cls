public  class MyCity {
    public void CityInformation() {
        string holyCity='Mekke';
        string peaceCity='Medine';
        string myDream='I want to visit '+' first'+' '+holyCity+' '+'second '+peaceCity+ ' .';
        system.debug(myDream);
    }
        public void stringMethod(){
            string developer='I am a Salesforce Developer';
            system.debug(developer);
            boolean controll=developer.contains('force');
            system.debug('I am a Salesforce cumlesinde force kelimesi var mi? '+ controll);
            integer kacKarakter=developer.length();
            system.debug('I am Salesforce cumlesi '+ kacKarakter+ '  karakterdir.');
            string buyukHarf=developer.toUpperCase();
            system.debug(buyukHarf);

        }
            public void dateMethod(){
                Date bugun=Date.today();
                system.debug('Su an itibariyle bugun ' + bugun);
                
            
                


            }


        }   


    

