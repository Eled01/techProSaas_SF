public class SOQLNT {
  //Practice 2: Find (the account name, account rating, 
        //and contact name, contact department, contact title, 
        //and Opportunity Name, Opportunity Amount) for every contact.

    public static void queryMethod(){
       
        //Type the query and put the result in a List        
          List<Contact> myResult = [SELECT 
                Account.Name, Account.Rating, 
                Contact.Name, Contact.Department, Contact.Title,
                (SELECT Opportunity.Name, Opportunity.Amount FROM Opportunities)
                FROM Contact];
        
        //How to see main object details 
        for(Contact w : myResult){
            System.debug(w);
        }
       //How to see child object details
        for(Contact w : myResult){
            for(Opportunity o : w.Opportunities){
                System.debug('Opportunity Name: '+ o.Name + ', Opportunity Amount: ' + o.Amount);
            }
        }
    }
}