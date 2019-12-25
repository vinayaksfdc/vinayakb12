public class SelectOptions {
    public list<account> accs{set;get;}
    public string selected{set;get;}
    public List<string> fieldindustry{set;get;}
    public List<selectoption> options{set;get;}
    public string query{set;get;}
   public selectOptions()
    {
       options=new List<selectoption>();
        fieldindustry=new List<string>{'none','energy','banking','education'};
      	for(string s:fieldindustry)
        {
            selectoption op=new selectoption(s,s);
            options.add(op);
        }    
        
    }
    public void querysearch()
    {
      query='select name,phone,industry from account';
        system.debug(selected);
        if(selected!='none')
        {
            query=query+' where industry=\''+selected+'\'';
        }   
       system.debug(query);
    }    
}