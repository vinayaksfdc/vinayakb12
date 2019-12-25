public class http_example {
    public string endpoint {set;get;}
    public string body{set;get;}
    public string result{set;get;}
     public List<Map<String,String>> bookMap {set;get;}
    public void getData()
    {
	   result='';
        
        http p=new http();
        HTTPRequest req=new HTTPRequest();
        req.setMethod('GET');
        req.setEndpoint(endpoint);
        HTTPResponse response=p.send(req);
        body=response.getBody();
        Dom.Document doc=new Dom.Document();
        doc.load(body);
        dom.XmlNode root=doc.getRootElement();
        List<dom.XmlNode> books=root.getChildElements();
        for(Dom.XmlNode bk: books)
        {
            
            List<dom.XmlNode> childs=bk.getChildElements();
            for(Dom.XmlNode c:childs)
            {
                result= result+'======>'+c.getName()+':'+c.getText();
            }   
 
          }
    } 
     
}