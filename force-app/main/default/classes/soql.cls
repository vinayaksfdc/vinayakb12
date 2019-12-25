public class soql {
    public List<string> accs{set;get;}
    	
    public soql()
    {
        accs=new List<string>();
        
        for(Account a:[select id,name from Account limit 10])
         			accs.add(a.Name);           	 	   
            }
}