trigger trg on Account (before delete) {
    for(Account a:trigger.old)
    {
        a.adderror('Record cannot be deleted');
    }

}