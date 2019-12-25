public class acc_page {
    public String name{set;get;}
	public String industry{set;get;}
    public String rating{set;get;}
    Public List<Account> accounts{set;get;}
    Public Account acc {set;get;}
    public acc_page(){
		accounts=new List<Account>();	
     	acc=new Account();
        
    }
    public void add()
    {
        accounts.add(acc);
        acc=new Account();
    }    
    
}