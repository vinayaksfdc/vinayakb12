@isTest
private class ExampleTest1 {
@isTest 
    static void testme()
    {
   testexample1 t=new testexample1();
        t.setdata();
    System.assertEquals('raj', t.name);
    System.assertEquals('srnagar', t.branch);
      t.reset();
    System.assertEquals('null', t.name);
    System.assertEquals('null', t.branch);
          
    }   
}