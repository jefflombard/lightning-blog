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


            if(state === "SUCCESS"){
                component.set("v.blogPosts", JSON.parse(response.getReturnValue()).posts);
            }
        });
        $A.enqueueAction(action);

        console.log('action: '+action);
	}
})
