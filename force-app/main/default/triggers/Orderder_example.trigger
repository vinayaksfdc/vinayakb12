trigger Orderder_example on Account (before update) {
    Map<id,Account> oldmap=Trigger.oldmap;
    Map<id,Account> newmap=Trigger.newmap;
    set<id> key_old=oldmap.keySet();//get all keys
    for(id A: key_old)
    {
        Account old=oldmap.get(A);//get all old values in old map
        Account newacc=newmap.get(A);//get all old values in old map
        if(old.Status__c!='ordered' && newacc.Status__c=='ordered')
        {
            
            
            
        }
    }  
}