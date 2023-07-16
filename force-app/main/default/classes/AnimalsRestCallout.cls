public class AnimalsRestCallout {
    
    public static void getAnimals(){
        
        Http httpNT = new Http(); //just click on new on postman
        HttpRequest request = new HttpRequest(); //click on HTTP req
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');//provide endpoint in the box
        request.setMethod('GET');
        HttpResponse response = httpNT.send(request);
        
        if(response.getStatusCode() == 200){//when data comes successfully, convert into apex and print on the console
            /*
            //Parse the data: convert from json to apex
            //parsing should be put into a template> casting operation: and then assign intoa container
          Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody()); //parsing....
            
            List<Object> animals = (List<Object>) results.get('animals');
            for(Object w : animals){
                System.debug(w);
            }
			*/
            //2. way: use another class to parse the data...(parser class..)
            RestAnimalParser rAnmlPars = RestAnimalParser.parse(response.getBody());
            
            for(Object w : rAnmlPars.animals){
                System.debug(w);
            }
        }
    }




 //POST Method
    public static void postAnimals(){
        
            Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json; charset=utf-8'); //data type of body
        request.setBody('{"name" : "king in the north"}'); // body to create

       HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==201){
            System.debug(response.getBody());
            
        }else{
            
            System.debug('There is an unexpected issue: ' + response.getStatus() + ' - ' + response.getStatusCode());
        }
        
    }
}