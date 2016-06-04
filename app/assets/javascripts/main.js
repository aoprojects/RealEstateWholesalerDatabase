$(document).ready(function() {
	$("#hamburger-menu-area").click(function(event) {
		// console.log("clicked",arguments)
		event.stopImmediatePropagation();
		$("#nav-options-dropped").toggle("fast");
	});

	// todo we want the paragraph yellow area only to display for a notice if there is a notice
	if $('#notice').innerHTML == nil {
		$('p#notice').css('display:none');
	};

});