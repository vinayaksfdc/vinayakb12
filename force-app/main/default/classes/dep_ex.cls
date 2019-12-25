public class dep_ex {
    @AuraEnabled
    public static map<String,String> getMyMap(){
        Map<String,String> Mymap = new Map<String,String>();
        Mymap.put('IND', 'maharastra');  // Setting key,value in map
        Mymap.put('US', 'Mexico');
        Mymap.put('Uk', 'London');
        return Mymap;
    }
}