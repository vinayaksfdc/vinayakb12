trigger approval_acc on Account (after insert) {
    for(Account a:Trigger.new)
    {
        if(a.rating=='hot')
        {
              // Create an approval request for the account
        Approval.ProcessSubmitRequest req1 =new Approval.ProcessSubmitRequest();
        req1.setObjectId(a.id);
      req1.setProcessDefinitionNameOrId('Test1');
             Approval.ProcessResult result = Approval.process(req1);
        
        }
            
    }
}