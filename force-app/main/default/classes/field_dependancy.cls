public class field_dependancy {
    public Map<string,List<string>> statemp{set;get;}
    public List<selectoption> state{set;get;}
    public List<selectoption> city{set;get;}
    public List<string> state1 {set;get;}
    public String selected{set;get;}
    public field_dependancy()
    {
	     statemp=new   Map<string,List<string>>();
         state=new List<selectoption>();
         city=new List<selectoption>();
        
        List<string> Tplaces=new List<string>{'hyderabad','secunderabad','chilkalguda','chikkadpally'};
        List<string> Mplaces=new List<string>{'pune','mumbai','lonavala'}; 
     	List<string> Bplaces=new List<string>{'BTM Layout','marthali','HSR Layout','domlur'}; 
            
        	statemp.put('Telangana', Tplaces);
        	statemp.put('Maharastra', Mplaces);
        	statemp.put('Bangalore', Bplaces);
          
        	 Set<string> key=statemp.keySet();
       		
        	for(string s:key)
            {
               selectoption op1=new selectoption(s,s);
                state.add(op1);
            }    
  }
  			public void getData()
            {
                if(selected!='none')
                {
                  List<string> value=statemp.get(selected);   
                    for(string s:value)
                    {
                       selectoption op1=new selectoption(s,s);
                        city.add(op1);
                 	}  
                    
                }    
                
                
            }
}