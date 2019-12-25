public class Offset_Example_6 {
    public List<Account> accounts {set;get;}
    public Offset_Example_6(){
        accounts =[select id,name,phone ,industry from Account];
    }   
    public void setData(){
        accounts =[select Id,Name,Phone ,Industry from Account offset 10];
    }
    public void invoke(){
        Integer size=20;
        accounts =[select Id,Name,Phone,Industry from Account offset :size];
    }
    public void callMe(){
        accounts =[select Id,Name,Phone,Industry from Account  limit 5 offset 5];
    }
    public void invokeData(){
         Integer size=10;
         accounts =[select Id,Name,Phone,Industry from Account  limit:size  offset:size];
    }
}