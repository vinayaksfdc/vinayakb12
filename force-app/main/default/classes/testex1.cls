public class testex1 {
    public string industry{set;get;}
    public string rating{set;get;}
    public string ownership{set;get;}
    
    public void test1()
    {
        if(industry=='energy')
        {
            rating='hot';
            ownership='public';
        } 
        else
        {
            rating='cold';
            ownership='private';
        } 
         
    }
    
}