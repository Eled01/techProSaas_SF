public class SOQLNT8 {
    
    //Call account records with the name of "Batch 166-167 NT"
    //And update the records' Name and phone fields

    public static void updateTheRecord(){
        
        String accName = 'Batch 166-167 NT';
        
       List<Account> accList= [SELECT Id FROM Account WHERE Name =:accName]; //assume 160 coming
        //If you have iterable (many) expresion to bind; you can use IN > "IN :"
        //If you have one single string variable; you can use "=" > "=:"
       
        for(Account w: accList ){ //160 is going to the loop
            
            w.Name = 'Batch 166-167 NT updated';
            w.Phone = '98765';
            
        }
        
        update accList; //best practice is using DML out of the loop not to exceed governor limits...
        //Database.update(accList);
    }
      
}