public class schema_objects {
    public List<String> objects {set;get;}
    public Map<String, Schema.SObjectType> gd{set;get;}
    public set<string> Listobjects{set;get;} 
    public List<schema.SObjectType> objvalues{set;get;}
    public List<string> descResult{set;get;}
    public schema_objects(){
         gd =  Schema.getGlobalDescribe(); 
        
        Listobjects=gd.keySet();
        system.debug(ListObjects);
        
        objvalues=gd.values();
        system.debug(objvalues);
        
        Schema.DescribeSObjectResult[] descResult = Schema.describeSObjects(
                                                                   new String[]{'Account'});
		system.debug(descResult);
        for(Schema.DescribeSObjectResult  k1:descResult )
        {
           
            
        }
        
    }
}