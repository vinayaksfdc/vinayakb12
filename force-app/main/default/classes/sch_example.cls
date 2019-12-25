public class sch_example implements Schedulable{

    public void execute(SchedulableContext sc)
        {
            List<opportunity> opp=[select name,stagename,closedate from opportunity where stagename='Prospect'];
            for(opportunity o:opp)
            {
                o.stagename='closed won';
                o.CloseDate=system.today();
            }
            update opp;
        }
}