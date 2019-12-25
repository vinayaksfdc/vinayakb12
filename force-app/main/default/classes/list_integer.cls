public class list_integer {
 public List<Integer> ravi {set;get;}
public integer min {set;get;}
public integer max {set;get;}
    {
ravi=new List<Integer>();
ravi.add(10);
        ravi.add(60);
ravi.add(20);
        ravi.add(50);
ravi.add(30);
ravi.add(40);

min=ravi[0];
max=ravi[0];
for(integer i=0;i<ravi.size();i++)
    
{ 
    if(ravi[i]<min){
        min=ravi[i];
    }
if(ravi[i]>max){
    max=ravi[i];
}
}
}
    
}