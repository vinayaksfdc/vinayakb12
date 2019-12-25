public class Schema_Example_1 
{
public Map<String, Schema.SObjectType> gd {set;get;}
public list<selectoption> options {set;get;}
public list<selectoption> fields {set;get;}
public string selectedobj{set;get;}
public Schema_Example_1()
    {
    gd= Schema.getGlobalDescribe();
    options=new list<selectoption>();
    fields=new list<selectoption>();
    set<string> ss=gd.keyset();
        List<string> objnames=new List<string>(ss); 
        objnames.sort();
    for(string s:objnames){
    selectoption op=new selectoption(s,s);
    options.add(op);
    }
}
    public void getData()
    {
    schema.sobjecttype obj=gd.get(selectedobj); 
        system.debug('obj value is '+obj);
    schema.describesobjectresult res=obj.getdescribe();
    system.debug('res value is '+res);
        Map<string,schema.SObjectField> fldmap=res.fields.getmap();
        system.debug('fldmap value is '+fldmap);
            for(string c:fldmap.keySet())
            {
            selectoption sss=new selectoption(c,c);
            fields.add(sss);
            }
    }
}