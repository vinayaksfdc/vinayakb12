({
    handleClick : function(component, event, helper) {
        var action=component.get("c.ex12");
        action.setCallback(this,function(response)
        {
          var state=response.getState();
            if(state==='SUCCESS')  
            {
                console.log('Success');
                var result=response.getReturnValue();
                component.set("v.result",result);
            }   
           else
            {
                console.log('failure');
            }
        });
        $A.enqueueAction(action);
    }
})