public class ex12 {
    public List<Account> acc{set;get;}
    public ex12(){
        
        acc=[SELECT Id FROM Account WHERE CreatedDate = YESTERDAY];
    
        
    }
    
    
}