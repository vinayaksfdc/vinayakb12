public class http_api {
    public string response{set;get;}
	public void invoke()
        {
            string key='87bec17727b8d5e609a7bae3222d26dd';
            string url='https://apilayer.net/api/live?access_key='+key;
            url=url+'&currencies=INR';
            url=url+'&source=USD&format=1 ';
        }



}