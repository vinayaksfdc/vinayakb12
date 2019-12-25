global class brdaymail implements Database.Batchable<SObject> 
{
      global Database.QueryLocator start(Database.BatchableContext bc)
      	{
           	Date tody=System.today();
           String query = 'SELECT Id, Name,DOB__C,email__C FROM Candidate__c WHERE DAY_IN_MONTH(DOB__c) = ' + 
           tody.day() +  ' AND CALENDAR_MONTH(DOB__c) = ' + tody.month();

  		   return Database.getQueryLocator(query);
     	}
    global void execute(database.BatchableContext bc,List<Candidate__c> scope)
                   {
                         List<Messaging.SingleEmailMessage> mailList = new List<Messaging.SingleEmailMessage>();
                       		for(Candidate__c m:scope)
                            {
                         List<String> toAddresses = new List<String>{m.Email__c};           
                         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
           				 mail.setToAddresses(toAddresses);
           				 mail.setSubject('Happy Birthday');
           				String messageBody = '<html><body>Hi ' + m.Name + ',<br/>Happy Birthday.<br/>Many More Happy '+
                        'Returns of the day.<br/><br/><b>Regards,</b><br/>Admin</body></html>';
          				 mail.setHtmlBody(messageBody); 
           				 mailList.add(mail);          
                            }
                       Messaging.sendEmail(mailList);        
                   }
    				global void finish(database.BatchableContext bc)
                        {
                            
                        }     
                   

}