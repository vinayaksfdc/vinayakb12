trigger trigger123 on Account (before insert) {
    For(Account a:trigger.new)
    {
       Map<string,AccountIndustry__c> lstv=AccountIndustry__c.getAll();
         
      
    }

}