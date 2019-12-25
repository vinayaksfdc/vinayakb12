public class acc_dml {
    public Contact con{set;get;}
    public string msg{set;get;}
        public acc_dml()
        {
           con=new Contact();
        }
		public void submit()
        {
         insert con;   
          msg='Record Inserted';
        }    
}