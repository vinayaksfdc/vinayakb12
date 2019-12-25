public class facebook {
    public string client_id{set;get;}
    public string client_Secret{set;get;}
    public string access_Token{set;get;}
    public string result{set;get;}
    public void request()
    {
        String endpoint='https://graphs.facebook.com/oauth/access_token?';
        	endpoint=endpoint+'client_id'+'client_secret';
        		endpoint=endpoint+'&grant_type=client_credentials';
        
        HTTP p=new HTTP();
        HTTPRequest request=new HTTPRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        HTTPResponse response=p.send(request);
        result= response.getBody();
    }
}