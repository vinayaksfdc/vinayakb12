public class awacc {
    public List<awrap> aw{set;get;}
    
    
    public awacc(){
        List<account> acclist=[select id,name,industry,phone from Account where industry!=null and phone!=null];
        aw=new List<awrap>();   
        	for(Account a:acclist)
            {
				awrap ar=new awrap();
                ar.acc=a;
                ar.flag=false; 
                aw.add(ar);
            }
       
    }
     
                public void remove()
        {
            for(Integer  i=aw.size()-1;i > 0; --i )
            {
                
            }    
        }
    
}