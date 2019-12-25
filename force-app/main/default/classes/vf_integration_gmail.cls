public class vf_integration_gmail {
    public string accessToken{set;get;}
     public string result{set;get;}
    public void  getcontacts(){
	Http p=new Http();
HttpRequest request=new HttpRequest();
String url='https://www.google.com/m8/feeds/contacts/default/full';
request.setEndPoint(url);
request.setMethod('GET');
System.debug('acce  ================='+accessToken);
request.setHeader('Authorization','Bearer '+accessToken);
request.setHeader('GData-Version','3.0');
HttpResponse response =p.send(request);
Result=response.getBody();
        
        
        
    }

}