global class bachex1 implements database.Batchable<sobject>{
    global database.QueryLocator start(database.BatchableContext bc){
        string Query;
        Query='SELECT id,Name,rating FROM Account';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,List<account> scope)
    {
    for(Account a:scope)
        if(a.rating==NUll)
        {
            a.rating='hot';
        }
        update scope;
    }
    global void finish(database.BatchableContext bc){
        
    }

}