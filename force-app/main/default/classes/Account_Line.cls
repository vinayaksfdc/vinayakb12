public class Account_Line {

    public List<Account_Wrapper> accounts {set;get;}
    public List<Account> selected     	  {set;get;}
    public Boolean flag                   {Set;get;}
    public Account_Line()
    {
        accounts =new List<Account_Wrapper>();
        system.debug('Accounts is '+accounts);
     	add();
    }
    public void add(){
        Account_Wrapper aw =new Account_Wrapper();
        system.debug('aw is '+aw);
        aw.acc=new Account();
        system.debug('aw.acc is '+aw.acc);
        accounts.add(aw);
    }
    
    
 
 

}