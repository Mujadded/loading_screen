$(document).ready(function(){
    $(document).keyup(function(e) {
        if (e.keyCode == 27) { // escape key maps to keycode `27`
            $(".loading_screen-spinner").fadeOut();
        }
    });

    $( window ).bind('load',function() {

        // hide spinner
        $(".loading_screen-spinner").fadeOut();

        // show spinner on AJAX start
        $(document).ajaxStart(function(){
            $(".loading_screen-spinner").show();
        });

        // hide spinner on AJAX stop
        $(document).ajaxStop(function(){
            $(".loading_screen-spinner").fadeOut();
        });

    });
});