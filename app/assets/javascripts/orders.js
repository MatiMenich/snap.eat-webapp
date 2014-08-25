'use strict';

var ready = function() {
    $("#responsive_code").fitText(0.3, { minFontSize: '20px', maxFontSize: '100px' });

/*
    $('#order').click(function () {
	    var btn = $(this)
	    btn.button('loading')
	});
*/

	$('#add_product').click(function () {
		var newInputs = $('.template').html();
		var removeButton = $('<a class="btn btn-danger btn-sm btn-block"><span class="glyphicon glyphicon-trash"></span> Eliminar</a>');

		var inputDiv = $('<div class="new_product animated-1 fadeInDown"></div>');

		inputDiv.append(newInputs);
	    inputDiv.append(removeButton);
	    inputDiv.append('<hr>');
		$('.product-fieldset').append(inputDiv);


		removeButton.click(function () {
			inputDiv.removeClass('animated-1 fadeInDown')
			inputDiv.addClass('animated-05 fadeOutDown');
	        setTimeout(function() {
            	inputDiv.remove();
          	}, 500);
		});
	});

	var responsiveHelper = undefined;
    var breakpointDefinition = {
        tablet: 1024,
        phone : 480
    };
    var tableElement = $('#order_table');

    tableElement.dataTable({
    	"order": [[ 4, "desc" ]],
    	"dom": 'ftilp',
        autoWidth        : false,
        preDrawCallback: function () {
            // Initialize the responsive datatables helper once.
            if (!responsiveHelper) {
                responsiveHelper = new ResponsiveDatatablesHelper(tableElement, breakpointDefinition);
            }
        },
        rowCallback    : function (nRow) {
            responsiveHelper.createExpandIcon(nRow);
        },
        drawCallback   : function (oSettings) {
            responsiveHelper.respond();
        }
    });
};
$(document).ready(ready);
$(document).on('page:load', ready);