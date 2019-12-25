trigger trigger_ownerchange on Account (before insert) {
 user u1=[select id,name from user where alias='integ'];
     user u2=[select id,name from user where alias='vbule'];
    
    for(Account s:Trigger.new){
        if(s.industry=='Banking'){
            s.ownerid=u2.id;
        }else{
            s.OwnerId=u1.id;
        }
    }
}