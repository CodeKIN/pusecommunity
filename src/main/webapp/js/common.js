Common = {
		attr : function(voSelector, psAttrName, psAttrValue){
			var selector = null;
			
			if(voSelector instanceof String){
				selector = $("#" + voSelector);
			}else if(voSelector instanceof Object){
				var id = voSelector.id;
				
				if(id === ""){
					id = voSelector.selector;
				}else{
					id = "#" + id;
				}
				selector = $(id);
			}else{
				alert("not support type of " + typeof voSelector);
				return null;
			}
			
			if(selector.length === 0){ 
				alert("Element is not exist");
				return null; 
			}
			
			var vsNowAttr = selector.attr(psAttrName);
			
			if(vsNowAttr !== psAttrValue){
				selector.attr(psAttrName, psAttrValue);
			}
			
			return selector;
		},

		css : function(vsoSelector, psAttrName, psAttrValue){
			var selector = null;
			
			if(voSelector instanceof String){
				selector = $("#" + voSelector);
			}else if(voSelector instanceof Object){
				var id = voSelector.id;
				
				if(!id){
					id = voSelector.selector;
				}else{
					id = "#" + id;
				}
				selector = $(id);
			}else{
				alert("not support type of " + typeof voSelector);
				return null;
			}

			if(selector.length === 0){
				alert("Element is not exist");
				return null;
			}
			
			var vsNowAttr = selector.css(psAttrName);
			
			if(vsNowAttr !== psAttrValue){
				selector.css(psAttrName, psAttrValue);
			}
			
			return selector;
		}
};

Submission = {
	createSubmission : function(){
		var submission = $('<form>', {
			id     : "clientRequest",
			method : "post"
		}).appendTo("body");
		
		return submission[0];
	}
};