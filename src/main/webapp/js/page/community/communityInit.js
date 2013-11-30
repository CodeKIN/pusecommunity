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
								cells += "<td class='subject'><a href='/modules/board/postViewer.do?post_id=" + target["POST_ID"] + "&board_type=" + target["BOARD_TYPE"] + "'>" + target["SUBJECT"] + "</a></td>";
								cells += "<td class='dateshort'>" + Common.dateformat(new Date(target["WRITE_DT"]), "yyyy.MM.dd") + "</td>";
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