public class Job_skills {
    public List<selectOption> options{set;get;}
    public List<String>  ss {set;get;}
    public String name{set;get;}
    
    public Job_skills()
    {
        options =new List<selectOption>();
        ss=new List<String>{'none','manual','java','c','salesforce','automation'};
            for(String s: ss)
        {
            SelectOption op=new SelectOption(s,s);
            options.add(op);
        }
        
    }
}