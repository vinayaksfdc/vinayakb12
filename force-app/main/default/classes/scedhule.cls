public class scedhule implements Schedulable{
    public void execute(schedulablecontext bc){
        List<Account> accs=[select id,name,phone from Account where createdDate=TODAY];
                delete accs;
         
    }
}