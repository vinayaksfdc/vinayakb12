public class selectedBankCon {
 
    public List<WrapBank> wrapBankList { get; set; }
    public List<Account> selectedBanks{get;set;}        
    public Account bank {get;set;}   
       
    public selectedBankCon() {                              
        selectedBanks = new List<Account>(); 
       if(wrapBankList ==null){
          wrapBankList =new list<WrapBank>();
          for(Account b:[select Name, phone, industry, rating From Account limit 10]){
           wrapBanklist.add(new wrapBank(b));          
           }                       
        }
 }
 public PageReference step1() {
   return Page.selectedBankPage;
 }
     public PageReference step2() {
        selectedRecords();        //this method was added so that only step2 button will be clicked        
        return Page.selBankPage2;
    }
  public void selectedRecords(){
     selectedBanks =new List<Account>();     
      for(WrapBank wra : wrapBanklist){
           if(wra.isSelected == true){
           selectedBanks.add(wra.wbk);
           }                 
         }
    }
    public PageReference cancel() {
           PageReference bankPage = new ApexPages.StandardController(bank).view();
           bankPage.setRedirect(true);
            return bankPage; 
    } 
 public PageReference Save() {       
       upsert selectedBanks;
           return null;   
 }
    public Pagereference saveAndNew() {  
               Save();
   String str = ApexPages.currentPage().getUrl().subStringAfter('/');
     return new PageReference('/apex/' + str).setRedirect(true);
}

    public class WrapBank {    
    public Account wbk {get;set;}
    public boolean isSelected {get;set;}
     
       public WrapBank(Account b){     
         wbk=b;
         isselected=false;
       }
  }

}