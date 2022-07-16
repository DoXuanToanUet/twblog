<?php function create_shortcode_devPost($attr) { 
    extract( shortcode_atts(
        [
            'terms_id' =>'' ,
            'firstpost' =>14
        ], $attr
    ));
?>
     <div class="container">
        <h2 class="text-center pb-4">Chuyên mục <?php echo get_cat_name($terms_id);?></h2>
        <div class="category-list">  
            <div class="row">
                <div class="col-md-6">
                    <?php 
                        $post_first  = get_post($firstpost);
                        // echo "<pre>";
                        // var_dump( $post_first );
                        // echo "</pre>";
                    ?>
                    <img src="<?php echo get_the_post_thumbnail_url( 14 ) ?>" alt="">
                    <h2 class="pt-3"><?php echo  $post_first->post_title; ?></h2>
                    <p><?php echo wp_trim_words( $post_first->post_content, 40); ?></p>
                </div>
                <div class="col-md-6">
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
                    <?php if ( $blog_query->have_posts() ) : while ( $blog_query->have_posts() ) :$blog_query->the_post(); ?>
                        <div class="post-preview mb-2">
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
    
<?php }

add_shortcode('devPost', 'create_shortcode_devPost');?>