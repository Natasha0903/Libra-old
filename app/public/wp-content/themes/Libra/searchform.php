<form  class="search-post" name="searchPost" role="search" method="get" id="searchform" action="<?php echo home_url( '/' ) ?>" >
    <input class="search-field" type="text" placeholder="SEARCH..." value="<?php echo get_search_query() ?>" name="s" id="s" />
    <div class="submit-area">
        <div class="search-icon">
            <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/blog/search.svg" title="" alt="">
        </div>
        <input class="submit-field" type="submit" id="searchsubmit" name="submit" value=""/>
    </div>    
</form><!--end of searchPost-->