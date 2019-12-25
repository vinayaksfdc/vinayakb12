public class Countries {
    public List<selectoption> leftside{set;get;}
    public List<selectoption> rightside{set;get;}
    public set<string> selected{set;get;}
    public set<string> notselected{set;get;}
    public List<string> addfields{set;get;}
    public List<string> removefields{set;get;}
    public Countries(){
    leftside=new List<selectoption>();
    rightside=new List<selectoption>();
    selected=new set<string>();
    notselected=new set<string>();
    addfields=new List<string>();
    removefields=new List<string>();
                SelectOption none=new SelectOption('none','-None-');
        leftSide.add(none);
        rightSide.add(none);
        
        List<string> countries=new List<string>{'india','US','New Zealand','UK'};
		
        notselected.addAll(countries);
        createoptions();
    }
    public void createoptions()
    {
        leftside.clear();
        rightside.clear();
        selectoption no=new selectoption('none','none');
                if(selected.size()>0)
                {
                    for(string s: selected)
                    {
                        selectoption op1=new selectoption(s,s);
                        rightside.add(op1);	
                    }
                }
        		else
                {
                    rightside.add(no);
                }    
        
        		
        		if(notselected.size()>0)
                {
                  for(string s:notselected)
                   {
                       selectoption op1=new selectoption(s,s);
                       leftside.add(op1);
                   } 
                }  
        		
        		else
                {
                    leftside.add(no);
                }    
        
    }
    
    	public void add()
        {
            notselected.removeAll(addfields);
            selected.addAll(addfields);
            createoptions();
        }
    	public void remove()
        {
            selected.removeAll(removefields);
            notselected.addAll(removefields);
             createoptions();
        }
}