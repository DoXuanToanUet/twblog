(function($){$(document).ready(function(){$(".scrolltoTop").click(function(event){event.preventDefault();$("html, body").animate({scrollTop:0},"slow");return!1});$(window).scroll(function(){var height=$(window).scrollTop();if(height>100){$(".scrolltoTop").fadeIn()}else{$(".scrolltoTop").fadeOut()}});$('#btn-menu-responsive').click(function(){$('.m-menu').toggleClass('active');$('#header').toggle();$("body").toggleClass("no-scroll")})
$(document).on('click','.m-overlay',function(e){$('.m-menu').toggleClass('active');$('#header').toggle();$("body").toggleClass("no-scroll")})})})(jQuery)