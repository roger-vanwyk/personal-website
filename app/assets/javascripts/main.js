(function(){
	// Menu settings
	$('#menuToggle, .menu-close, .nav-link').on('click', function(){
		$('#menuToggle').toggleClass('active');
		$('#theMenu').toggleClass('menu-open');
	});
})(jQuery)

