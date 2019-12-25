public class JSON_Example_7 {
    public String jsonString {set;get;}
    public List<Integer> ages {Set;get;}
    public void JSON_Example_7(){
        ages =new List<Integer>();
        jsonString='{"Name":"Kiran","Salary":10000,"Age":30,"Marks":[10,20,30]}';
        System.JSONParser jp=JSON.createParser(jsonString);
        while(jp.nextToken()!=null){
            if(jp.getCurrentToken() ==System.JSONToken.VALUE_NUMBER_INT){
                Integer a =(Integer)jp.getIntegerValue();
                ages.add(a);
                
            }
        }
    }
}