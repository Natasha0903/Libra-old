<?php

    $blog_title = 'Art Appraisal Blog';

    $banner_img_url = $default_banner_img_url;
    $default_unit_img_url = $default_banner_img_url;

    $main_color = '#bf9972';
    $second_color = '#272d47';

    if(is_category()){
        $category = get_queried_object();
        $blog_sub_title = 'Category - '.$category->name;
        $category_name  = $category->slug;
    }elseif(is_search()){
        $blog_sub_title = 'You searched - '.get_search_query();
        $search_keyword = get_search_query();
    }else{
        $blog_sub_title = 'Art Appraisal Posts';
    }

?>
<style>
/*general settings*/
a, a:hover, a:focus {
    text-decoration: none;
}
.leftFloat{
    float: left;
}
.rightFloat{
    float: right;
}
a, button, input[type="submit"], .itemHover img{
    transition: all 0.4s;
}
.customClear:before, .customClear:after{
    content:"";
    display:block;
    height:0;
    overflow:hidden;
    clear:both;
}
input::-moz-placeholder, textarea::-moz-placeholder{
    opacity: 1!important;
}
select{
    -webkit-appearance: none;
    -moz-appearance: none;
    position: relative;
    z-index: 2;
}
.form-group{
    position: relative;
}
.form-group .caret{
    position: absolute;
}
/*general settings*/
/*top-banner-blog*/
.top-banner-blog{
    position: relative;
    height: 400px;
    background: var(--second-color);
    display: flex;
    align-items: center;
    overflow: hidden;
}
.top-banner-blog .decor {
    position: absolute;
}
.top-banner-blog .decor.bottom-left {
    left: -25px;
    bottom: -25px;
    height: 130px;
    width: 180px;
    border: 25px solid rgba(255, 255, 255, 0.2);
}
.top-banner-blog .decor.top-left {
    border: 25px solid rgba(255, 255, 255, 0.1);
    top: -30px;
    left: calc((100% - 1440px)/2 + 350px);
    height: 305px;
    width: 272px;
}
.top-banner-blog .decor.right-center {
    border: 25px solid rgba(255, 255, 255, 0.2);
    top: calc(48% - 162.5px);
    right: -25px;
    width: 170px;
    height: 325px;
}
img.top-banner-bg{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    -webkit-filter: brightness(70%);
}
.top-banner-blog h1{
    position: relative;
    padding: 0 15px;
    color: var(--main-color);
    font: 50px/70px 'Gibson-SemiBold';
    letter-spacing: 12px;
    margin: 0;
}
/*end top-banner-blog*/
/*blog-content*/
.blog-content{
    padding: 30px 0;
}
.blog-content-box{
    max-width: 1200px;
    margin: 0 auto;
    overflow: hidden;
    padding: 0 15px;
}
h2.blog-title{
    text-align: center;
    color: <?=$second_color?>;
    font: 30px/40px 'Gibson-SemiBold';
    margin: 0;
    padding-bottom: 10px;  
    position: relative; 
}
h2.blog-title:after{
    position: absolute;
    bottom: 0px;
    left: 50%;
    transform: translateX(-50%);
    content: "";
    display: block;
    width: 120px;
    height: 4px;
    background: var(--main-color);
}
h2.blog-title a{
    color: <?=$second_color?>;
    font: 30px/40px 'Gibson-SemiBold';
}
h2.blog-title a:hover{
    color: <?=$second_color?>;    
}
.blog-posts{
    padding: 0 15px;
    width: calc(100% - 400px);
    float: left;
}
.blog-sidebar{
    padding: 0 15px;
    padding-bottom: 20px;
    width: 400px;
    float: left;
}
.single-post{
    margin-top: 20px;
    padding: 20px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.12);
    background: #fff;
}
.single-post-img{
    position: relative;
    overflow: hidden;
}
.single-post-img img{
    width: 320px;
    height: 260px;
    object-fit: cover;
    transition: 0.3s;
}
.single-post-img a:hover img{
    -webkit-filter: brightness(80%);
}
.single-post-calendar{
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    background: rgba(0,0,0,0.4);
    padding: 10px;
}
.calendar-item,
.single-post-categories{
    width: 50%;
    color: #fff;
    float: left;
}
.single-post-categories{
    text-align: right;
}
.single-post-text{
    position: relative;
    padding-left: 20px;
    width: calc(100% - 320px);
}
.single-post-text h3{
    margin: 0;
    padding-top: 10px;
}
.single-post-text h3 a{
    color: <?=$second_color?>;
    font-size: 24px;
    line-height: 28px;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    overflow: hidden;
}
.single-post-text h3 a:hover{    
    color: <?=$main_color?>;
}
.single-post-text article p{
    display: -webkit-box;
    -webkit-line-clamp: 5;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    overflow: hidden;
    margin: 0;
}
.social-author{
    padding: 20px 0;
    overflow: hidden;
}
.single-post-box{
    display: flex;
}
.post-author{
    float: left;
}
.share-post{
    float: right;
    display: flex;
    align-items: center;
}
.share-post li{
    display: inline-block;
}
.share-post li img{
    transition: .3s;
    filter: brightness(0.3);
}
.share-post li a:hover img{
    filter: brightness(1);
}
.share-post li:not(:last-child){
    margin-right: 10px;
}
.share-post span{
    margin-right: 10px;
}
.post-author,
.share-post span,
.views-views{
    color: <?=$second_color?>;
}
.views-item{
    float: left;
}
.more-article{
    float: right;
    padding: 6px 23px;
    color: #fff;
    font-size: 16px;
    line-height: 16px;
    border: 2px solid <?=$main_color?>;
    background: <?=$main_color?>;
}
.more-article:hover{
    background: #fff;
    color: <?=$main_color?>;
}
.views{
    padding-left: 20px;
    overflow: hidden;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    background: #fff;
}
.popular-single:not(:last-child){
    margin-bottom: 20px;
}
.popular-single{
    overflow: hidden;
    display: flex;
    align-items: center;
}
.popular-single > img{
    flex-shrink: 0;
    margin-right: 20px;
    width: 120px;
    height: 100px;
    object-fit: cover;
    float: left;
}
.popular-post-text h4{
    margin: 0;
    margin-bottom: 7px;
}
.popular-post-text h4 a{
    color: <?=$second_color?>;
    font: 18px 'Gibson';
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    overflow: hidden;
}
.popular-post-text h4:hover a{
    color: <?=$second_color?>;
}
.search-post{
    margin: 30px 0;
    height: 50px;
    width: 100%;
    display: flex;    
}
.submit-area{
    position: relative;
    width: 60px;
    height: 50px;
}
.submit-area:hover .search-icon{
    background-color: <?=$second_color?>;
} 
.submit-field{
    width: 60px;
    height: 50px;
    transition: 0.3s;
    border: none;
    position: relative;
    background: transparent;
}
.search-icon{
    background: <?=$main_color?>;
    width: 60px;
    height: 50px;
    position: absolute;
    top: 0;
    right: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    transition: 0.3s;
}
.search-icon i{
    font-size: 30px;
    color: #fff;
}
.search-field{
    padding-left: 20px;
    width: calc(100% - 60px);
    border: 2px solid <?=$main_color?>!important;
    border-right: none!important;
    font-size: 16px;
}
input.search-field::-moz-placeholder{
    font-size: 16px;
    opacity: 1;
}
input.search-field::-webkit-input-placeholder{
    font-size: 16px;
}
/*pagination*/
.paginationPosts{
    margin-top: 30px;
    padding: 15px;
    border-top: 2px solid <?=$main_color?>;
}
.paginationPosts span, .paginationPosts a.page-numbers{
    cursor: pointer;
    font-family: 'Martel Sans', sans-serif;
    font-size: 14px;
    font-weight: 500;
    color: <?=$main_color?>;
    border: 2px solid <?=$main_color?>;
    display: inline-block;
    line-height: 30px;
    width: 35px;
    height: 35px;
    text-align: center;
}
.paginationPosts .next.page-numbers, .paginationPosts .next.page-numbers span,
.paginationPosts .prev.page-numbers, .paginationPosts .prev.page-numbers span{
    border: none;
    width: auto;
    color: <?=$main_color?>!important;
    background: none!important;
}
.paginationPosts .next.page-numbers{
    margin-left: 10px;
}
.paginationPosts .prev.page-numbers{
    margin-right: 10px;
}
.paginationPosts .prev.page-numbers:hover span, .paginationPosts .next.page-numbers:hover span{
    color: <?=$main_color?>!important;
}
.paginationPosts .page-numbers.current, .paginationPosts .page-numbers:hover{
    background: <?=$main_color?>;
    color: #fff;
}
.pagination {
    margin: 40px 0 30px;
}
.pagination .nav-links{
    font: 18px 'Gibson-SemiBold';
}
/*end pagination*/
.post-categories{
    margin-top: 30px;
}
.cat-list{
    margin-top: 10px;
}
.cat-list a{
    font-size: 16px;
    color: <?=$main_color?>;
    font-weight: 700;
}
.cat-list a:hover{
    color: <?=$second_color?>;
}
.popular-stars i{
    color: <?=$main_color?>;
}
.popular-post-text h4 a:hover{
    color: var(--main-color);
}
.nav-links .page-numbers{
    color: black;
    margin-right: 30px;
}
.nav-links .page-numbers:hover, .nav-links .page-numbers.current{
    color: var(--main-color)!important;
}
    

