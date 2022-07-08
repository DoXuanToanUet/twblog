<?php function create_shortcode_mostpost() { ?>
    <h3>Tin nổi bật</h3>
    <div class="post-news">
        <?php
            $list_post = array(
                'post_type' => 'post',
                'post_status' => 'publish',
                'posts_per_page' => 4,
                'orderby'=>'meta_value_num',
                'meta_key'=>'post_views_count',
                'order' => 'DESC',
            );
            $list_post_query = new WP_Query($list_post);
        ?>
        <?php if ( $list_post_query->have_posts() ) : while ( $list_post_query->have_posts() ) :$list_post_query->the_post(); ?>  
            <div class="item-news flex">
                <a href="<?php the_permalink(); ?>" class="item-pic"
                title="<?php the_title(); ?>">
                    <?php
                    if (has_post_thumbnail()):
                        the_post_thumbnail();
                    else:?>
                        <img src="<?php echo get_stylesheet_directory_uri().'/assets/img/not-found-img.png';?>"
                            alt="<?php the_title(); ?>">
                    <?php endif; ?>
                </a>

                <div class="item-content">
                    <a href="<?php the_permalink(); ?>" class="item-content-title" title="<?php the_title(); ?>">
                        <h3 class="post-news-title">
                            <?php the_title(); ?>
                        </h3>
                    </a>
                </div>
            </div>
        <?php endwhile; wp_reset_postdata(); endif; ?>  
    </div>
<?php }

add_shortcode('Tpostmost', 'create_shortcode_mostpost');?>