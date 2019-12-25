public class acc_wr123 {
    public List<acc_wr> wr{set;get;}
    
    public acc_wr123()
    {
       wr =new List<acc_wr>();
    	add(); 
    }
    
    public void add()
    {
        acc_wr r=new acc_wr();
        r.acc=new account();
       
        wr.add(r);
    }  
   
}