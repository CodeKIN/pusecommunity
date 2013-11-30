if(!String.string){ String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;}; }
if(!String.zf) { String.prototype.zf = function(len){return "0".string(len - this.length) + this;}; }
if(!Number.zf) { Number.prototype.zf = function(len){return this.toString().zf(len);}; }


Common = {
		baseurl : window.location.protocol + "//" + window.location.host,
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
		},

		getBaseUrl : function(){
		    return this.baseurl;
		},
		
		dateformat : function(poDate, format){
			if (!poDate.valueOf()) return " ";
			
			var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
			var d = poDate;
			
			return format.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
				switch ($1) {
					case "yyyy": return d.getFullYear();
					case "yy": return (d.getFullYear() % 1000).zf(2);
					case "MM": return (d.getMonth() + 1).zf(2);
					case "dd": return d.getDate().zf(2);
					case "E": return weekName[d.getDay()];
					case "HH": return d.getHours().zf(2);
					case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
					case "mm": return d.getMinutes().zf(2);
					case "ss": return d.getSeconds().zf(2);
					case "a/p": return d.getHours() < 12 ? "오전" : "오후";
					default: return $1;
				}
			});
		}
		
};

Submission = {
	response : {},
	createSubmission : function(){
		var submission = $('<form>', {
			id     : "clientRequest",
			method : "post"
		}).appendTo("body");
		
		return submission[0];
	},
	
	callAjax : function(poCallback){
		$.ajax({
            type     : "post"
          , Accept   : "*/*"
          , headers  : {
                           "Content-Type" : "application/x-www-form-urlencoded"
                         , "req-protocol" : "urlencoded"
                         , "res-protocol" : "json"
                       }
          , url      : Common.getBaseUrl() + "/community/modules/recentPostList.do"
          , data     : {
                           board_type : "freeboard"
                       }
          , success  : function(msg){
        	  			window.Submission.response = eval(msg);
                        poCallback();
                       }
        });
	}
};