public class Listofcontactschildnotmorethan2 {

    public list<contact> cons{set;get;}
    public list<contact> conssizegr2{set;get;}
    public Listofcontactschildnotmorethan2()
    {
          cons=[select id,name,accountid,account.name from contact where accountid!= null];
 
		 

    }
	  


}