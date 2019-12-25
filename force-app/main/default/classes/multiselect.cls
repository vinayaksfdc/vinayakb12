public class multiselect {
  

 public Map<string,List<string>> statemp{set;get;}
    public List<selectoption> objects{set;get;}
    public List<selectoption> fields{set;get;}
  
    public String selectedobject {set;get;}
    public string query {set;get;}
    public List<selectoption> leftside{set;get;}
    public List<selectoption> rightside{set;get;}
    public set<string> selected{set;get;}
    public Set<string> notselected{set;get;}
    public List<string> addfields{set;get;}
    public List<string> removefields{set;get;}
    public  List<string> keyss {set;get;}
    public List<string> cities{set;get;}
    public List<sobject> result{set;get;}
    
    public List<string> display {set;get;}
    
    public List<select_operator> fieldList{set;get;} 
    public List<selectoption> foption {set;get;}
    public List<string>			 fieldnames {set;get;}
    public List<string> 		 operatornames {set;get;}
    
    public multiselect()
    {
	     statemp=new   Map<string,List<string>>();
         objects=new List<selectoption>();
         fields=new List<selectoption>();
      	 cities=new List<string>();
        	leftside=new List<selectoption>();
            rightside=new List<selectoption>();
            selected=new set<string>();
            notselected=new set<string>();
            addfields=new List<string>();
            removefields=new List<string>();
        
         foption=new 	List<selectoption>();
        
		  	List<string> accfields=new List<string>{'Name','Phone','Industry','Rating','Ownership','AnnualRevenue','Active__c'};
            List<string> confields=new List<string>{'AccountId','AssistantName','AssistantPhone','Birthdate','CleanStatus','CreatedById','CreatedDate','Department','Description','Email','EmailBouncedDate','EmailBouncedReason','Fax','FirstName','HomePhone','Id','IsDeleted','IsEmailBounced','Jigsaw','JigsawContactId','Languages__c','LastActivityDate','LastCURequestDate','LastCUUpdateDate','LastModifiedById','LastModifiedDate','LastName','LastReferencedDate','LastViewedDate','LeadSource','Level__c','Location__c','Location__Latitude__s','Location__Longitude__s','MailingAddress','MailingCity','MailingCountry','MailingGeocodeAccuracy','MailingLatitude','MailingLongitude','MailingPostalCode','MailingState','MailingStreet','MasterRecordId','MobilePhone','Name','OtherAddress','OtherCity','OtherCountry','OtherGeocodeAccuracy','OtherLatitude','OtherLongitude','OtherPhone','OtherPostalCode','OtherState','OtherStreet','OwnerId','Phone','PhotoUrl','ReportsToId','Salutation','SystemModstamp'}; 
           	List<string> oppfields=new List<string>{'AccountId','Amount','CampaignId','CloseDate','CreatedById','CreatedDate','CurrentGenerators__c','DeliveryInstallationStatus__c','Description','ExpectedRevenue','Fiscal','FiscalQuarter','FiscalYear','ForecastCategory','ForecastCategoryName','HasOpenActivity','HasOpportunityLineItem','HasOverdueTask','Id','IsClosed','IsDeleted','IsPrivate','IsWon','LastActivityDate','LastModifiedById','LastModifiedDate','LastReferencedDate','LastViewedDate','LeadSource','MainCompetitors__c','Name','NextStep','OrderNumber__c','OwnerId','Pricebook2Id','Probability','StageName','SystemModstamp','TotalOpportunityQuantity','TrackingNumber__c','Type'};
            
        	statemp.put('Account', accfields);
        	statemp.put('Contact', confields);
        	statemp.put('Oppurtunity', oppfields);
          
        	SelectOption op=new SelectOption('none','none');
        	objects.add(op);
        	fields.add(op);
        	
        set<string> keys=statemp.keySet();
        for(String s:keys)
        {
            selectoption op1=new selectoption(s,s);
            objects.add(op1);
        } 
         fieldList =new List<select_operator>(); 
     	 operatornames=new List<string>{'=','!=','<','>'};
 	 	 fieldnames=new List<string>();
        add12();  
     }   
    public void getData()
    {
        Selectoption op3=new Selectoption('none','none');
        fields.add(op3);
        leftside.clear();
        fields.clear();	
        keyss=statemp.get(selectedobject);// account contact oppurtunity
        system.debug(keyss);
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
                rightside.add(op1); //acc fields, con fields, opp fields
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
            public void add12()
            {
                select_operator fw=new select_operator(fieldnames, operatornames);
				fieldList.add(fw);	    
            }    
    		public pagereference  query_multiselect()
            {
                  pagereference p=new pagereference('/apex/query_multiselect');
                 query='select id';
                 for(string s:selected)   
                 {
                 query=query+','+s;   
                 }    
                 
                  query=query+' from '+selectedobject;    
               
                 result=Database.query(query);
                 display=new List<string>(selected);
                return p;
               
            }   
    	
}