public class sbfdsd {
 
public map<string,schema.sobjecttype> de {Set;get;}
public list<selectoption> options {Set;get;}
public sbfdsd(){
de=schema.getGlobalDescribe();
options=new list<selectoption>();
set<string> keys=de.keySet();
for(string s:keys){
schema.SObjectType obj =de.get(s);
schema.DescribeSObjectResult objres=obj.getDescribe();
if(objres.iscustom()){
selectoption op=new selectoption(s,s);
options.add(op);
 
}
}
}
}