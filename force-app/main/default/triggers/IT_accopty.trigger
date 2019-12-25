trigger IT_accopty on Account (before insert) {
list<opportunity> opty=new list<opportunity>();
for(account a:trigger.new){
if(a.Industry=='Education' && a.Rating=='Warm'){
opportunity op=new opportunity();
op.name=a.name;
op.Type='New Customer';
op.CloseDate=system.today()+15;
op.StageName='Prospecting';
op.AccountId=a.Id;
opty.add(op);
}
}
insert opty;
}