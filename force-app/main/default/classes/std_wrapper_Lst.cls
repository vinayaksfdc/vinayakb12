public class std_wrapper_Lst {
     public List<std_wrapper> Lstd{set;get;}
     public std_wrapper wr {set;get;}
    public string wname{set;get;}
    public integer wrollno{set;get;}
    public integer wage{set;get;}
    public integer x{set;get;}
    public std_wrapper_Lst()
    {
        Lstd=new List<std_wrapper>();
    }
	public void create()
    {
        wr=new std_wrapper();
        wr.name=wname;
        wr.rollno=wrollno;
        wr.age=wage;
        Lstd.add(wr);
    }    
    public void del()
    {
          for(integer c=0;c<Lstd.size();c++)
          {
             if(Lstd[c].f1==true) 
              {
                  Lstd.remove(c);
                  c--;
              } 
              
     		}    
            
    }    
    public void edit()
    {
          for(integer c=0;c<Lstd.size();c++)
          {
             if(Lstd[c].f1==true) 
              {
                  Wname=Lstd[c].name;
				  Wage=Lstd[c].age;
				  wrollno=Lstd[c].rollno;
                  x=c;
                  break;
              } 
              
     		}    
        
    }    
    public void saveedited()
        {
            Lstd[x].name=wname;
            Lstd[x].age=wage;
            Lstd[x].rollno=wrollno;
            
        }    
          
}