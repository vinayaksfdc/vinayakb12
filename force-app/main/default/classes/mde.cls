public class mde {
    public void create()
    {
       profile p=[select id from profile where name='Field Executive'];
	   userrole u1=[select id from userrole where name='HR_manager']; 
        user u=new user();
        u.alias='kranti';
        u.Email='kranti@gmail.com';
        u.emailencodingkey='UTF-8';
        u.LanguageLocaleKey='en_US';
        u.Localesidkey='en_US';
        u.ProfileId=p.id;
        u.userroleid=u1.id;
        u.timezonesidkey='America/Los_Angeles';
        u.username='Koteshswamy@gmail.com';
        u.lastname='reddy';
        insert u;
           
        account a=new account();
		a.name='Raj';
		a.Email__c='rajkmr@gmail.com';
		insert a;
    }
}