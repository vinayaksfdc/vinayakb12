public class schema23 {
    public String pckval{get;set;}
    
    public schema23() {
        Schema.DescribeSObjectResult objSchema = Account.sObjectType.getDescribe();
        System.debug('#####values='+objSchema);
        Map<String, Schema.SObjectField> fieldMap = objSchema.fields.getmap();
        system.debug ('XXXXXFields'+ fieldMap);
        for (String fieldName : fieldMap.keySet()) {
            Schema.DisplayType fielddataType = fieldMap.get(fieldName).getDescribe().getType();
            System.debug('##Field API Name='+fielddataType);
            if(fielddataType == Schema.DisplayType.Picklist){
                List<Schema.Picklistentry>fld =fieldmap.get(fieldname).getDescribe().getpicklistValues();
                System.debug('####AAA='+fld);
                for(integer i=0;i<fld.Size();i++){
                    if(pckval !=null){
                     
                        pckval= pckval+fld[i].getvalue()+'/';
                    }
                    else{
                        pckval = fld[i].getvalue()+'/';
                    }    
                }    
                System.debug('@@@@@@@@@@@@picklistvalue@@@@@####String pickvalue ='+pckval);
            }
       } 
    }


}