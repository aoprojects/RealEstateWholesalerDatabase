$(document).ready(function() {
	$('.question').click(function() {
		console.log("hello");
		$(this).next().fadeToggle("fast");
		$(this).children(".glyphicon").toggleClass("collapse");

	});


	$("#hamburger-menu-area").click(function() {
		$("#nav-options-dropped").toggle("fast");
	});
)};