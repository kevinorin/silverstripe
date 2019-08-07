$(document).ready(function() {
    $("#slider").owlCarousel({
        autoPlay: true,
        slideSpeed: 300,
        paginationSpeed: 400,
        singleItem: true,
        // paginationNumbers: true,
        stopOnHover: true
    });
    $(window).bind('resize', function(){
        var w = $(this).width(),
            threshold = 768;

            if(w < threshold){
                $('.nav-justified').hide().fadeIn('fast');
            }
    });
});