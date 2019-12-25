public class set_direct_example 
{
    public String option {get;set;}
    
    public pageReference pass()
    {
        PageReference pg = new PageReference('/apex/set_direct_example1');
        pg.setRedirect(false);
        return pg;
    }
}