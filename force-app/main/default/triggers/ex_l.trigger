trigger ex_l on Lead (before insert) {
    Group g1=[SELECT Name,Type FROM Group where Name='Hyd_salesgrp' and type='Regular'];
    system.debug(g1);
    
    for(Lead l:Trigger.New){
        if(l.rating=='hot' && l.leadsource=='Web')
        {
            l.OwnerId=g1.Id;
          
        }
        
    }
}