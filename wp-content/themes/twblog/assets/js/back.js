// var offset = 2;
        // var page = 1;
        // $('.btn-loadmore').click(function () {
        //     console.log("btn");
        //     var category_name = $("input[name='category_name']").val();
        //     console.log(category_name);
        //     var ajax_url =$("input[name='url_ajax']").val();
        //     console.log(ajax_url);
        //     var totalpage = $("input[name='totalpage']").val();
        //     console.log(totalpage);
        //     $.ajax({ // Hàm ajax
        //         type: "post", //Phương thức truyền post hoặc get
        //         dataType: "html", //Dạng dữ liệu trả về xml, json, script, or html
        //         async: true,
        //         url: ajax_url, // Nơi xử lý dữ liệu
        //         data: {
        //             action: "loadmorepost", //Tên action, dữ liệu gởi lên cho server
        //             offset: offset, // gởi số lượng bài viết đã hiển thị cho server
        //             // taxonomy: taxonomy, // gởi taxonomy
        //             // term: term, // gởi term
        //             page: page,
        //             cat_name: category_name
        //         },
        //         beforeSend: function () {
        //             // Có thể thực hiện công việc load hình ảnh quay quay trước khi đổ dữ liệu ra
        //             $("#loading-post").show();
        //         },
        //         success: function (response) {
        //             // console.log($(this));
        //             console.log(response);
        //             $("#loading-post").hide();
        //             $('.cate-news').append(response);
        //             offset = offset + 2; // tăng bài viết đã hiển thị
        //             page = page + 1;
        //             if (page >= totalpage) {
        //                 $('.btn-loadmore').hide();
        //             }
        //         },
        //         error: function (jqXHR, textStatus, errorThrown) {
        //             //Làm gì đó khi có lỗi xảy ra
        //             console.log('The following error occured: ' + textStatus, errorThrown);
        //         }
        //     });
        // })
