public class wrp2 {
    public List<custwrap1> cs{set;get;}
    
    public wrp2(){
        List<account> accslist=[select name,industry,phone,rating from account where name='raj'];
        cs=new List<custwrap1>();
        for(account a:accslist )
        {
            custwrap1 r=new custwrap1();
            r.acc=a;
            r.isselected=false;
            cs.add(r);
        }
      }
    public void deleteacc()
        {
            for(integer i=0;i<cs.size();i++){
                if(cs[i].isselected==true)
                {
                    cs.remove(i);
                    i--;
                }
            }
        }     
}