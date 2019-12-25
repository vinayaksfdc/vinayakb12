public class fld_depen {
 
    Public List<Selectoption> statop{set;get;}
    public Map<String,List<string>>  mp{set;get;}
    public set<String> key{set;get;}
    public List<String> myData {set;get;}
    
    public fld_depen()
    {
		 statop=new List<selectoption>();
             
            
            List<string> tel=new List<string>{'Hyderabad','secunderabad','mehdipatnam'};
            List<string> maha=new List<string>{'pune','lonava','satara'};
            List<string> che=new List<string>{'siruseri','tambaram'};
                
         mp.put('Telangana',tel);
         mp.put('Maharastra',maha);
         mp.put('Chennai',che);
                
        set<String> key=mp.keySet();
        
    }

}