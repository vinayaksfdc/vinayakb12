public class Country_picklist {
     public Map<string,List<string>> countmap{set;get;}
     Public List<SelectOption> country {set;get;} 
     Public List<SelectOption> state  {set;get;}
  	 public string selected {set;get;}
   
    public Country_picklist ()
    {
     
        	countmap=new Map<string,List<string>>();
            country=new List<SelectOption>(); 
            state=new List<SelectOption>();
        
            List<String> iplaces=new List<string>{'mumbai','pune','delhi'};    
            List<String> uplaces=new List<string>{'Illinious','texas','california'};
            List<String> ukplaces=new List<string>{'London','manchester','greenwich'};    
                countmap.put('IND',iplaces);
				countmap.put('US',uplaces);
				countmap.put('UK',ukplaces);
        
         selectoption no=new selectoption('none','none');
        	country.add(no);
        	state.add(no);
        
           Set<string>  k =countmap.keySet();
        	
            for(string s: k)
            {
             Selectoption op=new SelectOption(s,s);
             country.add(op);
                system.debug('country');
            }    
      }
    			public void getData()
                {
                   state.clear();
                    selectoption n1=new selectoption('none','none');
                    state.add(n1);
                  if(selected!=null)
                  {
                      List<string> keys=countmap.get(selected); 
                      for(string s:keys)
                      {
                          selectOption op1=new Selectoption(s,s);
                          state.add(op1);
                      }    
                  }    
                }    
    
}