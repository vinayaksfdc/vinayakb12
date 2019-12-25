public class acc_refer {
    public account acc{set;get;}
	public acc_refer()
    {
        acc=new account();
    }
	public pagereference create()
    {
        insert acc;
        pagereference p=new pagereference('/'+acc.Id);
        return p;
        
    }    
}