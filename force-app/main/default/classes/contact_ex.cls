public class contact_ex {
    public void insertcont(integer recordstoinsert)
    {
       List<contact> con_list=new List<contact>();
        
   		for(integer i=0;i<=recordstoinsert;i++)
        {
            contact c=new contact();
            
        c.lastName='Bulk';
        c.firstname= 'apex'+i+'@gmail.com';
        c.department='Development';
        c.phone='9999999999';
             
       		 con_list.add(c);
        
          }    
		 
     
         if(! con_list.isEmpty())
         {
            insert con_list; 
         }   
          
   }


}