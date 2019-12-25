public class data {
    public static List<string> accss{set;get;}
    public static List<string> conss{set;get;}
    public static List<string> oppss{set;get;}
    public data()
    {
        accss=new List<string>{'AccountNumber,AnnualRevenue,CreatedById,CreatedDate,Id,Industry,,LastActivityDate,LastModifiedById,LastModifiedDate,LastReferencedDate,LastViewedDate,Name,OwnerId,Ownership,ParentId,Phone,PhotoUrl,Rating'};
        accss.sort();
         
        conss=new List<string>{'AccountId,AssistantName,AssistantPhone,Birthdate,CleanStatus,CreatedById,CreatedDate,Department,Description,Email,FirstName,HomePhone,Id,IsDeleted,Name,OwnerId,Phone'};
           
            oppss=new List<string>{'AccountId','Amount','CampaignId','CloseDate','CreatedById','CreatedDate','CurrentGenerators__c','DeliveryInstallationStatus__c','Description','ExpectedRevenue','Fiscal','FiscalQuarter','FiscalYear','ForecastCategory','ForecastCategoryName','HasOpenActivity','HasOpportunityLineItem','HasOverdueTask','Id','IsClosed','IsDeleted','IsPrivate','IsWon','LastActivityDate','LastModifiedById','LastModifiedDate','LastReferencedDate','LastViewedDate','LeadSource','MainCompetitors__c','Name','NextStep','OrderNumber__c','OwnerId','Pricebook2Id','Probability','StageName','SystemModstamp','TotalOpportunityQuantity','TrackingNumber__c','Type'};    
    }
}