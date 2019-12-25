public class sec_options {
 
    public string selected{set;get;}
    public List<account> accs{set;get;}
    public List<string> fieldindustry{set;get;}
    public List<selectoption> options{set;get;}
    public string rating{set;get;}
    public string industry{set;get;}
    public string query{set;get;}
   public sec_options()
    {
       options=new List<selectoption>();
       
    }
    public void querysearch()
    {
        options.clear();
         selectoption op1=new selectoption('none','none');
            options.add(op1);
      query='select name from account';
       
          if(rating!='' && rating!=null && industry!='' && industry!=null)
        {
            query=query+' where rating=\''+rating+'\' and industry=\''+industry+'\'';
        }   
        else
        {
            if(rating!='' && rating!=null)
            {
              query=query+' where rating=\''+rating+'\'';  
            } 
            else
            {
                   if(industry!='' && industry!=null)
            {
              query=query+' where industry=\''+industry+'\'';  
            }  
            }    
        } 
            system.debug(query);
       
        accs=database.query(query);
 	  
        for(account a:accs)
        {
            selectoption op=new selectoption(a.name,a.name);
            options.add(op);
        }  
        
    }
}