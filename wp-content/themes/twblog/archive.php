<?php get_header(); ?>
<?php 
    $cat = get_queried_object();
    // echo "<pre>";
    // var_dump($cat);
    // echo "</pre>";
    $term_id = $cat->term_id;
?>
    <div class="container">
        <?php echo do_shortcode( "[devArchivePost terms_id=$term_id]" );?> 
    </div>
<?php get_footer(); ?>
