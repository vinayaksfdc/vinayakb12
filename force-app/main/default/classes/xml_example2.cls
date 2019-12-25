public class xml_example2 {
    public string result{set;get;}
    public xml_example2()
    {
        dom.Document doc=new dom.Document();
        dom.XmlNode root=doc.createrootelement('College',null,null);
        root.setAttribute('code', '1243');
         root.setAttribute('University', 'OU');
 		dom.xmlnode Name=root.addChildElement('Name',null,null);
        name.addTextNode('satish');
        dom.xmlnode phone=root.addchildelement('Phone',null,null);
        phone.addTextNode('02343');
        dom.xmlnode address=root.addchildelement('address',null,null);
        dom.XmlNode state=address.addchildelement('state',null,null);
        state.addTextNode('TN');
        dom.XmlNode city=address.addchildelement('city',null,null);
        city.addtextnode('hyd');
        result=doc.toXmlString();
    }  
}