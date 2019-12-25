trigger exmple on Opportunity (before insert) {
//When ever a new Opportunity is created ,set stagename as Prospecting ,closeDate as 15 days  from today, type as new Customer 
   
    for(Opportunity op:trigger.new)
    {
        
        op.stagename='Prospecting';
        op.closeDate =System.today()+15;    
        
        op.stagename='Customer';
    }

}