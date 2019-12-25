public class Multi_select {

	public Map<String, Schema.SObjectType> gd {set;get;}
	public list<selectoption> objects {set;get;}
	public list<selectoption> fields {set;get;}
    public schema.describesobjectresult res{set;get;}
	public string objselected {set;get;}
   	public  Map<String,Schema.SobjectField> fldMap{set;get;}
       
 	 
    
  
    public String selectedobject{set;get;}
    public string query{set;get;}
    public List<selectoption> leftside{set;get;}
    public List<selectoption> rightside{set;get;}
    public set<string> selected{set;get;}
    public Set<string> notselected{set;get;}
    public List<string> addfields{set;get;}
    public List<string> removefields{set;get;}
    public  List<string> keyss {set;get;}
    public List<string> cities{set;get;}
    public List<sobject> result{set;get;}
    
    public List<string> display {set;get;}
    
    public List<select_operator> fieldList{set;get;} 
    public List<selectoption> foption {set;get;}
    public List<string>	 fieldnames {set;get;}
    public List<string>  operatornames {set;get;}
    
    public Multi_select()
    {
	     gd=new   Map<string,Schema.SObjectType>();
         objects=new List<selectoption>();
         fields=new List<selectoption>();
      	 cities=new List<string>();
        	leftside=new List<selectoption>();
            rightside=new List<selectoption>();
            selected=new set<string>();
            notselected=new set<string>();
            addfields=new List<string>();
            removefields=new List<string>();
        
         foption=new 	List<selectoption>();
        
          
     	Schema.SObjectType selectedobj=gd.get(objselected);
        schema.describesobjectresult res=selectedobj.getdescribe();
        fldMap =res.fields.getMap();
        for(string s: fldmap.keySet())
        {
            selectoption op1=new selectoption(s,s);
   			 fields.add(op1);
        } 
         fieldList =new List<select_operator>(); 
     	 operatornames=new List<string>{'=','!=','<','>'};
 	 	 fieldnames=new List<string>();
        add12();  
     }   
    public void getData()
    {
        Selectoption op3=new Selectoption('none','none');
        fields.add(op3);
        leftside.clear();
        fields.clear();	
         Schema.SObjectType selectedobj=gd.get(objselected);
        schema.describesobjectresult res=selectedobj.getdescribe();
        fldMap =res.fields.getMap();
        notselected.addAll(fldmap.keySet());
        for(string s: fldmap.keySet())
        {
            selectoption op1=new selectoption(s,s);
   			 fields.add(op1);
        } 
        system.debug(keyss);
        createoptions();
    }
     public void createoptions()
             {
                 rightside.clear();
                 leftside.clear();
                 if(selected.size()>0)
                 {
    	             for(string s:selected)
                        {
                          selectoption op=new selectoption(s,s);
                           rightside.add(op); 
                        }
                 } 
               	else
                {
                selectoption op1=new selectoption('none','none');  
                rightside.add(op1); //acc fields, con fields, opp fields
                }    
            	if(notselected.size()>0)
                {
                for(string s:notselected)
                {
                selectoption op=new selectoption(s,s);
                leftside.add(op); 
                system.debug(leftside);
                }
                    } 
                	else
                    {
                      selectoption op1=new selectoption('none','none');  
                      leftside.add(op1); 
                	}    
             }    
    			public void add()
                {
                    notselected.removeAll(addfields);
                    selected.addAll(addfields);
                    createoptions();
                }   
                public void Del()
                {
                    selected.removeall(removefields);
                    notselected.addAll(removefields);
                    createoptions(); 
                }    
            public void add12()
            {
                select_operator fw=new select_operator(fieldnames, operatornames);
				fieldList.add(fw);	    
            }    
    		public void fetchData()
            {
                 query='select id';
                 for(string s:selected)   
                 {
                 query=query+','+s;   
                 }    
                  query=query+' from '+selectedobject;   
                	System.debug(query);
                  result=Database.query(query);
                System.debug(result);
                 display=new List<string>(selected);
            }    
}