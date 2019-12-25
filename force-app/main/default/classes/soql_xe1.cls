public class soql_xe1 {
    
    public List<Account> accounts {set;get;}
    public void search(){
      accounts=[select Name,Phone,Industry,rating from Account];
    }

}