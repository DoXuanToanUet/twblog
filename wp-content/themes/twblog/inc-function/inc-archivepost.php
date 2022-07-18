<?php function create_shortcode_devArchivePost($attr) { 
    extract( shortcode_atts(
        [
            'terms_id' =>'' ,
        ], $attr
    ));
?>
     <div class="container">
        <h2 class="text-center py-4">Chuyên mục <?php echo get_cat_name($terms_id);?></h2>
        <div class="archive-list">  
            <div class="row">
                <div class="col-12">
                    <?php 
                        $blog_args  = array(
                            'post_type' => 'post',
                            'post_status' => 'publish',
                            'order' => 'DESC',
                            'orderby' => 'DATE',
                            'posts_per_page' => 3,
                            'tax_query' => array(
                                array(
                                    'taxonomy' => 'category',
                                    'field'    => 'id',
                                    'terms'    => $terms_id,
                                ),
                            ),
                        );
                        $blog_query = new WP_Query($blog_args);
                    ?>
                    <div class="row">
                            <?php if ( $blog_query->have_posts() ) : while ( $blog_query->have_posts() ) :$blog_query->the_post(); ?>
                                <div class="post-preview mb-2 col-lg-4 col-12">
                                    <div class="post-preview__thumbnail">
                                        <a href="<?php the_permalink(); ?>" class="item-img" title="<?php the_title(); ?>">
                                            <img src="<?php echo get_the_post_thumbnail_url(get_the_ID(),'large'); ?>" alt="">
                                        </a>     
                                    </div>
                                    <div class="post-preview__content">                
                                        <a href="<?php the_permalink(); ?>" class="item-content-title" title="<?php the_title(); ?>">
                                            <h2 class="title">
                                                <?php the_title(); ?>
                                            </h2>
                                        </a>
                                        <p><?php echo wp_trim_words( get_the_content(), 15); ?></p>
                                        <p><?php echo get_the_date('d/m/Y'); ?></p>
                                    </div>
                                </div>
                            <?php endwhile; wp_reset_postdata();  endif;?>
                    </div>      
                </div>
            
            </div>
        </div>
    </div>
    
<?php }

add_shortcode('devArchivePost', 'create_shortcode_devArchivePost');?>