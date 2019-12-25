public class parent_child1 {
    public List<account> accs{set;get;}
    public parent_child1()
    {
        accs=[select id,Name,Phone,Industry ,(select FirstName,LastName FROM Contacts),(select Name,stagename from opportunities) from account];
        
        
    }    
}