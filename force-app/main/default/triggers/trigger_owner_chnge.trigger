trigger trigger_owner_chnge on Account (before insert) {
   user u1=[select id,Name from user where LastName='Manager']; 
    user u2=[select id, Name from user where LastName='Customer'];
    for(account a:Trigger.new)
    {
        if(a.industry=='banking')
        {
            a.ownerid=u2.id;
        }
        else{
            a.OwnerId=u1.id;
        }
    }
}