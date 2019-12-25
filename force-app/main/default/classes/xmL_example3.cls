public class xmL_example3 {
    public string result{set;get;}
    public string searchresult{set;get;}
   public void search()
   {
       Account acc=[select id,name,phone,industry,(select firstname,lastname,phone from contacts) from account where name=:searchresult];
       
       Dom.Document doc=new dom.Document();
       dom.XmlNode root=doc.createrootelement('Company',null,null);
        root.setAttribute('Name', acc.name);
        root.setAttribute('industry', acc.industry);
        root.setAttribute('phone', acc.phone);
        dom.XmlNode head=root.addChildElement('Header', null, null);
    	head.setAttribute('Status', 'Success'); 
	    head.setAttribute('Persons',''+acc.contacts.size());   
        
            if(acc.contacts.size()>0)
            {
                 for(Contact c:acc.contacts)
                 {
                dom.XmlNode Person=root.addChildElement('Person', null, null);
                dom.xmlnode lname=Person.addChildElement('lastname', null, null);
                dom.xmlnode fname=Person.addChildElement('firstname', null, null);   
                dom.xmlnode phone=Person.addChildElement('phone', null, null); 
              	lname.addTextNode(c.firstname);
                fname.addTextNode(c.lastname);
				phone.addTextNode(c.phone);
                 }    
                 result=doc.toXmlString();
             }    
           
       
   }
}