<?php get_header(); ?>
<?php if ( have_posts() ) : ?>
   <?php while ( have_posts() ) : the_post(); ?>
   <?php endwhile; ?>
<?php endif; ?>
    <div class="content">
        <?php if(get_the_content()): ?>
                <section class="wpContent">
                    <div class="container">
                        <article>
                            <?php the_content(); ?> 
                        </article>                    
                    </div>           
                </section><!--End wpContent-->
                <?php include(get_theme_root().'/'.get_option('stylesheet').'/template-parts/main-flexible-content.php');?>                    
            <?php else: ?>
                <?php include(get_theme_root().'/'.get_option('stylesheet').'/template-parts/main-flexible-content.php');?>                          
        <?php endif; ?>        
    </div><!--End Content-->
<?php get_footer(); ?>