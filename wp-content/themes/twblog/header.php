<!DOCTYPE html>
<html class="no-js" <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>
    <?php wp_head(); ?>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,600&amp;subset=latin,vietnamese,latin-ext' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,500&amp;subset=latin,vietnamese,latin-ext' rel='stylesheet' type='text/css'>

</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="header">
    <div class="container d-flex">
        <div class="m-mobile">
            <button id="btn-menu-responsive" class="mactive">
                <span class="bar1"></span>
                <span class="bar2"></span>
                <span class="bar3"></span>
            </button>
        </div>
        <div class="logo">
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" width="512" height="512" x="0" y="0" viewBox="0 0 512.002 512.002" style="enable-background:new 0 0 512 512" xml:space="preserve" class=""><g><g xmlns="http://www.w3.org/2000/svg"><path d="m420.501 106.892c0 53.19-52.75 98.03-119.53 154.78-11.5 9.78-23.44 19.92-35.61 30.54l-9.86 8.6-9.86-8.6c-12.17-10.62-24.11-20.76-35.61-30.54-66.78-56.75-119.53-101.59-119.53-154.78 0-53.75 36.77-106.48 90-106.89 20.27-.16 47.91 8.83 75 39.98 18.574-21.749 45.284-39.937 74-39.98 40.401-.081 88.581 39.97 90.92 102.42.05 1.51.08 3 .08 4.47z" fill="#ff7366" data-original="#ff7366"></path><path d="m420.501 106.892c0 53.19-52.75 98.03-119.53 154.78-11.5 9.78-23.44 19.92-35.61 30.54l-9.86 8.6v-260.83c18.574-21.749 45.284-39.937 74-39.98 40.401-.081 88.581 39.97 90.92 102.42.05 1.51.08 3 .08 4.47z" fill="#e6455a" data-original="#e6455a"></path><path d="m10.185 121.002c36.272 0 34.685 43.784 35.316 77.699v15.3c.601 43.5 4.501 99.6 55.8 138.6 11.7 9 26.4 16.8 43.801 23.701 1.199-2.401 9.6-24.901 10.8-28.2-11.1-4.2-21.599-9.3-33.3-17.1-29.399-24.901-31.8-36.601-29.7-42.001 3.6-9 23.099-6.599 32.699-4.799 27.9 5.4 64.501 23.699 87.601 46.8 16.199 14.7 27.299 33.3 27.299 54.3v126.7h-120v-15c0-34.801-13.801-46-36.599-62.8-35.101-26.1-83.401-61.8-83.401-208.2v-105h9.684z" fill="#ffe1ba" data-original="#ffe1ba"></path><path d="m270.501 151.002v-30h-15-15v30h-30v30h30v30h15 15v-30h30v-30z" fill="#e6f2f2" data-original="#e6f2f2"></path><path d="m270.501 181.002h30v-30h-30v-30h-15v90h15z" fill="#cfe6e6" data-original="#cfe6e6"></path><path d="m501.817 121.002c-36.272 0-35.685 43.784-36.316 77.699v15.3c-.601 43.5-4.501 99.6-55.8 138.6-11.7 9-26.4 16.8-43.801 23.701-1.199-2.401-9.6-24.901-10.8-28.2 11.1-4.2 21.599-9.3 33.3-17.1 29.399-24.901 31.8-36.601 29.7-42.001-3.6-9-23.099-6.599-32.699-4.799-27.9 5.4-64.501 23.699-87.601 46.8-16.199 14.7-27.299 33.3-27.299 54.3v126.7h120v-15c0-34.801 13.801-46 36.599-62.8 35.101-26.1 84.401-61.8 84.401-208.2v-105h-9.684z" fill="#ffbfab" data-original="#ffbfab"></path></g></g></svg>
        </div>
        <div class="desktop-menu">
            <?php if (has_nav_menu('mainmenu')):
                wp_nav_menu(array('theme_location' => 'mainmenu', 'container' => ''));
            endif; ?>
        </div>
       
     
    </div>
</div>
<div class="m-menu ">
    <div class="m-overlay"></div>  
    <?php if (has_nav_menu('mainmenu')):
        wp_nav_menu(array('theme_location' => 'mainmenu', 'container' => ''));
    endif; ?>          
</div>