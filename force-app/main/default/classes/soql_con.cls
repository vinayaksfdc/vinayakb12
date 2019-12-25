public class soql_con {
    public list<contact> cont{set;get;}
    public soql_con()
    {
        cont=[SELECT AccountId,FirstName,Id,LastModifiedDate FROM Contact];
        
    }    
}