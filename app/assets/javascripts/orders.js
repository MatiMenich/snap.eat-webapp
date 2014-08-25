var ready = function() {
    $("#responsive_code").fitText(0.3, { minFontSize: '20px', maxFontSize: '100px' });


    $('#order').click(function () {
	    var btn = $(this)
	    btn.button('loading')
	});

	$('#add_product').click(function () {
		var newInputs = $('.template').html();
		var removeButton = $('<a class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Eliminar</a>');

		var inputDiv = $('<div class="new_product animated-1 fadeInDown"></div>');

		inputDiv.append(removeButton);
		inputDiv.append(newInputs);
		$('.product-fieldset').append(inputDiv);


		removeButton.click(function () {
			inputDiv.removeClass('animated-1 fadeInDown')
			inputDiv.addClass('animated-05 fadeOutLeft');
	        setTimeout(function() {
            	inputDiv.remove();
          	}, 500);
		});
	});
};
$(document).ready(ready);
$(document).on('page:load', ready);