/*end blog-content*/

/*------RESPONSIVENESS//RESPONSIVENESS//RESPONSIVENESS---------*/
@media(max-width:1199px){
    .blog-sidebar{
        width: 340px;
    }
    .blog-posts {
        width: calc(100% - 340px);
    }
    .single-post-img img{
        width: 250px;
    }
    .single-post-text {
        width: calc(100% - 250px);
    }
}
@media(max-width:991px){
    .blog-posts,
    .blog-sidebar{
        width: 100%;
    }
    .blog-sidebar{
        margin-top: 20px;
    }
    .search-post{
        max-width: 400px;
        margin: 20px auto;
    }
    h2.blog-title{
        text-align: center;
    }
}
@media(max-width:767px){
    .top-banner-blog{
        height: 300px;
    }
    .top-banner-blog h1 {
        font-size: 40px;
        line-height: 50px;
        letter-spacing: 8px;
    }  
    .single-post-box{
        flex-direction: column;
    } 
    .single-post-text{
        width: 100%;
        padding-left: 0;
    }
    .single-post-text h3 a{
        text-align: center;
    }
    .single-post-img{        
        margin: 0 auto;
        width: 100%;
    }
    .single-post-img img{
        width: 100%;
    }
    .single-post-text article{
        max-height: 170px;
    }
    .views{
        padding-left: 0;
        position: relative;
    }    
}
@media(max-width:480px){
    .single-post-img img{
        height: 200px;
    }
    .more-article{
        width: 100%;
        text-align: center;
        margin-top: 15px;
    }
    .blog-content-box{
        padding: 0;
    }
}
</style>

