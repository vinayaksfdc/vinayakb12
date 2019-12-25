global class birthdaymail implements database.Batchable<sobject> {
    global database.QueryLocator start(database.BatchableContext bc){
        Date d=system.today();
		String query='select id,First_Name__c,DOB__c,Email__c from Candidate__c where DAY_IN_MONTH(DOB__c)= ' + d.day()
            + 'and CALENDAR_MONTH(DOB__c) = '+d.month();
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,List<candidate__c> scope)
    {
        List<Messaging.SingleEmailMessage> maillist= new List<Messaging.SingleEmailMessage>();
        for(Candidate__C a:scope)
        {
            list<string> lst=new list<string>{a.Email__c};
                Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
               message.setToAddresses(lst);
          	   message.setSubject('Happy Birthday');
            	String messageBody = '<html><body>Hi ' + a.First_Name__c + ',<br/>Happy Birthday.<br/>Many More Happy '+
                        'Returns of the day.<br/><br/><b>Regards,</b><br/>Admin</body></html>';
          		  message.setHtmlBody(messageBody); 
           				 mailList.add(message);          
        }
         Messaging.sendEmail(mailList);  
    }
    global void finish(database.BatchableContext bc){
        
    }

}