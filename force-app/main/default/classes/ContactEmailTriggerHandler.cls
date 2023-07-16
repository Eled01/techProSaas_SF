public class ContactEmailTriggerHandler {
    
    public static void sendEmailNotification(List<Contact> conList){
        
        List<Messaging.Email> emailList = new List<Messaging.Email>(); //multiple emails can be sent...
        
        
        for(Contact con : conList){
            
            if(con.Email != null){ // if there is email of the contact, create the email and send it to contact itself.
                
                Messaging.SingleEmailMessage emailMsg = new  Messaging.SingleEmailMessage();
                
                String[] toAddress = new String[]{con.Email}; //define your recipient,
                   emailMsg.setToAddresses(toAddress);  // and assign address field of the emailMsg object...
                
                String emailSub = 'Welcome' + con.FirstName + ', You record is created in Salesforce!';
                emailMsg.setSubject(emailSub);
                
                String disName = 'Mathias!';
                emailMsg.setSenderDisplayName(disName);
                
                String content = 'Hi ' + con.FirstName + ' ' + con.LastName + ', <br/>' + 
                    'Welcome to the Salesforce EcoSystem! <br/>' +
                    'Study hard in your Salesforce journey :sunglasses: <br/>'+
                    'Happy Learning! <br/> ' + 
                    'Thank You! <br/>';
                emailMsg.setHtmlBody(content);
                emailList.add(emailMsg);
                
            }         
        }
        Messaging.sendEmail(emailList);
    }

}