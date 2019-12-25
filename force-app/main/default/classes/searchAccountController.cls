public class searchAccountController {
    @AuraEnabled
    public static String getName(String lastName){
        String name='Your Name :'+lastName;
        return name;
    }
    
    
        @AuraEnabled
    public static List<Contact> get10COntacts()
    {
        return [SELECT Id, NAME FROM Contact Limit 10] ;
    }
	 



    
}