public class Json_example {
    
    public Student std{set;get;}
    public string val{set;get;}
    public Json_example(){
        val='{"name":"rakesh","branch":"bhoiguda","phone":"1234"}';
                    std=(Student)Json.deserialize(val, Student.class);
    }
}