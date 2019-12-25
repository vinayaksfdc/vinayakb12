public class custmcontroller {
    public account acc{set;get;}
    public custmcontroller(ApexPages.StandardController controller) 
    {
	acc=(Account)controller.getRecord();
    }

}