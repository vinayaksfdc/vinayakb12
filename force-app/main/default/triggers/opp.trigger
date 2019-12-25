trigger opp on Account (before insert) 
{
    List<opportunity> op=new List<opportunity>();
for(Account a:trigger.new)
{
    if(a.industry=='EDUCATION' && a.rating=='Warm')
    {
      Opportunity o1=new Opportunity();
        o1.Accountid=a.id;
        o1.Name=a.Name;
        o1.CloseDate=System.today();
        o1.StageName='Qualification';
        op.add(o1);
    }   
   
}
     insert op;
}