public class schema_2 
{
    public   Map<String, Schema.SObjectType> gd{set;get;}
    public set<string> key{set;get;}
    public List<Schema.SObjectType> val{set;get;}  
    public List<selectoption> opts{set;get;}
     
  //  public set<string> obj1{set;get;}
    //public List<string> op {set;get;}
    public schema_2()
    {
        opts=new List<selectoption> ();
    gd =Schema.getGlobalDescribe();
 	set<string> key=gd.keySet();
     List<Schema.SObjectType> val = gd.values();   
        for(string s:key)
        {
            selectoption op=new selectoption(s,s);
            opts.add(op);
        }   
        
          
        
    }    
}