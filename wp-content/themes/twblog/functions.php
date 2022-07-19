<?php function add_theme_scripts()
{
    $version = '1.0';
    wp_enqueue_style('BootstrapCss', get_template_directory_uri() . '/assets/plugins/bootstrap/bootstrap.min.css', array(), $version, 'all');
    wp_enqueue_style('MainCss', get_template_directory_uri() . '/assets/css/custom.css', array(), $version, 'all');

    wp_enqueue_script('BootstrapJs', get_template_directory_uri() . '/assets/plugins/bootstrap/bootstrap.bundle.min.js', array(), $version, true);
    wp_enqueue_script('MainJs', get_template_directory_uri() . '/assets/js/main.js', array(), $version, true);
    wp_enqueue_script('jquery-ui-draggable');
}

add_action('wp_enqueue_scripts', 'add_theme_scripts');

function init_theme(){
    // bất tính năng úp ảnh đại diện cho bài viết
    add_theme_support('post-thumbnails'); 

    register_nav_menus(array(
        'mainmenu'   => __('Main menu', 'toantw'),
    ));
}

add_action('init', 'init_theme');


require get_template_directory() . '/inc-function/inc-devpost.php';
require get_template_directory() . '/inc-function/inc-archivepost.php';
require get_template_directory() . '/custom/custom-comment.php';
require get_template_directory() . '/inc-function/inc-devComment.php';

