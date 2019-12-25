trigger isinsert on account(before insert)
{
    List<contact> cons =new List<contact>();

        for(account a: trigger.new)
        {
            if(a.Industry=='banking')
            {
            contact c=new contact();
            c.Lastname=a.name;
            c.phone=a.phone;
            c.OwnerId=a.Id;   
            cons.add(c);    
            }  
            
        }
        insert cons;
   

}