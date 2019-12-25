trigger own_id on Opportunity (before insert) {
    
    user u1=[select id,name from user where lastname='manager'];
    user u2=[select id,name from user where lastname='customer'];
    for(Opportunity o:Trigger.new)
        
    {
        if(o.StageName=='Closed Won')
        {
            o.OwnerId=u1.Id;
            o.Amount=1000;
        }
        else
        {
            o.OwnerId=u2.Id;
            o.Amount=5000;
        }
        
    }   
 

        
}