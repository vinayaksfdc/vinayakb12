public class select_operator {
     public   List<SelectOption> fields  {set;get;}
     public  List<SelectOption>  operators{set;get;}
     Public  String value                {set;get;}
   
        public  select_operator(List<string> flist,List<string> olist)
        {
            fields=new List<SelectOption>();
      		operators=new List<SelectOption>();
        	selectoption op3=new selectoption('none','none');
            fields.add(op3);
             for(string s:flist)
                {
                   SelectOption op=new SelectOption(s,s);
                   fields.add(op);
                }
                	 
              for(string s1:olist)
                {
                    SelectOption op1=new SelectOption(s1,s1);
                 	operators.add(op1);
                }     
            
            
            
        }
 
}