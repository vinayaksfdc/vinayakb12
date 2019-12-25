trigger trigprevdel on Account (before delete) 
{
        for(Account a: trigger.old)
        {
                    {
                        a.adderror('You cannot delete the record'); 
                    }
        }
}