<div class="blog">
    <section class="top-banner-blog">   
        <span class="decor bottom-left"></span>     
        <span class="decor top-left"></span>
        <span class="decor right-center"></span>
        <!--<img class="top-banner-bg" src="<?=$banner_img_url?>"/>-->
        <div class="container">
            <h1 class="top-banner-text"><?=$blog_title?></h1>
        </div>                    
    </section><!-- end top-banner-blog -->
    
    <section class="blog-content">
        <div class="container-fluid">
            <div class="row">
                <div class="blog-content-box">
                    <div class="blog-posts">
                        <h2 class="blog-title">
                            <a href="/blog/"><?=$blog_sub_title?></a>
                        </h2>
        
                        <?php
                            if ( have_posts() ) :
                                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                                query_posts('post_type=post&paged='.$paged.'&category_name='.$category_name.'&s='.$search_keyword);
                                while ( have_posts() ) : the_post();
                                    $img_url = (get_the_post_thumbnail_url()) ? get_the_post_thumbnail_url() : $default_unit_img_url;
                                    ?>
                            <div class="single-post">
                                <div class="single-post-box">
                                    <div class="single-post-img">
                                        <a href="<?php echo get_permalink(); ?>">
                                            <img src="<?=$img_url?>" alt="" title=""/>
                                        </a>
                                        <div class="single-post-calendar">
                                            <div class="calendar-item">
                                                <span><?php the_time('m/j/Y'); ?></span>
                                            </div>
                                            <div class="single-post-categories">                                                    
                                                <?= get_the_category()[0]->name ?>                                                    
                                            </div>
                                        </div>
                                    </div><!-- end single-post-img -->
                                    <div class="single-post-text">
                                        <h3><a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a></h3> 
                                        <div class="social-author">
                                            <div class="post-author">
                                                <span><?php echo get_the_author(); ?></span>
                                            </div>
                                            <div class="share-post">
                                                <span>Share:</span>
                                                <ul>
                                                    <li>
                                                        <a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo get_permalink(); ?>">
                                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/blog/icon-facebook.svg" title="" alt="">
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo get_permalink(); ?>">
                                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/blog/icon-linkedin.svg" title="" alt="">
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="https://twitter.com/home?status=<?php echo get_permalink(); ?>">
                                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/blog/icon-twitter.svg" title="" alt="">
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <article>
                                            <p><?php echo get_the_excerpt(); ?></p>
                                        </article>
                                        <div class="views">
                                            <div class="views-item">
                                                <div class="views-views">
                                                    <span><?php echo wpb_get_post_views(get_the_ID()); ?></span>
                                                </div>
                                            </div>
                                            <a class="more-article" href="<?php echo get_permalink(); ?>">Read more</a>
                                        </div>                                               
                                    </div><!-- end single-post-text -->
                                </div><!-- end single-post-box --> 
                            </div><!-- end single-post -->        
                            <?php
                            endwhile;
            
                            echo '<div class="clearfix"></div>';
            
                            the_posts_pagination( array(
                                'screen_reader_text' => ' ',
                                'prev_text'          => '<span>< Prev</span>',
                                'next_text'          => '<span>Next ></span>',
                            ) );
            
                            endif;
                            ?>
                    </div><!-- end blog-posts -->

                    <div class="blog-sidebar">
                        <div class="popular-posts">
                            <h2 class="blog-title">Popular Posts</h2>
                            <div class="single-post">
                            <?php
                            $popularpost = new WP_Query( array( 'posts_per_page' => 3, 'meta_key' => 'wpb_post_views_count', 'orderby' => 'meta_value_num', 'order' => 'DESC'  ) );
                            while ($popularpost->have_posts()) : $popularpost->the_post();
                                $img_url = (get_the_post_thumbnail_url()) ? get_the_post_thumbnail_url() : $default_unit_img_url;
                                ?>
                                <div class="popular-single">
                                    <img src="<?=$img_url?>" alt="<?php the_title(); ?>" title="<?php the_title(); ?>"/>
                                    <div class="popular-post-text">
                                        <h4><a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a></h4>
                                        <div class="popular-stars">
                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/blog/5-stars.svg" title="" alt="">
                                        </div>
                                    </div>
                                </div>
                                <?php
                            endwhile;
                            wp_reset_postdata();
                            ?>
                            </div>
                        </div>
                        
                        <?php get_search_form(); ?>

                       <div class="recent-posts">
                            <h2 class="blog-title">Recent Posts</h2>
                            <div class="single-post">
                                <?php
                                $args = array(
                                    'post_type' => 'post',
                                    'posts_per_page' => 3,
                                );
            
                                $query = new WP_Query($args);
                                if ($query->have_posts()) :
                                    while ($query->have_posts()): $query->the_post();
                                        $img_url = (get_the_post_thumbnail_url()) ? get_the_post_thumbnail_url() : $default_unit_img_url;
                                        ?>
                                        <div class="popular-single">
                                            <img src="<?=$img_url?>" alt="<?php the_title(); ?>" title="<?php the_title(); ?>"/>
                                            <div class="popular-post-text">
                                                <h4><a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a></h4>
                                                <span><?php the_time('m/j/Y'); ?></span>
                                            </div>
                                        </div>
                                        <?php
                                    endwhile;
                                endif;
                                wp_reset_postdata();
                                ?>
                            </div>
                        </div>
                        <div class="post-categories">
                            <h2 class="blog-title">Categories</h2>
                            <ul class="cat-list">
                                <?php wp_list_categories( array(
                                    'orderby'  => 'name',
                                    'title_li' => '',
                                ) ); ?>
                            </ul>
                        </div>
                    </div><!-- end blog-sidebar -->
                </div><!-- end blog-content-box -->
            </div><!-- end row -->
        </div><!-- end container-fluid -->
    </section><!-- end blog-content -->
</div><!-- end blog -->