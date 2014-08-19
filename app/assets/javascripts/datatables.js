var ready = function() {
   $('.footable').footable();
};

$(document).ready(ready);
$(document).on('page:load', ready);