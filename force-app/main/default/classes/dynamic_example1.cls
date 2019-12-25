public class dynamic_example1 {
public list<account> acc {set;get;}
public list<user> u {set;get;}
    public string x {set;get;}
public user x1 {set;get;}
public list<selectoption> op {set;get;}
    public dynamic_example1()
    {
    op=new list<selectoption>();
    u=[select name from user];
        for(user u1:u)
        {
		selectoption sp=new selectoption(u1.name,u1.name);
		op.add(sp);
		}
    }
    public void meth()
    {
	acc=[select name,phone,Email__c,owner.name from Account where Owner.name=:x ];
	x1=[select name,Email from user where name=:x ];
	}
	public void displaying()
    {
    account a=[select name,Email__c,id from account where name='rajkumar'];
    pagereference p=new pagereference('/apex/dynamic_example3');
    attachment at=new attachment();
    at.Name='kotesh';
    at.ContentType='application/pdf';
    at.Body=p.getContentAsPDF();
    at.ParentId=a.id;
    insert at;
    Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
    list<messaging.EmailFileAttachment> at2=new list<messaging.EmailFileAttachment>();
    string[] ss=new string[]{x1.Email};
    msg.settoaddresses(ss);
    msg.setsubject('koti');
    messaging.EmailFileAttachment at1=new messaging.EmailFileAttachment();
    at1.setfilename(at.name);
    at1.setbody(at.body);
    at2.add(at1);
    msg.setfileattachments(at2);
    msg.setPlainTextBody('vinnhey');
    messaging.Email[] sm =new messaging.email[]{msg};
    messaging.sendEmail(sm);
    }    
    
}