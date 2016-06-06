$(document).ready(function() {
	$("#hamburger-menu-area").click(function(event) {
		// console.log("clicked",arguments)
		event.stopImmediatePropagation();
		$("#nav-options-dropped").toggle("fast");
	});

	$(".question").click(function() {
		$(this).children(".will_show_after_click").toggle("fast");
		$(this).children(".will_show_before_click").toggle("fast");

	});

	$(".question").click(function(event) {
		event.stopImmediatePropagation();
		$(this).next(".answer").toggle("fast");
	});

	// todo we want the paragraph yellow area only to display for a notice if there is a notice
	$("p").each(function(){
  		if ($.trim($(this).text()) == ""){
   			$this.remove();
		} 
	});
});