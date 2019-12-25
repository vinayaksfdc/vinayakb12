public class detailList {
    Public List<account> accs{set;get;}
    
    public detailList()
    {
    	accs=[select name,phone,rating,industry,type from Account];    
        
    }    
}