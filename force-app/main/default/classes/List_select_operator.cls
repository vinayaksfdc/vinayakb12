public class List_select_operator {
    public List<select_operator> fieldList{set;get;} 
    public List<string>			 fieldnames {set;get;}
    public List<string> 		 operatornames {set;get;}
      public List<string> 		 accfields{set;get;}
    public List_select_operator()
    {
      fieldList =new List<select_operator>(); 
      operatornames=new List<string>{'=','!=','<','>'};
 	  fieldnames=new List<string>();    
        List<string> accfields=new List<string>{'AccountNumber',' AnnualRevenue',' CreatedById',' CreatedDate',' Id',' Industry',' LastActivityDate',' LastModifiedById',' LastModifiedDate',' LastReferencedDate',' LastViewedDate',' Name',' OwnerId',' Ownership',' ParentId',' Phone','PhotoUrl','Rating'};
      	
            fieldnames.addAll(accfields);
        	system.debug(accfields);
            add();        
    }    
    
    public void add()
    {
    	select_operator fw=new select_operator(fieldnames, operatornames);
		fieldList.add(fw);	        
    
    }
}