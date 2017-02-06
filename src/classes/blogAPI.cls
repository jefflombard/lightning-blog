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

    @AuraEnabled
    public static String newPost(String uuid, String title, String text){
        // add in post requirements

        HttpRequest req = new HttpRequest();
    	req.setEndpoint('http://ui-blog.herokuapp.com/Blog/api/?uuid=' + uuid);
        req.setMethod('GET');
        Http http = new Http();
   		HTTPResponse res = http.send(req);
    	return res.getBody();
    }


}
