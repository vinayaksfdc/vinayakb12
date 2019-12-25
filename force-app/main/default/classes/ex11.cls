public class ex11{
public Map<String,List<string>> citymap{set;get;}
    public List<selectOption> cities{set;get;}
    public List<selectOption> places{set;get;}
    public String selected{set;get;}
    
            public ex11()
                {
                citymap =new Map<String,List<string>>();
                cities =new List<selectOption>();
                places=new List<selectOption>();
                List<String> hplaces=new List<String>{'charminar','bachupally'}; 
                List<String> pplaces=new List<String>{'lonavala','mumbai'};
                    citymap.put('hyd',hplaces);
                    citymap.put('pune',pplaces);
                Set<String> key=citymap.keySet();
                     SelectOption n=new SelectOption('none','-none-'); 
                    cities.add(n);
                    places.add(n);
                for(String s:key)
                {
                    SelectOption op=new SelectOption(s,s);
                    cities.add(op);
                }
                    
             }
           
    public void getData() 
    {
        places.clear();
        SelectOption op=new SelectOption('none','-none-');
        places.add(op);
        
        if(selected!='none')
            {
             List<string> myplaces=citymap.get(selected);
                for(String s:myplaces)
                {
                    SelectOption op1=new SelectOption(s,s);
                    places.add(op1);
                    
                }
            }
    }
}