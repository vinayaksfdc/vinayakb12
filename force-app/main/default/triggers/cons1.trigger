trigger cons1 on Contact (before insert) {
    
    
       for(contact a:trigger.new)
    {
        if(a.lastname=='raj')
        {
           a.phone='123';
        }
        
        
    }
    

}