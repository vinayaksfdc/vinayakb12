public class switch_example {
    public integer monthNumber {set;get;}
    public string msg {set;get;}
    
    public switch_example()
    {
    	 monthNumber = 6;
       
            switch on monthNumber
            {
                When 1,2,3,4
                {
                    msg=('Winter Season');
                    system.debug('Winter Season');
                }
                When 5,6,7,8
                {
                    msg=('Summer Season');
                    system.debug('Summer Season');
                }
                When 9,10,11,12
                {
                   	  msg=('spring Season');
                    system.debug('Spring Season');
                }
                When else
                {
                      msg=('invalid month Number');
                    system.debug('Invalid Month Number');
                }
            }
                
                
    }
    	
}