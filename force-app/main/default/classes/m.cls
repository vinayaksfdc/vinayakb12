public class m {

 public Map<string,List<string>> objmap{set;get;}
    public List<selectoption> objects{set;get;}
    public List<selectoption> fields{set;get;}
  
    public String selectedobject{set;get;}
    public string query{set;get;}
    public List<selectoption> leftside{set;get;}
    public List<selectoption> rightside{set;get;}
    public set<string> selectedfields{set;get;}
    public Set<string> notselectedfields{set;get;}
    public List<string> addfields{set;get;}
    public List<string> removefields{set;get;}
    
    public  List<string> keyss {set;get;}
    public List<string> flds{set;get;}
    //public List<Sobject> result{set;get;}
    
    public List<string> display {set;get;}
    public boolean flag	{set;get;}
    
    public List<select_operator> fieldList{set;get;} 
    public List<selectoption> foption {set;get;}
    public List<string>			 fieldnames {set;get;}
    public List<string> 		 operatornames {set;get;}
    
    public m()
    {
	     objmap=new   Map<string,List<string>>();
         objects=new List<selectoption>();
         fields=new List<selectoption>();
      	 flds=new List<string>();
        	leftside=new List<selectoption>();
            rightside=new List<selectoption>();
            selectedfields=new set<string>();
            notselectedfields=new set<string>();
            addfields=new List<string>();
            removefields=new List<string>();
        
         foption=new 	List<selectoption>();
        
			List<string> accfields=new List<string>{'Name','Phone','Industry','Rating','Ownership','AnnualRevenue','Active__c'};
            List<string> confields=new List<string>{'AccountId','AssistantName','AssistantPhone','Birthdate','CleanStatus','CreatedById','CreatedDate','Department','Description','Email','EmailBouncedDate','EmailBouncedReason','Fax','FirstName','HomePhone','Id','IsDeleted','IsEmailBounced','Jigsaw','JigsawContactId','Languages__c','LastActivityDate','LastCURequestDate','LastCUUpdateDate','LastModifiedById','LastModifiedDate','LastName','LastReferencedDate','LastViewedDate','LeadSource','Level__c','Location__c','Location__Latitude__s','Location__Longitude__s','MailingAddress','MailingCity','MailingCountry','MailingGeocodeAccuracy','MailingLatitude','MailingLongitude','MailingPostalCode','MailingState','MailingStreet','MasterRecordId','MobilePhone','Name','OtherAddress','OtherCity','OtherCountry','OtherGeocodeAccuracy','OtherLatitude','OtherLongitude','OtherPhone','OtherPostalCode','OtherState','OtherStreet','OwnerId','Phone','PhotoUrl','ReportsToId','Salutation','SystemModstamp'}; 
           	List<string> oppfields=new List<string>{'AccountId','Amount','CampaignId','CloseDate','CreatedById','CreatedDate','CurrentGenerators__c','DeliveryInstallationStatus__c','Description','ExpectedRevenue','Fiscal','FiscalQuarter','FiscalYear','ForecastCategory','ForecastCategoryName','HasOpenActivity','HasOpportunityLineItem','HasOverdueTask','Id','IsClosed','IsDeleted','IsPrivate','IsWon','LastActivityDate','LastModifiedById','LastModifiedDate','LastReferencedDate','LastViewedDate','LeadSource','MainCompetitors__c','Name','NextStep','OrderNumber__c','OwnerId','Pricebook2Id','Probability','StageName','SystemModstamp','TotalOpportunityQuantity','TrackingNumber__c','Type'};
            
        	objmap.put('Account', accfields);
        	objmap.put('Contact', confields);
        	objmap.put('Oppurtunity', oppfields);
          
        	SelectOption op=new SelectOption('none','none');
        	objects.add(op);
        	leftside.add(op);
        	rightside.add(op);
        //fetch all the names from object map
        set<string> names=objmap.keySet();
        List<string> objnames=new List<string>(names);
        objnames.sort(); 
        for(String s:objnames)
        {
            selectoption op1=new selectoption(s,s);
            objects.add(op1);
        } 
         
     }   
    public void getData()
    {
        
       if(selectedobject!='none')
       {
           flag=true;
           List<string> fields=objmap.get(selectedobject);
           notselectedfields.addAll(fields);
           createoptions();
       }
        else{
        	flag=false;    
    	    }
    }
     public void createoptions()
             {
                 rightside.clear();
                 leftside.clear();
                 selectOption op1=new selectoption('none','none');
                 if(selectedfields.size()>0)
                 {
    	             for(string s:selectedfields)
                        {
                          selectoption op=new selectoption(s,s);
                           rightside.add(op); 
                        }
                 } 
               	else
                {
                selectoption op3=new selectoption('none','none');  
                rightside.add(op3); //acc fields, con fields, opp fields
                }    
            	if(notselectedfields.size()>0)
                {
                    for(string s:notselectedfields)
                        {
                        selectoption op=new selectoption(s,s);
                        leftside.add(op); 
                        system.debug(leftside);
                        }
                    } 
                	else
                        {
                          selectoption op4=new selectoption('none','none');  
                          leftside.add(op4); 
                        }    
             }    
    			public void add()
                {
                    notselectedfields.removeAll(addfields);
                    selectedfields.addAll(addfields);
                    createoptions();
                }   
                public void Del()
                {
                    selectedfields.removeall(removefields);
                    notselectedfields.addAll(removefields);
                    createoptions(); 
                }    
           
    		public pageReference fetchData()
            {
                flag=true;
                 query='select id';
                 for(string s:selectedfields)   
                 {
                 query=query+','+s;   
                 }    
                  query=query+' from '+selectedobject;    
                //  result=Database.query(query);
                	system.debug('Query is'+query);
                  display=new List<string>(selectedfields);
                  PageReference pf = new PageReference('/apex/pagetwo?att='+query+'&att1='+selectedfields);
        return pf;
              
            }    
}