public class wizard {
	account a=new account();
    contact c=new contact();
    opportunity o=new opportunity();
    
    public account geta()
    {
        return a;
    }
        public contact getc()
    {
        return c;
    }
        public opportunity geto()
    {
        return o;
    }
    
    public pagereference accs_page()
    {
        return page.accs_page;
    }
    public pagereference cons_page()
    {
        return page.cons_page;
    }   
    public pagereference opps_page()
    {
        return page.opps_page;
    }   
    public pagereference review()
    {
        return page.review;
    }   
    public pagereference thankyou()
    {
        return page.thankyou;
    }   
    
     public pagereference  save_all()
    {
        insert a;
        c.AccountId=a.Id;
        insert c;
        o.AccountId=a.Id;
        insert o;
        
      return page.thankyou;
    }  
}