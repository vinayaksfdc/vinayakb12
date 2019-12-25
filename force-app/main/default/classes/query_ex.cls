public class query_ex {
    public string quer{set;get;}
     public string name{set;get;}
    public query_ex()
    {
        quer='select name,phone,industry from account ';
        quer=quer+'where name=\'';
        quer=quer+'satish'+'\'';

           
    }
}