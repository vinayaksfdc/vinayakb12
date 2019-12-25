public class Find_class {
    public list<account> accs{set;get;}
    public string keyword {set;get;}
  
 
    public pagereference search()
    {
        accs=(list<Account>)[find : keyword in all fields 
                             returning account(name,phone,industry,type)][0];
        return null;
    }  
    
    
    
}