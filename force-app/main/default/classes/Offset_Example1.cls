public class Offset_Example1 {

    public Offset_Example1(ApexPages.StandardController controller) {

    }

       public List<Account> accounts {set;get;}
    public Offset_Example1(Apexpages.StandardSetController controller){
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