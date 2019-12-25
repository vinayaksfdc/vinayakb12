public class emp_class {
    public List<emp_wrapper> ew{set;get;}
    public emp_class(){
        
        ew=new List<emp_wrapper>();
       emp_wrapper e1=new emp_wrapper(); 
    	e1.empname='raj';
        e1.salary=30000;
        e1.exp=3;
        
    ew.add(e1);
        
          emp_wrapper e2=new emp_wrapper(); 
    	e2.empname='rpsingh';
        e2.salary=50000;
        e2.exp=7;
         ew.add(e2);
    
    }
        
}