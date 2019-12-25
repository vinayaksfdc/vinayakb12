public class addsub {
    public void insertcont(integer recordstoinsert)
    {
       List<Hiring_Manager__c> hr_list=new List<Hiring_Manager__c>();
        
   		for(integer i=0;i<=recordstoinsert;i++)
        {
            Hiring_Manager__c hr=new Hiring_Manager__c();
            
        hr.Name='Apex-'+i;
        hr.Email__c= 'apex'+i+'@gmail.com';
        hr.Location__c='hyderabad';
        hr.Mobile_Number__c='9999999999';
             
       		 hr_list.add(hr);
        
          }    
	 
         if(! hr_list.isEmpty())
         {
            insert hr_list; 
             for(Hiring_Manager__c h:hr_list)
             {
                 system.debug('the list is '+h.id);
             }
         }   
          
   }
}