<?php $about_company++; ?>
<section class="about_company">
    <?php if($about_company < 2):?>
        <?php include('about_company-style.php');?>
    <?php endif;?>
        <div class="container">
            <div class="content_wrap">
                <div class="image_wrap">
                    <?php $images = get_sub_field('image')?>
                    <img src="<?php echo $images['url']?>" alt="<?php echo $images['alt']?>" />
                </div>
                <div class="text_wrappper">
                    <h2><?=get_sub_field('title');?></h2>
                    <div class="text_wrap">
                        <?=get_sub_field('text');?>
                    </div>
                    <div class="button_wrap">
                        <?php $button = get_sub_field('button'); ?>
                        <a class="cta_button" target="<?= $button['target']; ?>" href="<?= $button["url"]; ?>">
                            <span><?= $button["title"]; ?></span><span class="line"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div><!-- end container -->
</section><!-- end about_company -->