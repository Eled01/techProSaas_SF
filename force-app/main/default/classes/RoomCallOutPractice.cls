public class RoomCallOutPractice {
    
    
    public static void getRoom(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://medunna.com/api/rooms');
        request.setMethod('GET');
        request.setHeader('Authorization', 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtdGtheWE2MSIsImF1dGgiOiJST0xFX0FETUlOIiwiZXhwIjoxNjkxODUwNzE4fQ.MkLCcNQuX9lWLkINEZTER_kpdym_X0psYLbV_0GQm_zRaUKwf5FoTgKL_befZEgvqFcbQrmc95vHpF4mBMQJfA');
    	HttpResponse response =  http.send(request);
        
        //1st way
        System.debug('Status Code: ' + response.getStatus() + ' - ' + response.getStatusCode());
        System.debug('Data ' + response.getBody());
    	  System.debug('-----------------------');
        
        
        //Best way
        //1st step is deserialization 
        //2nd step is casting...
       List<Object> roomData = (List<Object>) JSON.deserializeUntyped(response.getBody()); //convert to Apex
        for(Object w: roomData){
            
            System.debug('ROOM Info: ' + w);
        }
        
        System.debug('-----------------------');
        
        
        //3rd way
       Object roomData2 = (Object) JSON.deserializeUntyped(response.getBody());
        System.debug(roomData);
        
    }
}