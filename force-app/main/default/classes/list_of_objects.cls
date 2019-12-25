public class list_of_objects {
    public List<selectoption> leftside {set;get;}
    public List<selectoption> rightside {set;get;}
    public set<string> selected {set;get;}
    public set<string> notselected {set;get;}    
    public List<string> addfields {set;get;}    
    public List<string> removefields {set;get;}   

    public list_of_objects()
 {
     leftside=new List<selectoption>();
     rightside=new List<selectoption>();
     selected=new set<string>();
     notselected=new set<string>();
     addfields=new List<string>();    
     removefields=new List<string>();    
     
     List<string> countries=new List<string>{'IND','US','UK'};
         
     	  notselected.addAll(countries);	
     	  createoptions();	
     	 	
 }   
            public void createoptions()
            {
               leftside.clear();
                rightside.clear();
                 
                    if(selected.size()>0)
                    {
                        for(String s: selected)   
                        {
                           selectoption op3=new selectoption(s,s); 
                           rightside.add(op3);
                        }  
                    } 
                    else
                    {
                        selectoption o1=new selectoption('none','none');
                        rightside.add(o1);
                    }    
                    
                        if(notselected.size()>0)
                        {
                            for(String s: notselected)   
                            {
                             selectoption op2=new selectoption(s,s); 
                             leftside.add(op2);
                            }  
                        } 
                        else
                        {
                            selectoption o1=new selectoption('none','none');
                            leftside.add(o1);
                        }
                
            }   
    			public void add()
                {
                 notselected.removeall(addfields);   
                 selected.addAll(addfields); 
                  	  createoptions();	  
                }   
    			
    			public void del()
                {
                 selected.removeAll(removefields);   
                 notselected.addAll(removefields);   
                 createoptions();	
                }
    		
}