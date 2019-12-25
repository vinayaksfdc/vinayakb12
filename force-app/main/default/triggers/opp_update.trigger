trigger opp_update on Opportunity (before update)
{
    map<id,opportunity> oldmap=trigger.oldmap;
    map<id,opportunity> newmap=trigger.newmap;
        set<id> keys=oldmap.keyset();
        
    for(id k:keys)
    {
        opportunity oldm=oldmap.get(k);
        opportunity newm=newmap.get(k);
        if(oldm.StageName!='closed won' && newm.StageName=='closed won')
        {
            
            
        }
        
    }
}