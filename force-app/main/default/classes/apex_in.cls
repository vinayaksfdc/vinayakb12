public class apex_in {
    public String nme     {set;get;}
    public List<string> accs{set;get;}
    Public List<account> acc{set;get;}	
    public apex_in()
    {
        accs=new List<string>();
        
        for(Account a:[select id,name from Account limit 10])
         			accs.add(a.Name);           	 	   
            }
    
    public void showdetails()
    {
        acc=[select id,name,phone,industry,rating from account where name=:nme];
        
    } 
 
}