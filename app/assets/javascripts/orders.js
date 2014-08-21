var ready = function() {
    $("#responsive_code").fitText(0.3, { minFontSize: '20px', maxFontSize: '100px' });


    $('#order').click(function () {
	    var btn = $(this)
	    btn.button('loading')
	});
};
$(document).ready(ready);
$(document).on('page:load', ready);