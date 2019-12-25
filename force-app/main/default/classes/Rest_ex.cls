@RestResource(urlmapping='/MyContact/*')
global  class Rest_ex {
    @HTTPPOST
    global static string invoke(String lastName,String firstName, String phone){
        system.JSONGenerator js=Json.createGenerator(true);
        js.writeStartObject();
        try{
            contact con=new contact();
                con.LastName=lastName;
                con.FirstName=firstName;
                con.Phone=phone;
                insert con;
                js.writeStringField('Status','SUCCESS');
                js.writeIdField('ID',con.id);
            } 
            catch(Exception e)
            {
                js.writeStringField('Status','Failed');
                 js.writeStringField('Error', e.getTypeName());
                
            }
            
         js.writeEndObject();
        String result=js.getAsString();
        
        return result;
    } 
}