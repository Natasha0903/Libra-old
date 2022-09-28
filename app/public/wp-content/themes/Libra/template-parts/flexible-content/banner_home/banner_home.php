<?php $banner_home++; ?>
<section class="banner_home">
    <?php if($banner_home < 2):?>
        <?php include('banner_home-style.php');?>
    <?php endif;?>
    <div class="content_wrap">
        <div class="text_wrap">
            <h1><?=get_sub_field('banner_title');?></h1>
            <div class="text_area"><?=get_sub_field('banner_text');?></div>
            <div class="btn_wrap">
                <?php $section_cta = get_sub_field('banner_button'); ?>
                <a class="cta_button" target="<?= $section_cta['target']; ?>" href="<?= $section_cta["url"]; ?>">
                    <span><?= $section_cta["title"]; ?></span><span class="line"></span>
                </a>
            </div>
        </div>
        <div class="img_wrap">
            <svg preserveAspectRatio="none" version="1.1" id="img_bg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                 viewBox="0 0 70.929 351.476" style="enable-background:new 0 0 70.929 351.476;" xml:space="preserve">
            <path class="st0" d="M0,0c0,0,60.329,67.95,59.079,183.23C58.03,279.975,0,351.476,0,351.476V0z"/>
            <path class="st1" d="M11.255,351.476L0.141,351.12c0,0,54.709-59.99,54.709-175.44S0,0,0,0h11.255
                C39.081,52.447,54.85,112.171,54.85,175.68C54.85,239.194,39.085,299.026,11.255,351.476L11.255,351.476z"/>
            <path class="st2" d="M53.035,277.135C64.613,245.532,70.93,211.383,70.929,175.8c0.001-35.667-6.346-69.892-17.976-101.557
                c-1.828-4.977-7.344-7.53-12.321-5.702c-4.977,1.827-7.53,7.344-5.702,12.321c10.865,29.588,16.798,61.55,16.799,94.938
                c-0.001,33.31-5.906,65.2-16.723,94.731c-1.824,4.978,0.734,10.493,5.712,12.316C45.697,284.671,51.211,282.114,53.035,277.135
                L53.035,277.135L53.035,277.135z"/>
            </svg>
            <?php $images = get_sub_field('banner_image')?>
            <img src="<?php echo $images['url']?>" alt="<?php echo $images['alt']?>" />
            <div class="form">
                <?=get_sub_field('form_shortcode');?>
            </div>

            <button>
                <svg version="1.1" id="arrow" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     viewBox="0 0 14 8" style="enable-background:new 0 0 14 8;" xml:space="preserve">
                    <g>
                        <path class="st0" d="M7,8C6.744,8,6.488,7.902,6.293,7.707l-6-6c-0.391-0.391-0.391-1.023,0-1.414s1.023-0.391,1.414,0L7,5.586
		l5.293-5.293c0.391-0.391,1.023-0.391,1.414,0s0.391,1.023,0,1.414l-6,6C7.512,7.902,7.256,8,7,8z"/>
                    </g>
                </svg>
            </button>
        </div>
    </div><!-- end content_wrap -->
    <script>
        var btn = document.querySelector('.banner_home .img_wrap button');
        btn.addEventListener("click", next, false);

        function next() {
            var first = document.querySelector('.banner_home').offsetHeight;
            var scrollWindow = (window.pageYOffset || document.documentElement.scrollTop)  - ( document.documentElement.clientTop || 0) - document.querySelector('header').offsetHeight;
            if(scrollWindow < first){
                window.scroll({ top: first - 90, left: 0, behavior: 'smooth' });
            }
        }
    </script>
</section><!-- end banner_home -->