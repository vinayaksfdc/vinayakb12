trigger example1 on Account (before insert) {
    List<AccountTeamMember> teams =new List<AccountTeamMember>();
    for(Account a: Trigger.new){
        if(a.AnnualRevenue > 5000000){
            AccountTeamMember atm=new AccountTeamMember();
            /* Id of the account on which you want to create AccountTeammember */
            atm.accountId=a.id;
            /* Id of the user who you want to make as teammember */
            
            /* TeamMember Role */
            atm.TeamMemberRole='Account Manager';
            atm.AccountAccessLevel='Read';
            teams.add(atm);
        }
    }
    insert teams;

}