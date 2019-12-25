public class acc_ex {
    @AuraEnabled
    public static List<Account> accData(String sindustry,String srating)
    {
	List<Account> accs=[select Id,Name,Phone,Industry,Rating from Account where name=:sindustry and industry=:srating];
	return accs;        
        
    } 
}