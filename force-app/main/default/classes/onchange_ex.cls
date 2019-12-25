public class onchange_ex {
    public Map<String,List<String>> cityMap {set;get;}
    public List<SelectOption> cities        {set;get;}
    public List<SelectOption> places        {set;get;}
    public String selected1              {Set;get;}
 
     
    
    public List<SelectOption> leftSide      {set;get;}
    public List<SelectOption> rightSide     {set;get;}
    public Set<String> selected             {set;get;} // This will contain names of those fields which are selected
    public Set<String> notSelected          {Set;get;} // This will contain names of those fields which are notSelected
    public List<String> addFields           {set;get;}
    public List<String> removeFields 		{set;get;}
    public string objectDesc  {set;get;}
    public List<String> fields  {set;get;}     
    public  List<String> myplaces {set;get;} 
    
    public list<selectoption> options {set;get;}
    
    public onchange_ex(){
        
 cityMap		=new Map<String,List<String>>();
 cities         =new List<SelectOption>();
 places   		=new List<SelectOption>();
  
 leftSide       =new List<SelectOption>();
 rightSide      =new List<SelectOption>();
 selected       =new Set<String>();
 notSelected    =new Set<String>();
 addFields      =new List<String>();
 fields         =new List<String>();
 myplaces       =new  List<String>();
 removeFields 	=new List<String>();        
        
        
        
        
        
        fields= new List<string>();
        myplaces=new List<string>();
        // We have created a map with cityName as key and list of places as values 
        cityMap=new Map<String,List<String>>();
        
        // Create a list of Hyderabad places
        List<String> hplaces =new List<String>{'SRNagar','LBNagar'};
            
        // Create a list of banglore places 
        List<String> bplaces =new List<String>{'BTM','Marthali'};
            
        // Create a list of chenai places 
        List<String> cplaces =new List<String>{'TNagar','Chromepet'};
            
        // Put the city Name along with corresponsing places as values 
        cityMap.put('Hyd',hplaces);
        cityMap.put('Ban',bplaces);
        cityMap.put('Che',cplaces);
        
        // Create none option and add them to cities and places options 
        SelectOption n=new SelectOption('none','-None-');
        cities =new List<SelectOption>();
        places =new List<SelectOption>();
        cities.add(n);
        places.add(n);
        
        // Get all the keys from the map using keySet()
        Set<String> keys =cityMap.keySet();// Hyd,Ban,Che
        // Take one by one cityNames from the set and create new Options
        for(String s: keys){
            SelectOption op=new SelectOption(s,s); // s-Hyd : ItemLabel=Hyd ,ItemValue=Hyd
            cities.add(op);
             
        }
    }
            public void details()
            {
               
                 // When we ever getData is invoked remove all the options from the places .
                        leftSide.clear();
        				rightSide.clear();
                		 
                // Add none option to the places.
                SelectOption n =new SelectOption('none','-None-');
                places.add(n);
                
                        // If citySelected is not equals to none then fetch corresponding places.
                        if(selected1 !='none')
                        {
                            // Fetch the corresponding places based on city Name selected
                            
                            myPlaces =cityMap.get(selected1);
                        
                           
                            notselected.addAll(myPlaces);
                            show();
                            
                         }
                
            }
    			   public void show()
                   {
                       rightside.clear();
                       leftside.clear();
                       
                         for(string s:notselected)
                       		{
                            selectoption op3=new selectoption(s,s);
                            leftside.add(op3);
                             }  
                           
                             
                        
                   }
    
    
    
           
}