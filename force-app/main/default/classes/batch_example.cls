global class batch_example implements Database.Batchable<sobject> 
{
    global database.QueryLocator start(database.BatchableContext bc)
    {
        string query;
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,List<sobject> scope){}
    global void finish(database.BatchableContext bc){}
    
   
    
}