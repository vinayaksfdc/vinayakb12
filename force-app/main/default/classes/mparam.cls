public class mparam {
    public String inputText3 {get;set;}
     public String inputText4 {get;set;}
    public mparam(){
        inputText3 = apexpages.currentpage().getparameters().get('att');
        inputText4 = apexpages.currentpage().getparameters().get('att1');
        
    }

}