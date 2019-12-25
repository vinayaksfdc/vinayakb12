public class xml_example {
    public string result{set;get;}
    public xml_example()
    {
        dom.Document doc=new dom.Document();
        dom.XmlNode root=doc.createrootelement('Name',null,null);
        dom.XmlNode lname=root.addChildElement('lastname', null,null);
        lname.addTextNode('satish');
        dom.XmlNode fname=root.addChildElement('firstname',null,null);
        Fname.addTextNode('myla');
        
        result=doc.toXmlString();    
    } 

}