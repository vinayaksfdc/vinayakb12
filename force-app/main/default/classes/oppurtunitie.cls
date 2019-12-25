public class oppurtunitie {
    public String Name{set;get;}
    public String stagename{set;get;}
    public String closeDate{set;get;}
    public List<Opportunity> opp{set;get;}
    public oppurtunitie(){
    
  opp =new List<Opportunity>();
Opportunity op1 =new Opportunity();
op1.Name='aaa';
op1.stagename='Prospecting';
op1.closeDate=Date.newInstance(2018,1,10);
opp.add(op1);

Opportunity op2 =new Opportunity();
op2.Name='b';
op2.stagename='Quote';
op2.closeDate=Date.newInstance(2018,1,10);
opp.add(op2);

Opportunity op3 =new Opportunity();
op3.Name='CCC';
op3.stagename='CloseWon';
op3.closeDate=Date.newInstance(2018,2,15);
opp.add(op3);

Opportunity op4 =new Opportunity();
op4.Name='s';
op4.stagename='CloseLost';
op4.closeDate=Date.newInstance(2018,3,23);
opp.add(op4);
system.debug(opp);

    }
}