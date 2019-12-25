public class schema_example 
{
public Map<String, Schema.SObjectType> gd {set;get;}
public list<selectoption> objects {set;get;}
public list<selectoption> fields {set;get;}
    public schema.describesobjectresult res{set;get;}
	public string objselected {set;get;}
   	public  Map<String,Schema.SobjectField> fldMap{set;get;}
    
public schema_example()
    {
    gd= Schema.getGlobalDescribe();
    objects=new list<selectoption>();
    fields=new list<selectoption>();
    set<string> ss=gd.keyset();
        List<string> objnames=new List<string>(ss); 
        objnames.sort();
    for(string s:objnames){
    selectoption op=new selectoption(s,s);
    objects.add(op);
    }
}
    public void getData()
    {
    	Schema.SObjectType selectedobj=gd.get(objselected);
        schema.describesobjectresult res=selectedobj.getdescribe();
        fldMap =res.fields.getMap();
        for(string s: fldmap.keySet())
        {
            selectoption op1=new selectoption(s,s);
   			 fields.add(op1);
        } 
             
    }
}