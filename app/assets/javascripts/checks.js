var ready = function() {
    $("#responsive_icon").fitText(0.7, { minFontSize: '20px', maxFontSize: '100px' });
};
$(document).ready(ready);
$(document).on('page:load', ready);