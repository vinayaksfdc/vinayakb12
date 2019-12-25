public class wrp_accs {
    public list<accs> aw{set;get;}
    public string wname{set;get;}
    public integer wage{set;get;}
    public string wcity{set;get;}
    public  wrp_accs()
    {
      aw=  new list<accs>();
   }
     public void create(){
	 accs W2=new accs();
	 W2.name=Wname;
	 W2.age=Wage;
	 W2.city=Wcity;
	 aw.add(W2);
 }	
    public void updte()
    {
       for(integer i=0;i<=aw.size();i++)
       {
           
       }
    }
}