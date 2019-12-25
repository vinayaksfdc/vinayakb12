public class Mult_fieldepndcny {
 public Map<string,List<string>> statemp{set;get;}
    public List<selectoption> state{set;get;}
    public List<selectoption> city{set;get;}
  
    public String selected1 {set;get;}
    
    public List<selectoption> leftside{set;get;}
    public List<selectoption> rightside{set;get;}
    public set<string> selected{set;get;}
    public Set<string> notselected{set;get;}
    public List<string> addfields{set;get;}
    public List<string> removefields{set;get;}
    public  List<string> keyss {set;get;}
    public List<string> cities{set;get;}
    
    public List<select_operator> fieldList{set;get;} 
    public List<string>			 fieldnames {set;get;}
    public List<string> 		 operatornames {set;get;}
    
    public Mult_fieldepndcny()
    {
	     statemp=new   Map<string,List<string>>();
         state=new List<selectoption>();
         city=new List<selectoption>();
      	 cities=new List<string>();
        	leftside=new List<selectoption>();
            rightside=new List<selectoption>();
            selected=new set<string>();
            notselected=new set<string>();
            addfields=new List<string>();
            removefields=new List<string>();
        
        List<string> Tplaces=new List<string>{'hyderabad','secunderabad','chilkalguda','chikkadpally'};
        List<string> Mplaces=new List<string>{'pune','mumbai','lonavala'}; 
     	List<string> Bplaces=new List<string>{'BTM Layout','marthali','HSR Layout','domlur'}; 
            
        	statemp.put('Telangana', Tplaces);
        	statemp.put('Maharastra', Mplaces);
        	statemp.put('Bangalore', Bplaces);
          
        	SelectOption op=new SelectOption('none','none');
        	state.add(op);
        	city.add(op);
        	
        set<string> keys=statemp.keySet();
        for(String s:keys)
        {
            selectoption op1=new selectoption(s,s);
            state.add(op1);
        } 
         
        fieldList =new List<select_operator>(); 
     	 operatornames=new List<string>{'=','!=','<','>'};
 	 	 fieldnames=new List<string>{'name','industry','rating'};    
      add();  
        
    }   
    public void getData()
    {
        
        Selectoption op3=new Selectoption('none','none');
        city.add(op3);
        
         leftside.clear();
        			  city.clear();	
                    keyss=statemp.get(selected1);
        			notselected.addAll(keyss);
                   
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
                        rightside.add(op1); 
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
}