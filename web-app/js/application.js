if (typeof jQuery !== 'undefined') {
	(function($) {
        $("input").mask("9?99.9?99.9?99.9?99", {placeholder:" "});
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

$(document).ready(function(){
    $('.ip_address').mask('0ZZ.0ZZ.0ZZ.0ZZ', {translation: {'Z': "[0-9]?"}});
    );

$(function() {
    $('#baseUrl').click( function() {
        window.location = $(this).attr('href') + '/' + $('#appendUrl').val();
        return false;
    });
});