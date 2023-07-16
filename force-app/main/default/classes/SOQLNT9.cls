public class SOQLNT9 {

    //call the records from database with phone '98765'
    //delete the records 
    //and then undelete them from recycle bin
    public static void deleteTheRecord(){
        
        List<Account> accList = [SELECT Id, Name, Phone FROM Account WHERE Phone = '98765'];       
        //delete accList; 
        Database.delete(accList);
        //Database.delete(accList,true);
        //Database.delete(accList,false);
        System.debug(accList);
    } 
    
    
    public void undeleteTheRecord(){
        
       List<Account> accList = [SELECT Id FROM Account WHERE isDeleted=true ALL ROWS];
        //ALL ROWS is used in Undelete operation mostly
    
           undelete accList;
        //Database.undelete(accList);
        //Database.undelete(accList,true);
        //Database.undelete(accList,false);
           
           }
    
}