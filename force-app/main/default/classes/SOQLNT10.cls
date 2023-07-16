public class SOQLNT10 {
    
    //create a new record with name, rating and phone fields
    //add rating later
    //Create 4 additional records in a list an use partial success
    
    public static void workWithData(){
        
        Account acc1 = new Account(Name='Test1', Phone='00061');
        acc1.Rating = 'Hot';
        Database.insert(acc1);
        
        
        //create 4 additional records
        Account acc2 = new Account(Name='Test2');
        Account acc3 = new Account(Name='Test3');
        Account acc4 = new Account(Name='Test4');
        Account acc5 = new Account(Phone='33366');
        
        List<Account> accList = new List<Account>{acc2, acc3, acc4, acc5};
            Database.insert(accList, false);//allows partial success
        System.debug(accList);
    }

    
}