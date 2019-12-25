global class batch2 implements database.Batchable<sobject> {
global database.QueryLocator start(database.BatchableContext bc)
{
  string query='select name,phone,industry from account ';
    return database.getQueryLocator(query);
}
    global void execute(database.BatchableContext bc,List<account> scope)
    {
         for(Account a: scope)
        {
            
                a.rating='warm';
            
            
        } 
        update scope;
    }
	global void finish(database.BatchableContext bc)
    {
        
    }    
}