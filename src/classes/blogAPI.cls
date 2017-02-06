public with sharing class blogAPI {

    @AuraEnabled
    public static String getBlogData(String uuid){
        HttpRequest req = new HttpRequest();
    	req.setEndpoint('http://ui-blog.herokuapp.com/Blog/api/?uuid=' + uuid);
        req.setMethod('GET');
        Http http = new Http();
   		HTTPResponse res = http.send(req);
    	return res.getBody();
    }


}
