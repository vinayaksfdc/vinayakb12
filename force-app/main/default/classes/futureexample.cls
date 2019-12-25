public class futureexample {
    
    public void show()
    {
        system.debug('1');
        system.debug('2');
        system.debug('3');
    }
    @future
    public static void show2()
    {
        system.debug('4');
        system.debug('5');
        system.debug('6');
    }

    
    
    public void show3()
    {
        show();
        show2();
        system.debug('7');
        system.debug('8');
        system.debug('9');
    }


}