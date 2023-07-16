public class SOQLNT7 {
    
   	//Practice 6: Call Name and Rating of account records 
    //Put a limitation to display records
    //enter limitation values by method parameters...

    public void selectTheRecordInTheGivenOrder(Integer limt, Integer offs){
        
      List<Account> accounts = [SELECT Name, Rating FROM Account LIMIT :limt OFFSET :offs];
        //to make limitation values dynamic, we can use "binding variable" 
        //..and we will enter values by method parameters
         for(Account w : accounts){
            
            System.debug(w);
        }
        
    }
    
    
}



// to limit number of records to display > LIMIT
// to skip records from the top of the list to display > OFFSET