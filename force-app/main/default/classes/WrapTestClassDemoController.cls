public with sharing class WrapTestClassDemoController{
    List<string> lstselectedNames = new List<string>();
    public PageReference selRecDisplay() {
        for(wrapper w: lstwrap){
            if(w.ischecked==true){
                lstselectedNames.add(w.Name);
            }
        }
    List<Account> lstselectedrecords = [select Id,name,Phone from Account where name in : lstselectedNames];
    List<String> lstselectedRecordIds = new List<String>();
    for(Integer i=0;i<lstselectedrecords.size();i++){
        lstselectedRecordIds.add(lstselectedrecords[i].Id);
    }
    string s='';
    for(Integer i=0;i<lstselectedRecordIds.size();i++){
        if(i<lstselectedRecordIds.size()-1)
            s=s+lstselectedRecordIds[i]+':';
        else
            s=s+lstselectedRecordIds[i];
    }
    pagereference ref = new pagereference('/apex/WrapperClassDemoPage2?value='+s);
    ref.setredirect(true);
    return ref;
 }
    
    List<wrapper> lstwrap = new List<wrapper>();
    List<Account> lsttest = new List<Account>();
    public List<wrapper> getTestingrecords() {
        lsttest = [select Id,name,Phone from Account];
        for(Integer i=0;i<lsttest.size();i++){
            lstwrap.add(new wrapper(lsttest[i].name,lsttest[i].Phone));
        }
    return lstwrap;
    }
    public class wrapper{
        public String Name{get;set;}
        public String Phone{get;set;}
        public boolean ischecked{get;set;}
        public wrapper(String Name,String Phone){
            this.Name=Name;
            this.Phone=Phone;
            this.ischecked=false;
        }
     }
}