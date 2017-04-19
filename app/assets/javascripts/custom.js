/* ========================================================================= */
/*	Preloader
/* ========================================================================= */

jQuery(window).load(function() {
    $("#preloader").fadeOut("slow");
});



$(document).ready(function() {


    /* ========================================================================= */
    /*	Back to Top
    /* ========================================================================= */

    $(window).scroll(function() {
        if ($(window).scrollTop() > 400) {
            $("#back-top").fadeIn(200);
        } else {
            $("#back-top").fadeOut(200);
        }
    });
    $("#back-top").click(function() {
        $("html, body").stop().animate({
            scrollTop: 0
        }, 1500, "easeInOutExpo");
    });

});
