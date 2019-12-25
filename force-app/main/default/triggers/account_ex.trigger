trigger account_ex on Account (after insert)
{
    User u=[select name from user where name = 'User Development'];
    list<AccountTeamMember> atm1=new list<AccountTeamMember>();
    
    for(Account a: trigger.new)
        {
            if(a.AnnualRevenue>500000)
            {
                AccountTeamMember atm=new AccountTeamMember();
                    atm.AccountId=a.id;
                    atm.AccountAccessLevel='all';
                    atm.TeamMemberRole='Team Lead';
                    atm.UserId=u.id;
                    atm1.add(atm);
            }
        }
     insert atm1;
}