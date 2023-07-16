public class LeadTriggerNT14Handler {
    
    public static void afterInsertHandler(List<Lead> leadList){
        
        
         List<Task> myTasks = new List<Task>();
        
        for(Lead w : leadList){ //Trigger.new is coming from trigger file.. and it is transformed into Lead list in parameter
            if(w.Industry == 'Education'){
             Task taskObj = new Task(Subject='Task is created After a lead record is updated with Education Industry!', WhoId=w.Id);
                myTasks.add(taskObj);
                
            }           
        }
      insert myTasks;
        
        
    }

}