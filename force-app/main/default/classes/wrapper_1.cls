public class wrapper_1 {
    public List<std> W1 {set;get;}
public List<std> dell {set;get;}
public string Wname {set;get;}
public integer Wage {set;get;}
public string Wcity {set;get;}
public string sel {set;get;}
public string opt {set;get;}
public integer x {set;get;}
public boolean z {set;get;}
public wrapper_1(){
W1=new List<std>();
dell=new List<std>();
}
public void create(){
std W2=new std();
W2.name=Wname;
W2.age=Wage;
W2.city=Wcity;
W1.add(W2);
}
public void del(){
for(integer c=0;c<W1.size();c++){
if(W1[c].F1==True) {
dell.add(W1[c]);
W1.remove(c);
c--;
}
}
}
public void change(){
for(integer c=0;c<W1.size();c++){
if(W1[c].F1==True) {
W1[c].city=sel;
}
}
}
public void edit(){
for(integer c=0;c<W1.size();c++){
if(W1[c].F1==True) {
Wname=W1[c].name;
Wage=W1[c].age;
Wcity=W1[c].city;
x=c;
break;
}

}}
public void saveedited(){
W1[x].name=Wname;
W1[x].age=Wage;
W1[x].city=Wcity;
}
     	
}