jQuery(function() {
	(function($) {
		$(window).ready(function(){
			debugger;
			var sourceWidth  = $("#header").css("width");
			
			Common.attr($("iframe"), "width", sourceWidth);
		});
	})(jQuery);
});