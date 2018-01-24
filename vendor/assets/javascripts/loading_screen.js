$( window ).bind('load',function() {

    // hide spinner
    $(".spinner").fadeOut();

    // show spinner on AJAX start
    $(document).ajaxStart(function(){
        $(".spinner").show();
    });

    // hide spinner on AJAX stop
    $(document).ajaxStop(function(){
        $(".spinner").fadeOut();
    });

});