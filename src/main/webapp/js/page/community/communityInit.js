jQuery(function() {
	(function($) {
		$(window).load(function(){
			/* **********************************************
			 * select recent post lists                     *
			 * **********************************************/
			var callback = function(){
				var result = window.Submission.response;
				/* **********************************************
				 * set recent post lists                        *
				 * **********************************************/
				
				var cells = "";
				
				for(var i in result){
					for(var j in result[i]){
						for(var k in result[i][j]){
							var target = result[i][j][k];
							cells += "<tr>";
							for(var l in target){
								if(target[l] === null
								|| target[l] === 0){ continue; };
								var property = target[l];
								
								if(l.indexOf("DT") !== -1){
									cells += "<td class='dateshort'>" + Common.dateformat(new Date(property), "yyyy.MM.dd") + "</td>";
								}else{
									cells += "<td>" + property + "</td>";
								}
							}
							cells += "</tr>";
						}
					}
				}
				
				$("p").append($("<table><tbody>" + cells + "</tbody></table>"));
				
				
				/* **********************************************
				 * set recent post lists                        *
				 * **********************************************/
			};
			
			Submission.callAjax(callback);
			/* **********************************************
			 * select recent post lists                     *
			 * **********************************************/
		});
	})(jQuery);
});