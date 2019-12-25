trigger trigger_example_opp on Opportunity (after  insert) {
    
    for(Opportunity op: trigger.new)
    {
        for(Opportunity o1:[select id,accountid from Opportunity])
        {
            if(o1.accountid==op.AccountId)
            {
                op.adderror('Error Cannot create opportunity');
            }
        }
    }
}