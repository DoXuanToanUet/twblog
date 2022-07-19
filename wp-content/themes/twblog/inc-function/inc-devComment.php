<?php function createComment(){
    global $post; 
    // var_dump($post);
    ?>
        <div class="review-wrapper">
            <div class="reivew-comment">
                <?php
                    $comment_send = 'Bình luận';
                    $comment_reply = 'Bình luận';
                    $comment_reply_to = 'Trả lời';
                    //Array
                    $comments_args = array(
                        //Define Fields
                        'fields'              => array(
                            //Author field
                            'author' => '<p class="input-group"><input class="form-control" type="text" id="author" name="author" aria-required="true" placeholder="Họ tên" required></p> ',
                            //Email Field
                            'email'  => '<p class="tw-input input-group"><input class="form-control" type="email" id="email" name="email" placeholder="Email" required></p>',
                            //URL Field
                            // 'url'    => '<input type="text" id="url" name="url" placeholder="Website" required> ',
                            //Cookies
                            //                    'cookies' => '<input type="checkbox" required>' . $comment_cookies_1 ,
                        ),
                        // Change the title of send button
                        'label_submit'        => 'Gửi',
                        // Change the title of the reply section
                        'title_reply'         => __($comment_reply),
                        // Change the title of the reply section
                        'title_reply_to'      => __($comment_reply_to),
                        //Cancel Reply Text
                        'comment_field'       => '<div class="tw-form-comment mb-4"><textarea class="form-control" id="comment" name="comment" aria-required="true" placeholder="Nội dung"></textarea></div>',
                        //Message Before Comment
                        'comment_notes_after' => '',
                        //Submit Button ID
                        'id_submit'           => __('comment-submit'),
                        'class_submit' =>'btn btn-primary'
                    );
                    comment_form($comments_args);
                ?>
            </div>
            <div class="comments-wrapper section-inner">
                <h3 style="font-size:18px;text-transform: uppercase;font-weight: 600;" class="flex d-align-middle"> Bình luận
                </h3>
                <div class="review-section">
                    <div class="review-customer">
                        <?php comments_template('/comments.php'); ?>
                    </div>
                </div>
            </div>
        </div>
    <?php 
} 
add_shortcode("devComment", "createComment"); 