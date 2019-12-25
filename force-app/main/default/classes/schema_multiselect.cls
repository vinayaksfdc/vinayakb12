public class schema_multiselect 
{
public Map<String, Schema.SObjectType> gd {set;get;}
public list<selectoption> objects {set;get;}
public list<selectoption> fields {set;get;}
public schema.describesobjectresult res{set;get;}
public string objselected {set;get;}
public  Map<String,Schema.SobjectField> fldMap{set;get;}
    
    public List<SelectOption> leftSide      {set;get;}
    public List<SelectOption> rightSide     {set;get;}
    public Set<String> selected             {set;get;} // This will contain names of those fields which are selected
    public Set<String> notSelected          {Set;get;} // This will contain names of those fields which are notSelected
    public List<String> addFields           {set;get;}
    public List<String> removeFields        {set;get;}
    
    public   List<string> fldsort {set;get;}
    
    public List<sobject> result{set;get;}
    public string query{set;get;} 
    public List<string> display {set;get;}
    
public schema_multiselect()
    {
        addFields =new List<string>();
        removeFields=new List<String>();
        leftSide =new List<SelectOption>();
        rightSide =new List<SelectOption>();
        selected =new Set<String>();
        notSelected=new Set<String>();
        
             
    gd= Schema.getGlobalDescribe();
    objects=new list<selectoption>();
    fields=new list<selectoption>();
        leftside.clear();
    set<string> ss=gd.keyset();
         SelectOption none=new SelectOption('none','-None-');
        leftSide.add(none);
        rightSide.add(none);
		objects.add(none);
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
        fldsort=new List<string>(fldmap.keySet());
            fldsort.sort();
        	
        // notSelected=new Set<String>(fldsort);    
        	notselected.addAll(fldsort);
        createOptions();
   	 }
  public void createOptions()
   {
        rightside.clear();
        leftside.clear();
       if(notselected.size()>0)
       {
           for(string s: notselected)
           {
            selectoption op4=new selectoption(s,s);
            leftside.add(op4);  
           }    
           
       }   
        	else
                {
                selectoption op1=new selectoption('none','none');  
                rightside.add(op1); 
                } 
          if(selected.size()>0)
       		{
                   for(string s: selected)
                   {
                    selectoption op8=new selectoption(s,s);
                    rightside.add(op8);  
                   }    
            }
       	  else
                    {
                      selectoption op1=new selectoption('none','none');  
                      leftside.add(op1); 
                	}    	
   }
    public void add(){
        notselected.removeAll(addFields);
        selected.addAll(addFields);
        createOptions();
    }
    public void del(){
        selected.removeAll(removeFields);
        notSelected.addAll(removeFields);
        createOptions();
    }
     public void fetchData()
            {
                 query='select id';
                 for(string s:selected)   
                 {
                 query=query+','+s;   
                 }    
                  query=query+' from '+objselected;    
                  result=Database.query(query);
                 display=new List<string>(selected);
            }    
}