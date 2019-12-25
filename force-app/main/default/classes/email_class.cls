public class email_class {
    public string subject{set;get;}
	public string email_body{set;get;}
    List<String> toadd=new List<String>{'vinayakb2@gmail.com'};
            public pagereference send()
            {
                Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
                msg.setSubject(subject);
                msg.setPlainTextBody(email_body);
                msg.setToAddresses(toadd);
                
                Messaging.Email[] emails =new Messaging.Email[]{msg};
                    Messaging.sendEmail(emails);                  
                return null;
            }    
}