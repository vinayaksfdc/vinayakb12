public class List_Wrapper1 {
    public list<List_Wrapper> w1{set;get;}
    public string wname{set;get;}
    public integer wage{set;get;}
    public string wcity{set;get;}
    
    public List_Wrapper1()
    {
        w1=new list<List_Wrapper>();
    }
    public void create()
    {
        List_Wrapper wr=new List_Wrapper();
        wr.name=wname;
        wr.age=wage;
        wr.city=wcity;
        w1.add(wr);
    }   
    public void del()
    {
        for(integer c=0;c<W1.size();c++)
        {
            if(W1[c].F1==True) 
            {
            W1.remove(c);
            c--;
            }
        }
    }    
}