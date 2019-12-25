({
                invoke : function(component, event, helper) {
                    // Read the value of firstname and lastname
                    var lname=component.find("lname").get("v.value");
                    var fname=component.find("fname").get("v.value");
                    // Invoke the method from apex class 
                    var action=component.get("c.getName");
                    // Pass the parameters in the form key value pair 
                    action.setParams({"lastName":lname,"firstName":fname});
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

                }
			})