trigger cont_ex on Contact (before insert) {
for(Contact c: trigger.new)
    {
       if( c.account==null)    
        {
        
         c.addError('Enter Account name');
        
        }
        
    }
}