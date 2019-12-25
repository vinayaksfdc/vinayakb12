public class cont {
    public string lastname{set;get;}
    public string phone{set;get;}
    Public list<Contact> con{set;get;}
        public cont(){
            con= new list<Contact>();
            contact c1=new contact(lastname='bule',phone='99999');
            contact c2=new contact(lastname='Ali',phone='88888');
            contact c3=new contact(lastname='singh',phone='88666');
            con.add(c1);
            con.add(c2);
            con.add(c3);
            
            
        }

}