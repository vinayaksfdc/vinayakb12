public with sharing class DClass {
	List<Account> lsttest = new List<Account>();
	public List<Account> getRecords() {
		List<String> ids = url.split(':');
		lsttest = [select Id,name,Industry from Account where id in : ids];
		return lsttest;
	}
	String url = apexpages.currentpage().getparameters().get('value');
}