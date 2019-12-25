public class pge_refernce_example {
    public string selected {set;get;}
        public PageReference invoke()
        {
             PageReference p;
            if(selected=='student')
            {
                p=new PageReference('/apex/student_Form');
            }
            else{
                if(selected=='employee')
        		{
             	p=new PageReference('/apex/employee_form');
            	}
            	}
        return p;
            
        }
   
}