public class xz1 {
    public String nme     {set;get;}
    public List<string> accs{set;get;}
    Public List<account> acc{set;get;}	
    
    public List<SelectOption> options {set;get;}
public String name                {set;get;}
public String selected            {set;get;}
    
public xz1(){
     accs=new List<string>();
options =new List<SelectOption>();
        List<String> nme =new List<String>();
        /* Create none option */
        SelectOption op1 =new SelectOption('none','-None-');
	options.add(op1);
            for(Account a:[select id,name from Account limit 10])
         			accs.add(a.Name);  
for(String s:accs){
            /* Create new Options based on the city name in 's' */
            SelectOption op=new SelectOption(s,s);
options.add(op);
        }
    system.debug('selected val is'+selected);
    }

       
 
}