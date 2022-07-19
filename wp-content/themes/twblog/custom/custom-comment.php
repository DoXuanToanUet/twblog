<?php  function mytheme_comment($comment, $args, $depth) {
        if ( 'div' === $args['style'] ) {
            $tag       = 'div';
            $add_below = 'comment';
        } else {
            $tag       = 'li';
            $add_below = 'div-comment';
        }?>
        <<?php echo $tag; ?> <?php comment_class( empty( $args['has_children'] ) ? '' : 'parent' ); ?> id="comment-<?php comment_ID() ?>"><?php 
        if ( 'div' != $args['style'] ) { ?>
            <div id="div-comment-<?php comment_ID() ?>" class="comment-body py-2"><?php
        } ?>
            <div class="comment-author d-comment-author flex d-align-middle"><?php 
                if ( $args['avatar_size'] != 0 ) {
                    echo get_avatar( $comment, $args['avatar_size'] ); 
                } 
                if($comment->user_id >0){
                    printf( __( '<span class="tick"> %s</span> <div class="admin-title"> <span class="qtv"> Quản trị viên </span><i class="fa fa-check-circle" aria-hidden="true"></i></div>' ), get_comment_author() ); 
                }else{
                    printf( __( '<span class="tick"> %s</span> ' ), get_comment_author() ); 
                };
                
                ?>
            </div><?php 
            if ( $comment->comment_approved == '0' ) { ?>
                <em class="comment-awaiting-moderation"><?php _e( 'Your comment is awaiting moderation.' ); ?></em><br/><?php 
            } ?>
            <div class="comment-content pt-2">
                <?php comment_text(); ?>
            </div>
            <div class="reply d-flex">
                <div class="reply-text" style="font-size:0.75rem">
                    <span class="lnr lnr-bubble" style="color:#288ad9"></span>
                    <?php 
                        comment_reply_link( 
                            array_merge( 
                                $args, 
                                array( 
                                    'add_below' => $add_below, 
                                    'depth'     => $depth, 
                                    'max_depth' => $args['max_depth'] 
                                ) 
                            ) 
                        ); 
                    ?>
                </div>
                <div class="reply-date" style="font-size:0.75rem">
                    <a href="<?php echo htmlspecialchars( get_comment_link( $comment->comment_ID ) ); ?>"><?php
                        /* translators: 1: date, 2: time */
                        printf( 
                            __('- %s trước'), 
                            human_time_diff( get_comment_time( 'U' ), current_time( 'timestamp' ) )
                        ); ?>
                    </a><?php 
                    edit_comment_link( __( '(Edit)' ), '  ', '' ); ?>
                </div>
            </div><?php 
        if ( 'div' != $args['style'] ) : ?>
            </div><?php 
        endif;
}

 