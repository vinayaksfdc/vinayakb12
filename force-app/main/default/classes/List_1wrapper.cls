public class List_1wrapper {
    public List_1wrapper lwr{set;get;}
    public string wname{set;get;}
    public integer wsalary{set;get;}
    public integer wage{set;get;}
    public List_1wrapper()
    {
    	lwr=new List_1wrapper();
        
    }    
    public void create()
    {
       wrapper wr=new wrapper();
       wr.name=wname;
       wr.age=wage;
       wr.salary=wsalary;
        
           
    }    
}