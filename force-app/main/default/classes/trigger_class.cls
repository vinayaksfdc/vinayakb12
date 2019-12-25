public class trigger_class 
{
       public static void trigger_method(List<opportunity> op)
        {
      	   double totalamount = 0;
                for(opportunity op1 : [select Amount from opportunity where createdDate = today and createdById =: UserInfo.getUserId()])
                {
                totalamount += op1.amount;                      
                }
        
            for(opportunity op2 : op)
            {
                totalAmount += totalamount+op2.Amount;
                if(totalAmount > 150000)
                {
                    op2.addError('Total Amount Limit Exceded'); 
                }  
            }
    }
}