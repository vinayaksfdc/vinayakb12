public class INsert_accnt {
    public contact con {set;get;}  
    public string msg{set;get;}
    public INsert_accnt()
  	{
      con=new contact();
    }
    public void create()
    {
        Integer count=[select count() from contact where firstname=:'con.firstname'];
        if(count>0)
        {
            msg='duplicate record';
        }  
        else
        {
          msg='record inserted';  
        }    
    }    
       
}