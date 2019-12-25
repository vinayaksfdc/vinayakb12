public class Ma_1 {
    public List<selectoption> options{set;get;}
    public List<string> account {set;get;}
    public Ma_1()
    {
        options=new List<selectoption>();
        List<string> acc=new List<string>{'Name','industry','banking'};
            for(string s: acc)
        {
            selectoption op=new selectoption(s,s);
            options.add(op);
            
        }
        
        
        
    }    
    
}