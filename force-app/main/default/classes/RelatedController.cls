public class RelatedController {
    public Case selectedCase {get;set;}
    public List<Account> accs {get;set;}
    public RelatedController(ApexPages.StandardController std){
        if(selectedCase==null){
            selectedCase = new Case();
        }
    }
    public PageReference readUser(){
        accs = [SELECT Name FROM account];
        System.debug('%%'+accs+'%%'+selectedCase.account);
        return null;
    }
}