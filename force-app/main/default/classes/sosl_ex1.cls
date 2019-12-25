public class sosl_ex1 {
    public list<account> accs{set;get;}
 
     public string ratng{set;get;}
    public void submit()
    {
        ratng +='%' ;
		accs=[SELECT Name,Phone,Industry,Rating FROM Account Where name LIKE :ratng];        
    }    
}