trigger case1 on Case (before insert) {
        for(case c: trigger.new)
        {
            c.status='working';
            
            
        }    
}