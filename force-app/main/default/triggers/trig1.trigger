trigger trig1 on Opportunity(before insert) 
        {
        Map<Id,Account> accounts = new Map<Id,Account>();
         for(opportunity o:trigger.new) 
         {
       accounts.put(o.accountid,null);
         }
     accounts.remove(null);
     accounts.putAll([select id,name,phone,industry,rating,type from account where id in :accounts.keyset()]);
        for(opportunity o:trigger.new)
    {
    if(accounts.containskey(o.accountid)) 
    {
         o.Name = accounts.get(o.accountid).Name;
    }
  }
}