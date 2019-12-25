({
    invoke : function(component, event, helper) {
        console.log('success');
        // Read the value of firstname and lastname
        var lname=component.find("lname").get("v.value");
      
        // Invoke the method from apex class 
        var action=component.get("c.getName");
        // Pass the parameters in the form key value pair 
        action.setParams({"lastName":lname});
        //define callback action
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==='SUCCESS'){
                var result=response.getReturnValue();
                component.set("v.empName",result);
                console.log(result);
            }else{
                console.log('Error');
            }
        });
        $A.enqueueAction(action);
        
    },
     echo : function(component, event, helper) {
         
         var expname = component.get("v.empName");
        alert(expname);
        console.log('selected cartype is'+expname);
    
          action.setParams({"rating" :expname});
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            
            if (state === "SUCCESS") 
            {
                
                alert("From server: " + response.getReturnValue());
                
                component.set('v.ListOfcars', response.getReturnValue());
                
            }
            
            else if (state === "INCOMPLETE") {
                
            }
            
                else if (state === "ERROR") {
                    var errors = response.getError();
                     
                }
        });
        
        $A.enqueueAction(action);
    }
    
    
})