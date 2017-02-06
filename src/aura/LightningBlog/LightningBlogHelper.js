({
	loadPostsHelper : function(component) {
        var action = component.get("c.getBlogData");
        var self = this;

        action.setParams({
            uuid: component.get("v.uuid")
        });

        action.setCallback(this, function(response){

            var state = response.getState();

            console.log('state: '+state);
            console.log('response'+response);

            alert(response.getReturnValue());

            if(state === "SUCCESS"){
            }
        });
        $A.enqueueAction(action);

        console.log('action: '+action);
	}
})
