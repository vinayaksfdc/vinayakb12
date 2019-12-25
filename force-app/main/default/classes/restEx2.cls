@RestResource(urlmapping='/newCustomer/*')
global  class restEx2 {
    @HTTPGET
    global static string create(){
        RestRequest request=RestContext.request;
        RestResponse response=RestContext.response;
		String name=request.params.get('name');
        String industry=request.params.get('industry');
        
        system.JSONGenerator js=Json.createGenerator(true);
        js.writeStartObject();
        try{
            Account acc=new Account();
                acc.Name=name;
                acc.Industry=industry;
                
                insert acc ;
                js.writeString('Status');
                js.writeIdField('ID',acc.id);
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