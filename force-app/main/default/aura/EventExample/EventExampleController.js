({
	dochange : function(component, event, helper) {
        alert('value changed');
		
	},
    changevalue : function(component, event, helper) {
        component.set('v.test','Test');
		
	},
    doinit : function(component, event, helper) {
        component.set('v.test','On Init');
		
	}
})