public class MyController {
// return 'pdf' if the parameter 'p' has been passed to the page, other null
public String getChooserender() {
if (ApexPages.currentPage().getParameters().get('p') != null)
return 'pdf';
else
return null;
}
// Go grab the page and pass parameter 'p'
public PageReference deliverAsPDF() {
PageReference pdf =  Page.abc;
pdf.getParameters().put('p','p');
return pdf;
}
}