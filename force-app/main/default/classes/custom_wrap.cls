public class custom_wrap {

    public ID recordID{set;get;}
	public string firstname{set;get;}
    public string lastname{set;get;}
    public string emailid{set;get;}
    public string contactnumber{set;get;}
    public string faxnumber{set;get;}
    

    
  public custom_wrap(Contact conrecord)
    {
        recordID=conrecord.id;
        firstname=conrecord.firstname;
        lastname=conrecord.lastname;
		emailid=conrecord.email;
		contactnumber=conrecord.phone;
		faxnumber=conrecord.fax;        
        
    }
}