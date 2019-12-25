public class List_lead {
 public void ld()
 {
     
     List<contact> con=[select id,firstname,lastname,email,phone,fax from contact limit 10];
 }
}