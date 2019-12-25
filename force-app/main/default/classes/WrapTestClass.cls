public with sharing class WrapTestClass {
	List<string> lstselectedNames = new List<string>();
	public PageReference selRecDisplay() {
		for(wrapper w: lstwrap){
			if(w.ischecked==true){
				lstselectedNames.add(w.Tname);
			}
		}
		List<Account> lstselectedrecords = [select Id,name,Industry from Account where name in : lstselectedNames];
		List<String> lstselectedRecordIds = new List<String>();
		for(Integer i=0;i<lstselectedrecords.size();i++){
			lstselectedRecordIds.add(lstselectedrecords[i].Id);
		}
		string s='';
		for(Integer i=0;i<lstselectedRecordIds.size();i++) {
			if(i<lstselectedRecordIds.size()-1)
			s=s+lstselectedRecordIds[i]+':';
			else
			s=s+lstselectedRecordIds[i];
		}
		pagereference ref = new pagereference('/apex/t123?value='+s);
		ref.setredirect(true);
		return ref;
	}

	List<wrapper> lstwrap = new List<wrapper>();
	List<Account> lsttest = new List<Account>();
	public List<wrapper> getTestingrecords() {
		lsttest = [select Id,name,Industry from Account];
		for(Integer i=0;i<lsttest.size();i++) {
			lstwrap.add(new wrapper(lsttest[i].name,lsttest[i].Industry));
		}
		return lstwrap;
	}
	public class wrapper{
		public String Tname{get;set;}
		public String Tcity{get;set;}
		public boolean ischecked{get;set;}
		public wrapper(String Tname,String Tcity) {
			this.Tname=Tname;
			this.Tcity=Tcity;
			this.ischecked=false;
		}
	}
}