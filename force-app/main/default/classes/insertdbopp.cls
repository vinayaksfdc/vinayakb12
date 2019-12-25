public class insertdbopp {
    
    public insertdbopp()
    {
        List<opportunity> opps =new List<opportunity>();
        Opportunity op1=new Opportunity();
			
        For(integer i=0;i<100;i++)
        {
          op1.Name='Database'+i;
          op1.CloseDate=system.today()+15;
         if(i<=95)   
         {
             op1.StageName='Closed Won';
         }
          opps.add(op1);  
        }  
	   
          {
              Database.SaveResult[] results=Database.insert(opps,false);
             
                  {
                      for(Database.SaveResult res:results)
                      {
                          if(res.isSuccess())
                          {
                              system.debug('record inserted sucessfully'+res.getId());
                          }
                          else
                          {
                              for(database.error err:res.getErrors())
                              {
                                  system.debug('error message'+err.getMessage());
                                  system.debug('error statis code'+err.getStatusCode());
                                  system.debug('error fields code'+err.getFields());
                              }   
                          }
                              
                      } 
                  }
              
              
          }
        
        
        
        
        
    }

}