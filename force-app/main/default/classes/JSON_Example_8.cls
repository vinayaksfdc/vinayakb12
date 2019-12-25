public class JSON_Example_8 {
    public String jsonString {set;get;}
    public Account acc       {set;get;} 
    public  void JSON_Example_8(){
        jsonString ='{"Name":"Kiran","Age":30,"acc":{"Name":"Wipro","Industry":"Banking","Phone":"050-123"}}';
        System.JSONParser jp=JSON.createParser(jsonString);
        while(jp.nextToken()!=null){
            if(jp.getText()=='acc'){
                jp.nextToken();
                acc =(Account)jp.readValueAs(Account.class);
               
            }
        }
    }
}