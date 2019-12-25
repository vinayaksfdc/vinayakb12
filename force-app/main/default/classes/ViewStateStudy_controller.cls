public with sharing class ViewStateStudy_controller {

    public String accId{get;set;}
    public Account account{get;set;}

    public ViewStateStudy_controller()
    {
       accId = ApexPages.currentPage().getParameters().get('Id'); 
       if(accId != null)        
        {
            this.account= [   SELECT  Name
                          FROM    Account
                          WHERE   Id = : accId ];  
        }
        else
        {
            this.account= new Account();

        }   
    }
    public pageReference save()
    {
        insert this.account;
        return null;    
    }
	public pageReference saveandclose()
	{
	    insert this.account;
		//technically this works, but is not a best practice. 
	    PageReference pageRef = new PageReference('/apex/test');
	    pageRef.setRedirect(true);
	    return pageRef;   
	
	}

	public PageReference page2(){
		return Page.ViewStateStudy_page2;	
	}

	public PageReference page2byGet(){
		//this way will force initial page request by GET thus dumping view state
		//usually this would be used to reset or cancel a set of page flows. 
		PageReference pageRef = Page.ViewStateStudy_page2;
		pageRef.setRedirect(false);
		return pageRef;	
	}


	public PageReference page1(){
		return Page.ViewStateStudy_page1;	
	}
}