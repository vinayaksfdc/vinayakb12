trigger ex_l1 on Opportunity (before insert) {

       for(Opportunity o: Trigger.New)
       {
        
        o.StageName='prospecting';
        
    }
}