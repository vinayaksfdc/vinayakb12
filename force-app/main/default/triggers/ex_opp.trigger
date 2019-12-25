trigger ex_opp on Opportunity (before insert) {
   //User u1=[select id,name from User where name ='Automated Process'];
	  Map<id,Opportunity> oldMap=Trigger.oldMap;
      Map<id,Opportunity> newMap=trigger.newMap;
      		 
      for(ID key:oldMap.keyset())
      {
      	Opportunity oldrec1=oldmap.get(key);
        Opportunity newrec1=newmap.get(key);
          if(oldrec1.stagename!='closed won' && newrec1.stagename=='closed won')
          {
             newrec1.CloseDate=system.today();
             newrec1.Type='New Customer';
             newrec1.LeadSource='email'; 
           //  newrec1.OwnerId=u1.id; 
          }
          
          
          
      }
}