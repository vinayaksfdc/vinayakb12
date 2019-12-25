public class schema2 {
	public String pckval{get;set;}
    public List<Object>  vals{set;get;}  
    public list<schema.PicklistEntry> entry{set;get;}
	 public Map<String,Object> resMap {set;get;}
    public schema2()
    {
     resMap=new Map<String,Object>();
  
    Schema.DescribeFieldResult c= Account.industry.getDescribe();
      entry=c.getpicklistvalues();
       system.debug(entry);
        
    }	
}