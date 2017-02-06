({
    hideModal : function(component, event, helper) {
        document.getElementById('modal').classList.add('slds-hide');

	},
    newPost : function(component){
        var action = component.get("c.newPost");
        var self = this;

        action.setParams({
            uuid: component.get("v.uuid"),
            title: component.find("title").get("v.value"),
            text: component.find("text").get("v.value"),
        });

        action.setCallback(this, function(response){

            var state = response.getState();

            console.log('state: '+state);
            console.log('response'+response);


            if(state === "SUCCESS"){
                // No time for events!
                this.loadPostsHelper(component);
            }
        });
        $A.enqueueAction(action);

        console.log('action: '+action);

    },
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
