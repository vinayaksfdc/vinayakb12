global class batchjob implements database.Batchable<sobject>{
    global decimal totalrevenue=0;
global database.QueryLocator start(database.BatchableContext bc)
{
    string query='select name,phone,industry,rating,annualrevenue from account where annualrevenue!=null';
    return database.getQueryLocator(query);
}
    global void execute(database.BatchableContext bc,List<account> datatobeprocessed)
    {
         if(datatobeprocessed.isEmpty())
         {
             for(Account record:datatobeprocessed)
             {
                  
                 totalrevenue+=record.annualrevenue;
             }
         }    
    }
    global void finish(database.BatchableContext bc)
    {
         }
}