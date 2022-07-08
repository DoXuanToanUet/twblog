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

         
        /**========================
         * Show contact popup
         * ========================
        */   
        $('.btn-contact').click(function(){
            $('.popup-contact').toggle();
        })
        $('.btn-popup-close').click(function(){
            console.log("popup");
            $('.popup-contact').toggle();
        })


        /**========================
         * Ajax load more post
         * ========================
        */
        var listitemcontent = $('.cate-news');
        var ajax_url = $("input[name='url_ajax']").val();
        // console.log(listitemcontent);
        // console.log(ajax_url)
        /*Load Ajax Post*/

        listitemcontent.on('click', '.paginate_links a', function (e) {
            e.preventDefault();

            // return false;
            var hrefThis = $(this).attr('href');
            console.log(hrefThis)
            var paged = hrefThis.match(/\/\d+\//)[0];
            // console.log(paged)
            paged = paged.match(/\d+/)[0];
            // console.log(paged)

            if (!paged) paged = 1;
            $.ajax({
                type: "post",
                dataType: "json",
                url: ajax_url,
                data: {
                    action: "ajax_load_post",
                    ajax_paged: paged,
                },
                context: this,
                beforeSend: function () {
                    $('.loader-post').show();
                },
                success: function (response) {
                    // console.log(response);
                    if (response.success) {
                        $('.loader-post').hide();
                        $('.paginate_links').hide();
                        listitemcontent.empty();
                        listitemcontent.append($(response.data));
                    }
                }
            });
        });

        
        /**========================
         * Font size zoom text post content
         * ========================
        */
       $('.plus-txt').on('click', function(){
        //    console.log("object");
           fs = parseInt($('.post-detail-main').css("font-size"));
           $('.post-detail-main').css('font-size', fs + 1 + 'px');
       })
       $('.minus-txt').on('click', function(){
            // console.log("object");
            fs = parseInt($('.post-detail-main').css("font-size"));
            $('.post-detail-main').css('font-size', fs - 1 + 'px');
        })

        
        /**========================
         * Ajax register
         * ========================
        */
         $(document).on('submit', '#devRegis-form',function(e){
            var ajax_url = $("input[name='url_ajax']").val();
            e.preventDefault();
            last_name = $('input[name="last_name"]').val();
            first_name = $('input[name="first_name"]').val();
            email = $('input[name="email"]').val();
            username = $('input[name="username"]').val();
            pass = $('input[name="pwd1"]').val();
            confirm_pass = $('input[name="pwd2"]').val();
            // console.log(last_name);
            // console.log(first_name);
            // console.log(username);
            $.ajax({
                type: "post",
                dataType: "json",
                async: true,
                url: ajax_url,
                data: {
                    action:'regisForm',
                    last_name: last_name,
                    first_name: first_name,
                    email : email,
                    username: username,
                    pass: pass,
                    confirm_pass: confirm_pass,
                    securityregis: $('form#devRegis-form #securityregis').val()
                },
                beforeSend: function () {
                },
                success: function (response) {
                    // console.log(response);
                    if( response.success == false ){
                        $('.devRegis-alert').html(`* ${response.data.showdata}`);
                    } else if(response.success == true ){
                        var base_url = window.location.origin;
                        window.location.href = base_url;
                        // console.log(object);
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    //Làm gì đó khi có lỗi xảy ra
                    console.log('The following error occured: ' + textStatus, errorThrown);
                }
            });
            
        })
         /* ********************************
            Show hide register password
        *********************************/ 
        const password = $("#pwd1");
        function showpass(pass){
            if(pass.prop('type') == 'password'){
                $(pass).parent().find('.show-password-icon').html(`<i class="fa fa-eye-slash" aria-hidden="true"></i>`);
                pass.attr('type','text')
            }
            else {
                $(pass).parent().find('.show-password-icon').html(`<i class="fa fa-eye" aria-hidden="true"></i>`);
                pass.attr('type','password');
            }
        }
        $("#show-password-icon").click(function(){
            showpass(password);
        })
        const password2 = $("#pwd2");
        $("#show-password-icon2").click(function(){
            showpass(password2);
        })
        $("#show-password-icon3").click(function(){
            showpass($('#login_pass'));
        })
        /**========================
         * Login page tab
         * ========================
        */
        function activeLoginTab(obj) {
            $(".login-tab .login-tab-item").removeClass("active-tab");
            let id = $(obj).data("login");
            $(obj).addClass("active-tab");
            $(".login-content-item").hide();
            // console.log(id);
            $('#'+id).show();
        }
        $('.login-tab .login-tab-item').click(function (e) {
            // console.log(e.target)
            e.preventDefault();
            activeLoginTab(this);
        })
        activeLoginTab('.login-tab .login-tab-item:first-child');
        $('.login-link').click(function(){
            activeLoginTab('.login-tab .login-tab-item:first-child');
        })
        $('.regis-link').click(function(){
            activeLoginTab('.login-tab .login-tab-item:nth-child(2)');
        })
        /**========================
         * Ajax Login
         * ========================
        */
         $(document).on('submit', '#devLogin-form',function(e){
            var ajax_url = $("input[name='url_ajax']").val();
            e.preventDefault();
            username = $('input[name="login_username"]').val();
            pass = $('input[name="login_pass"]').val();
            console.log(username);
            $.ajax({
                type: "post",
                dataType: "json",
                async: true,
                url: ajax_url,
                data: {
                    action:'devLoginForm',
                    username: username,
                    pass: pass,
                    securitylogin: $('form#devLogin-form #securitylogin').val()
                },
                beforeSend: function () {
                },
                success: function (response) {
                    // console.log(response);
                    if( response.success == false ){
                        $('.devLogin-alert').html(`* ${response.data.showdata}`);
                    } else if(response.success == true ){
                        var base_url = window.location.origin;
                        window.location.href = base_url;
                        // console.log(object);
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    //Làm gì đó khi có lỗi xảy ra
                    console.log('The following error occured: ' + textStatus, errorThrown);
                }
            });
            
        })

         /**========================
         * Contact Form Event Popup
         * ========================
        */
        document.addEventListener( 'wpcf7mailsent', function( event ) {
            if ( '219' == event.detail.contactFormId ) {
                setTimeout(() => {
                    $('.popup-contact').toggle();
                }, 2000);
            }
        }, false );

        /**========================
         * Contact Form Event Popup
         * ========================
        */
        $('.counter').countUp({
            'time': 1000,
            // 'delay': 10
        });
          // Fancybox Plugin
          Fancybox.bind(".gitem-fancybox", {
            // Your options
            Toolbar: {
            display: [
                { id: "prev", position: "center" },
                { id: "counter", position: "center" },
                { id: "next", position: "center" },
                "zoom",
                "slideshow",
                "fullscreen",
                "download",
                "thumbs",
                "close",
            ],
            },
        });
        
        // Custom status css order my account
        getorder=$('.woocommerce-account .woocommerce-orders-table__cell-order-status');
        getorder.each(function(){
            gethtml = $(this).html()
            // console.log()
            // console.log(typeof toan)
            trim = gethtml.replace(/\s/g, '')
            // console.log(trim);
            switch (trim) {
                case 'Đangxửlý':
                    $(this).html(`<div class="flex-status"><p class="front-status-processing front-status"><i class="fa fa-circle" style="padding-right:4px"></i>Đang xử lý </p></div>`)
                    break;
                case 'Đãhoànthành':
                    $(this).html(`<div class="flex-status"><p class="front-status-success front-status"><i class="fa fa-circle" style="padding-right:4px"></i>Đã hoàn thành</p></div>`)
                    break;
                case 'Tạmgiữ':
                    $(this).html(`<div class="flex-status"><p class="front-status-on-hold front-status"><i class="fa fa-circle" style="padding-right:4px"></i>Tạm giữ </p></div>`)
                    break;
                case 'Đãhủy':
                    $(this).html(`<div class="flex-status"><p class="front-status-cancel front-status"><i class="fa fa-circle" style="padding-right:4px"></i>Đã hủy</p></div>`)
                    break;
                case 'Đãhoànlạitiền':
                    $(this).html(`<div class="flex-status"><p class="front-status-success front-status"><i class="fa fa-circle" style="padding-right:4px"></i>Đã hoàn lại tiền</p></div>`)
                    break;
                case 'Thấtbại':
                    $(this).html(`<div class="flex-status"><p class="front-status-cancel front-status"><i class="fa fa-circle" style="padding-right:4px"></i>Thất bại</p></div>`)
                    break;
                default:
                    break;
            }
        })
        

        // Click outside overlay popup hide form
        $(document).on('click', '.popup-overlay',function (e) {
            // if ($(e.target).closest(".popup-contact").length === 0) {
                $(".popup-contact").toggle();
            // }
        });

        // Quiz event 
       
    })
    
})(jQuery);

