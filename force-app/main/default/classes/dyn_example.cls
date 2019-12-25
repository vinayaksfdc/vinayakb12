public class dyn_example {
 
    public List<selectOption> options{set;get;}
    public string query{set;get;}
    public List<string> selected{set;get;}
    public List<account> accounts{set;get;}
	public dyn_example()
    {
       options=new List<selectOption>(); 
        List<String> fields =new List<String>{'Name','Phone','Industry','Rating','Ownership','AnnualRevenue','Active__c'};
                for(String s:fields){ 
                SelectOption op=new SelectOption(s,s);
                options.add(op);
                    
            }

    }
    public void getData()
    {
        query='select id';
        for(string s: selected)
        {
            query=query+','+s;
        } 
        query=query+' from Account limit 15';
        accounts=database.query(query); 
         
    }  
 
}