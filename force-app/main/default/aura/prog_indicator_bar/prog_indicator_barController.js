({
	call : function(component, event, helper) {
		var opt=component.get("v.opt");
        console.log('selected :'+opt);
        var opt=component.set("v.opt",opt);
	}
})