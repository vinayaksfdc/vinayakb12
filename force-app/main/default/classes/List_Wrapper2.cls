public class List_Wrapper2 {
    public List<List_wrapper> wrap {set;get;}
    public List_Wrapper w{set;get;} 
    public string wname{set;get;}
    public integer wage{set;get;}
    public string wcity{set;get;}
    
    public List_Wrapper2()
    {
       wrap=new List<List_wrapper>();
         
    }
    public void create()
    {
       w=new List_Wrapper();
        w.flag=false;
        w.name=wname;
        w.age=wage;
        w.city=wcity;
        wrap.add(w);
        
        
    }    
}