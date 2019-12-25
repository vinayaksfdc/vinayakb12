public class wiz {
    public Account account{set;get;}
    public wiz()
        {
            Account=new Account(); 
        }
    public pagereference Save()
        {
            insert account;
            pagereference pr=new pagereference('/apex/wiz1?id='+account.id);
            return pr;
        }
}