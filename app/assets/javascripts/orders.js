'use strict';

function checkCart() {
    if ($('.quantity').length == 0){
        $('.order-button').addClass('disabled');
    }
    else {
        $('.order-button').removeClass('disabled');
    }
}

var ready = function() {

    checkCart();

    // New form behaviour
    $("#responsive_code").fitText(0.3, { minFontSize: '20px', maxFontSize: '100px' });

    $(".add-product").click(function () {
        var item = $(this).parents(".list-group-item")
        var priceEntry = item.find("p");
        var productId = item.attr("data-product-id");
        $.ajax({
            url:    "/line_items",
            type:   "POST",
            data:   {product_id: productId},
            success: function(response){
                priceEntry.find(".quantity").remove();
                priceEntry.append('<span class="quantity label label-success">'+response.quantity+' '+I18n.added+'</span>');
                checkCart();
            }
        });
    });

    $(".empty-cart").click(function () {
        $.ajax({
            url:    "/empty_cart",
            type:   "delete",
            success: function(response){
                $('.quantity').remove();
                checkCart();
            }
        });
    });

    //Index behaviour
    $('.toggle-delivered').click(function () {
        var toggleButton = $(this);
        var orderToken = toggleButton.attr("data-order-token");
        var delivered = toggleButton.hasClass('btn-primary');
        $.ajax({
            url:    "/orders/"+orderToken+".json",
            type:   "put",
            data:   {order: {delivered: delivered}},
            success: function(response){
                toggleButton.toggleClass('btn-primary btn-success')
                toggleButton.find('.fa').toggleClass('fa-thumbs-up fa-thumbs-down');
            }
        });
        
    });

    //Datatables configuration
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