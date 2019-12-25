public class Sharukh {
    public List<account> ac{set;get;}
    
        public Sharukh()
        {
		ac=[select name,id,Email__c from account where name='blue'];
		}

    public void addPDF1()
    {
        for(account a:ac)
        {
        PageReference pdfPage2 = new PageReference('/apex/Dynamic_example1');
        Attachment attachment = new Attachment();
        attachment.Name = 'eERAJ';
        attachment.ContentType = 'application/pdf';
        attachment.ParentId = a.Id;
        attachment.Body = pdfPage2.getContentAsPdf();
        insert attachment;
        }
    }    
}