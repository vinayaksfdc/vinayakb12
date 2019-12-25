public with sharing class WrapTestClassDemoController2{
    List<Account> lsttest = new List<Account>();
     String url = apexpages.currentpage().getparameters().get('value');
    public List<Account> getRecords() {
        List<String> ids = url.split(':');
        lsttest = [select Id,name,Phone from Account where id in : ids];
        return lsttest;
    }
 }