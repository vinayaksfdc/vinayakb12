public class schema1 
{
    public   Map<String, Schema.SObjectType> gd{set;get;}
    public set<string> obj1{set;get;}
    public List<selectoption> op{set;get;}
    public list<selectoption> fields1 {set;get;}
    public string selected{set;get;}
    public Map<string,schema.sobjectfield> mfields{set;get;}
    public string fields{set;get;}
    public string fselected{set;get;}
    public schema1()
    {
        op=new List<selectoption>();
        gd = Schema.getGlobalDescribe(); 
        obj1=gd.keySet();
        List<string> objnames=new List<string>(obj1);
        objnames.sort();
        for(string s:objnames)
        {
            selectoption op4=new selectoption(s,s);
            op.add(op4);
        }
        
    }    
    public void getData()
    {
        Schema.SObjectType obj=gd.get(selected);        
        
        Schema.DescribeSObjectResult result=obj.getdescribe();
        mfields=result.fields.getMap();// get all fields
        for(string s: mfields.keySet())
        {
            selectoption op4=new selectoption(s,s);
            fields1.add(op4);
            
        }
    }
}