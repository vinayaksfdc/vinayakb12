({
	invoke : function(component, event, helper) {
        var sindustry=component.find("industry").get("v.value");
        var srating=component.find("rating").get("v.value");
        
        var action=component.get("c.accData");
        action.setParams({"industry":sindustry,"rating":srating});
        action.setCallback(this,function(response){
           var state=response.getState();
             
            if(state==='SUCCESS')
            {
               var result=response.getReturnValue();
                component.set("v.accList",result);
                console.log('Result is+',result);
            }
            else
            {
                console.log('state failed');
            }    
        });
		$A.enqueueAction(action);
	}
	})