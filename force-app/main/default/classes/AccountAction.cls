public with sharing class AccountAction {
    //1. Craete a Screen Flow for Opportunity Creation. Opportunity is created.
    //   2. We will update Parent Account's Annual Revenue with sumation of all child Opportunity Amount - Invocable Apex 
    @InvocableMethod (
             label= 'Update Account Revenue'
             description='Summation of Child Opportunity displayed on Parent Account Annual Revenue'
             category ='Account'
             )
    public static void updateAccountRevenue(List<Id> oppIds){
        //Fetch parent acc information from OppIds using SOQL
        //WITH SECURITY ENFORCED 
         Opportunity newlyCreatedOpp = [Select AccountId From Opportunity Where Id =:oppIds[0] WITH SECURITY_ENFORCED LIMIT 1];
        Id parentAccountId = newlyCreatedOpp.AccountId;
        //Fetch all child opportunity under that parent Account using SOQL
        //Create totalAmount variable
        List<Opportunity> childOpps = [SELECT Amount FROM Opportunity WHERE AccountId =:parentAccountId WITH SECURITY_ENFORCED];
        Decimal totalAmount =0;
        //Iterate over all child opp and add Amount valuee
        for (Opportunity opp : childOpps) {
            if(opp.Amount != null && opp.Amount>0){
                totalAmount += opp.Amount;
            }
            
        }
        //Update Parent Account Annual revenue field with totalAmount value
        //Creating an istance of SObject Type Account
        Account parentAcc = new Account ();
        parentAcc.Id = parentAccountId;
        parentAcc.AnnualRevenue = totalAmount;
        update parentAcc;
    }
    /**
* Annotate the method with @InvocableMethod
* The invocable method must be static and public or global
* Only one method in a class can have the invocable method annotation
* Triggers can't reference invocable methods
* Invocable method doesn't accept more than one argument as a method parameter
* Other annotations cant be used with invocable method annotation
 */
}