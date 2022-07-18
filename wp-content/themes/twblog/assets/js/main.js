(function($) {

    $(document).ready(function() {
        
        /**========================
         * ScrolltoTop event
         * ========================
        */
        $(".scrolltoTop").click(function (event) {
            event.preventDefault();

            $("html, body").animate({ scrollTop: 0 }, "slow");

            return false;
        });
        $(window).scroll(function() {

            var height = $(window).scrollTop();

            if (height > 100) {
                $(".scrolltoTop").fadeIn();
            } else {
                $(".scrolltoTop").fadeOut();
            }   
        });

        $('#btn-menu-responsive').click (function (){
            $('.m-menu').toggleClass('active');
            $('#header').toggle();
            $("body").toggleClass("no-scroll");
        })
        $(document).on('click', '.m-overlay',function (e) {
            // if ($(e.target).closest(".popup-contact").length === 0) {
                $('.m-menu').toggleClass('active');
                $('#header').toggle();
                $("body").toggleClass("no-scroll");
            // }
        });
    })
    
})(jQuery);

