public class Multi_select_object_fld_dependency {
 public Map<string,List<string>> Sobjectsmp{set;get;}
    public List<selectoption> Sobjects{set;get;}
    public List<selectoption> fields{set;get;}
  
    public String selected1 {set;get;}
    
    public List<selectoption> leftside{set;get;}
    public List<selectoption> rightside{set;get;}
    public set<string> selected{set;get;}
    public Set<string> notselected{set;get;}
    public List<string> addfields{set;get;}
    public List<string> removefields{set;get;}
    public  List<string> keyss {set;get;}
    public List<string> objects{set;get;}
    
    public Multi_select_object_fld_dependency()
    {
	     Sobjectsmp=new   Map<string,List<string>>();
         Sobjects=new List<selectoption>();
         fields=new List<selectoption>();
      	 objects=new List<string>();
        	leftside=new List<selectoption>();
            rightside=new List<selectoption>();
            selected=new set<string>();
            notselected=new set<string>();
            addfields=new List<string>();
            removefields=new List<string>();
        
			List<string> accfields=new List<string>{'AccountNumber',' AnnualRevenue',' CreatedById',' CreatedDate',' Id',' Industry',' LastActivityDate',' LastModifiedById',' LastModifiedDate',' LastReferencedDate',' LastViewedDate',' Name',' OwnerId',' Ownership',' ParentId',' Phone','PhotoUrl','Rating'};
            List<string> confields=new List<string>{'AccountId','AssistantName','AssistantPhone','Birthdate','CleanStatus','CreatedById','CreatedDate','Department','Description','Email','EmailBouncedDate','EmailBouncedReason','Fax','FirstName','HomePhone','Id','IsDeleted','IsEmailBounced','Jigsaw','JigsawContactId','Languages__c','LastActivityDate','LastCURequestDate','LastCUUpdateDate','LastModifiedById','LastModifiedDate','LastName','LastReferencedDate','LastViewedDate','LeadSource','Level__c','Location__c','Location__Latitude__s','Location__Longitude__s','MailingAddress','MailingCity','MailingCountry','MailingGeocodeAccuracy','MailingLatitude','MailingLongitude','MailingPostalCode','MailingState','MailingStreet','MasterRecordId','MobilePhone','Name','OtherAddress','OtherCity','OtherCountry','OtherGeocodeAccuracy','OtherLatitude','OtherLongitude','OtherPhone','OtherPostalCode','OtherState','OtherStreet','OwnerId','Phone','PhotoUrl','ReportsToId','Salutation','SystemModstamp'}; 
           	List<string> oppfields=new List<string>{'AccountId','Amount','CampaignId','CloseDate','CreatedById','CreatedDate','CurrentGenerators__c','DeliveryInstallationStatus__c','Description','ExpectedRevenue','Fiscal','FiscalQuarter','FiscalYear','ForecastCategory','ForecastCategoryName','HasOpenActivity','HasOpportunityLineItem','HasOverdueTask','Id','IsClosed','IsDeleted','IsPrivate','IsWon','LastActivityDate','LastModifiedById','LastModifiedDate','LastReferencedDate','LastViewedDate','LeadSource','MainCompetitors__c','Name','NextStep','OrderNumber__c','OwnerId','Pricebook2Id','Probability','StageName','SystemModstamp','TotalOpportunityQuantity','TrackingNumber__c','Type'};
            
			Sobjectsmp.put('Account', accfields);
        	Sobjectsmp.put('Contact', confields);
        	Sobjectsmp.put('Oppurtunity', oppfields);
          
        	SelectOption op=new SelectOption('none','none');
        	Sobjects.add(op);
        	fields.add(op);
        	
        set<string> keys=Sobjectsmp.keySet();
        for(String s:keys)
        {
            selectoption op1=new selectoption(s,s);
            Sobjects.add(op1);
        } 
        
    }   
    public void getData()
    {
        Selectoption op3=new Selectoption('none','none');
        fields.add(op3);
        leftside.clear();
        fields.clear();	
             keyss=Sobjectsmp.get(selected1);
        	 notselected.addAll(keyss);
             createoptions();
    }
     public void createoptions()
             {
                  rightside.clear();
                 leftside.clear();
          		  
                    if(selected.size()>0)
                    {
                        for(string s:selected)
                        {
                          selectoption op=new selectoption(s,s);
                           rightside.add(op); 
                        }
                        
                    } 
                	else
                    {
                      selectoption op1=new selectoption('none','none');  
                        rightside.add(op1); 
                    }    
                
                	   if(notselected.size()>0)
                    {
                        for(string s:notselected)
                        {
                          selectoption op=new selectoption(s,s);
                           leftside.add(op); 
                            system.debug(leftside);
                        }
                        
                    } 
                	else
                    {
                      selectoption op1=new selectoption('none','none');  
                        leftside.add(op1); 
                    }    
            }    
    			public void add()
                {
                    notselected.removeAll(addfields);
                    selected.addAll(addfields);
                    createoptions();
                }
				public void Del()
                {
                    selected.removeall(removefields);
                    notselected.addAll(removefields);
                    createoptions(); 
                }    
}