public class massdel {
    public List<Account> accounts {set;get;}
    public massdel(Apexpages.StandardSetController controller){
        List<String> fields =new List<String>{'Name','Phone','Industry','Rating'};
            controller.addFields(fields);
        accounts =(List<Account>)controller.getSelected();
    }
    public PageReference updateRecords(){
        Database.delete(accounts,false);
        PageReference p=new PageReference('/001');
        return p;
    }
}