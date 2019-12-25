public class pg_refer {
    public string selected{set;get;}
 	public string name{set;get;}
    
    public Pagereference callme()
    {
        if(selected=='housing'){
             Pagereference p=new Pagereference('/apex/housing_loan');
            return p;
           
        }else{
            if(selected=='personal'){
                Pagereference p=new Pagereference('/apex/personal_loan');
                return p;
            }
                    else{
                        return null;
                    }
        }
        
    }
}