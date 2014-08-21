var ready = function() {
    $("#responsive_brand").fitText(0.5);
    $("#follow_up").fitText(1.8);
};
$(document).ready(ready);
$(document).on('page:load', ready);