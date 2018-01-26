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
