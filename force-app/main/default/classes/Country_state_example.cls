public class Country_state_example {
public Map<string, List<string>> count{set;get;}
public List<selectoption> Countries  {set;get;}     
public List<selectoption> Places  {set;get;}
public string Selected {set;get;}   
    public Country_state_example()
    {
        count=new Map<string, List<string>>();
        Countries=new List<selectoption>(); 
        places=new List<selectoption>(); 
        List<string> Iplaces=new    List<string>{'Mumbai','Delhi','Bangalore'};
        List<string> Uplaces=new    List<string>{'Mexico','Illinious'};
        List<string> Kplaces=new    List<string>{'Lanchester','London'};    
         count.put('IND',Iplaces);
         count.put('US',Uplaces);
         count.put('UK',kplaces);
        Selectoption op1=new selectoption('none','none');
        countries.add(op1);
        set<string> key=count.keySet();
        for(string s: key)
        {
          Selectoption op=new SelectOption(s,s);
          Countries.add(op);  
        } 
    }    
    	public void getData()
        {	
             places.clear();
            	Selectoption op3=new Selectoption('none','none');
            	Places.add(op3);
                 if(selected!='none')
                 {
                    List<string> keys=count.get(selected);
                     for(string s:keys)
                     {
                      selectoption op4=new SelectOption(s,s);
                      places.add(op4);   
                     }    
                     
                 }    
        }
}