@isTest
public class testex1_test {
@isTest
    static void testme()
    {
       testex1 t=new testex1();
       
        t.industry='energy';
         t.test1();
        system.assertEquals('hot',t.rating);
        system.assertEquals('public',t.ownership);
        
  
        t.industry='banking';
               t.test1();
        system.assertEquals('cold',t.rating);
        system.assertEquals('private',t.ownership);
        
        
        
        
    }
}