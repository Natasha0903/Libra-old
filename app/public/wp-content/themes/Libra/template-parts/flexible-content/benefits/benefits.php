<?php $benefits++; ?>
<section class="benefits">
    <?php if($benefits < 2):?>
        <?php include('benefits-style.php');?>
    <?php endif;?>
        <div class="container">
            <h2><?=get_sub_field('title');?></h2>
            <div class="blocks_wrap">
                <?php
                    $items = get_sub_field('blocks');
                    if($items):
                        foreach($items as $item):
                        ?>
                            <div class="item">
                                <div class="icon_wrap">
                                    <?php $icon = $item['icon']?>
                                    <img src="<?php echo $icon['url']?>" alt="<?php echo $icon['alt']?>" />
                                </div>
                                <h3><?=$item['block_title']?></h3>
                            </div>
                        <?php
                        endforeach;
                    endif;
                ?>
            </div>
        </div><!-- end container -->
</section><!-- end benefits -->