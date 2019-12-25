public class Parent_child {
    public Account acc{set;get;}
    public Opportunity  opp{set;get;}
    public String msg{set;get;}
    public parent_child()
    {
        acc=new Account();
        opp=new Opportunity ();
	         
    }
    public void add()
    {
        insert opp;
         opp=new Opportunity ();
        msg='oppurtunities inserted in Account record';
    }    
}