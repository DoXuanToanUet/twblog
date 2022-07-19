<?php get_header(); ?>
<?php 
    $obj = get_queried_object();
    $categories = get_the_category();
    // echo "<pre>";
    // var_dump($obj);
   
    // echo "<pre>";
?>
    <div class="container">
        <div class="row">
            <div class="col col-lg-8 col-sm-8 mx-auto py-4">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item " aria-current="page">
                            <a href="<?php  echo home_url();?>">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">
                            <a href="<?php  echo home_url().'/'.$categories[0]->slug;?>"><?php echo $categories[0]->name;?></a>
                        </li>
                    </ol>
                </nav>
                <h1 class="post-title  mb-4" >
                    <?php the_title();?>
                </h1>
                <div class="post-time d-flex mb-2" >
                    <?php echo get_the_date('d/M/Y');?>-
                    <?php echo get_the_author(  );?>
                </div>
                <div class="post-content">
                    <?php the_content();?>
                </div>
            </div>
        </div>
        <div class="row">  
            <div class="col col-lg-8 col-sm-8 mx-auto py-4">
                <?php echo do_shortcode("[devComment]"); ?>
            </div>
        </div>
    </div>
<?php get_footer(); ?>
