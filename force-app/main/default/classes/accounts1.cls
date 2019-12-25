public class accounts1 {
    public  apexpages.standardsetcontroller controller{set;get;}
	public List<account> getacc()
    {
        List<Account> accs= (List<account>) controller.getRecords();
        return accs;
        
    }    
    public accounts1()
    {
        List<account> accs=[select id,name,phone,industry from account];
        controller=new apexpages.standardsetcontroller(accs);
        controller.setPageSize(5);
    }     
}