public class http_example1 {
 
public string endpoint{set;get;}
   
    public string body{set;get;}
    public void call()
    {
        http p=new http();
        httprequest request=new httprequest();
        request.setEndpoint(endpoint);
		request.setMethod('GET');        
        HttpResponse response=p.send(request);
        body=response.getbody();
    }
 
}