public class OptyLineItems {
    public List<optywrapper> Lineitems {set;get;}
   
    public integer rowno {set;get;}
    public OptyLineItems()
    {
       Lineitems=new List<optywrapper>(); 
      	add();
    }
        public void add()
        {
    	       for(integer i=0;i<=3;i++)
               {
        		 optywrapper pr=new optywrapper(); 
                 Lineitems.add(pr);
               }    
        }
    public void getData()
    {
        optywrapper ow=lineitems.get(rowNo);
        product2 p=[select id from product2 where name=: ow.prodName];
        pricebook2 pr=[select id from pricebook2 where isstandard=true];
        pricebookEntry pe=[select unitprice from pricebookentry where product2.id=:p.id and pricebook2id=:pr.id];
        ow.price=pe.unitprice;
    }
}