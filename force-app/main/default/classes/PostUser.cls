public class PostUser {

    
    //Create a user in goRest system....
    public static void postGoRest(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setMethod('POST');
        request.setHeader('Authorization', 'Bearer dab5c092f4f7901bd750c7f54c950d355ad0363325dca30d7420216a56af97be'); //token is provided
        request.setHeader('Content-Type', 'application/json; charset=utf-8'); //data type of body
        request.setBody('{ "name": "martin", "email": "Eledizadana01@hotmail.com",  "gender": "male", "status": "active" }'); // body to create

       HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==201){
            System.debug(response.getBody());
            
        }else{
            
            System.debug('There is an unexpected issue: ' + response.getStatus() + ' - ' + response.getStatusCode());
        }
        
    }
        
        
    }