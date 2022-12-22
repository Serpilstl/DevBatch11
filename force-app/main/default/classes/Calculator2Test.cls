@isTest//class become test class
    public class Calculator2Test {
        @isTest //method becomes test method
        private static void testMessage(){
            //we want to test our calculator class method
            Calculator2.welcomeMessage();
            Calculator2.printNewMessage('this is from test method');

        }
        @isTest
        private static void addTest1(){
            integer i =10;
            integer j =15;
            integer sum1 = calculator2.add(i, j);
            system.assertEquals(25, sum1);
            
        }
        @isTest
        private static void addTest2(){
            integer i =10;
            integer j =15;
            integer sum1 = calculator2.add(10,15,25);
            system.assertEquals(50, sum1);
            
        }

    }
