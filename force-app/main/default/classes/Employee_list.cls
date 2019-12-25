public class Employee_list {
    Public Employee emp{set;get;}
    Public List<Employee> employees{set;get;}
    public boolean flag1{set;get;}
    public boolean flag2{set;get;}
    public boolean flag3{set;get;}
    public Employee_list()
    {
        
        flag1=true;//add
        employees=new List<employee>();
        flag2=false;//submit
        flag3=false;//data
        
    }
    public void add()
    {
        flag3=true;
       flag2=true; 
       
       emp=new Employee(); 
       flag1=false; 
    }  
    public void submit()
    {
        flag1=true;
         flag2=false;
        flag3=false;
        employees.add(emp);
        emp=new Employee(); 
       
        
    }    
        
    
}