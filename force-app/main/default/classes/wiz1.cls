public class wiz1 {
    public Account account{set;get;}
    public wiz1()
        {
           Id id=apexpages.currentPage().getparameters().get('ID');
            account=[select id,name,phone from account where id=:id];
        }
    public pagereference Save()
        {
            update account;
            pagereference pr=new pagereference('/apex/wiz2?id='+account.id);
            return pr;
        }

}