public class w {
    public List<wrapper_w> wr{set;get;}
    public string wname{set;get;}
	public integer wage{set;get;}
    public w(){
        wr=new List<wrapper_w>();
        
    }
    public void create()
    {
     
      wrapper_w  w1=new wrapper_w();
       w1.name=wname;
        w1.age=wage;
        wr.add(w1);
    }
 
}