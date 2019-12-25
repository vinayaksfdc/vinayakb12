public class Controller2{
    public String qry{get;set;}
    public List<sobject> result{set;get;}
    public string values{set;get;}
    public List<string> display {set;get;}
    
    public Controller2(){
        result=new List<sobject>();
        qry = apexpages.currentpage().getparameters().get('att');
        values = apexpages.currentpage().getparameters().get('att1');
        display=new List<string>(); 
     	 display= values.split(',');
         System.debug('list of diplay values are'+display);
    }
    public void querymydata()
    {
       result=Database.query(qry);
        
       
       
        System.debug('result  val is is '+result);
    }    
}