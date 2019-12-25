public class sosl_example {
   
    public List<Account> accounts{set;get;}
	public sosl_example()
    {
        accounts=[SELECT Industry,Name,Phone FROM Account where name='raj' ]; 
        }
}