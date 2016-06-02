$(document).ready(function() {
	$("#hamburger-menu-area").click(function(event) {
		// console.log("clicked",arguments)
		event.stopImmediatePropagation();
		$("#nav-options-dropped").toggle("fast");
	});
});