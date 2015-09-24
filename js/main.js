// $(document).ready(function(){
// 	$("#about").click(function() {
//     	$('body').animate({
//         	scrollTop: $("#group3").offset().top
//     	}, 5000);
// 	});
// });
$(document).ready(function() {
	var stickyOffset = $(".nav-name").offset();
	var $contentDivs = $(".whitediv");
	$(document).scroll(function() {
	    $contentDivs.each(function(k) {
	        var _thisOffset = $(this).offset();
	        var _actPosition = _thisOffset.top - $(window).scrollTop();
	        if (_actPosition < stickyOffset.top && _actPosition + $(this).height() > 0) {
	            $(".nav-name").removeClass("light dark").addClass($(this).hasClass("light") ? "light" : "dark");
	            return false;
	        }
	    });
	});
});
