public class outbound_email_ex {

    public void outbound()
    {
        List<contact> cons=[select id,email from contact where createddate=today];
        List<string> et=new List<string>();
        for(contact c: cons)
        {
            if(c.email!='' || c.email!=Null)
            {
                et.add(c.email);
            } 
        }
        Messaging.Singleemailmessage msg=new Messaging.SingleEmailmessage();
        msg.setToAddresses(et);
        msg.setSubject('Welcome');
        msg.setPlainTextBody('Hello sir');
        messaging.Email[] emails=new Messaging.email[]{msg};
        messaging.sendEmail(emails);
        
    }  
}