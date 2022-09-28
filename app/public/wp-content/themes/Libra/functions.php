<?php
define("THEME_DIR", get_template_directory_uri());

$default_banner_img_url = THEME_DIR . '/images/homepage/home-banner.jpg';
/*--- REMOVE GENERATOR META TAG ---*/
remove_action('wp_head', 'wp_generator');
 if( function_exists('acf_add_options_page') ) {
 	acf_add_options_page(array(
 		'page_title' 	=> 'Theme General Settings',
 		'menu_title'	=> 'Theme Settings',
 		'menu_slug' 	=> 'theme-general-settings',
 		'capability'	=> 'edit_posts',
 		'redirect'		=> false
 	));

 	acf_add_options_sub_page(array(
 		'page_title' 	=> 'Theme Header Settings',
 		'menu_title'	=> 'Header',
 		'parent_slug'	=> 'theme-general-settings',
 	));

 	acf_add_options_sub_page(array(
 		'page_title' 	=> 'Theme Footer Settings',
 		'menu_title'	=> 'Footer',
 		'parent_slug'	=> 'theme-general-settings',
 	));
 }
//title tag support
add_theme_support( 'title-tag' );

// ENQUEUE STYLES
     
function enqueue_styles() {
                     
}
add_action( 'wp_enqueue_scripts', 'enqueue_styles' );
     
// ENQUEUE SCRIPTS

function enqueue_scripts() {
    
    wp_deregister_script( 'jquery' );
    wp_register_script( 'jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js');
    wp_enqueue_script( 'jquery' );                  
    
    wp_register_script( 'custom_js', get_stylesheet_directory_uri() . '/js/custom.js' );
    wp_enqueue_script( 'custom_js' );   
    
    
}
add_action('wp_enqueue_scripts', 'enqueue_scripts', 11);

if ( function_exists('register_sidebar') )
    register_sidebar(
        array(
            'id' => 'home-banner-widgets',
            'name' => 'Home Banner Widgets',
            'before_widget' => '',
			      'after_widget' => '',
        )
    );

function register_my_menus(){
    register_nav_menus (
        array('header-menu' => 'header-menu1', 'footer-menu' => 'footer-menu1')
    );
}

if (function_exists('register_nav_menus')) {
    add_action( 'init', 'register_my_menus' );
}



function new_excerpt_length($length) {
    return 70;
}
add_filter('excerpt_length', 'new_excerpt_length');

add_theme_support('post-thumbnails');
set_post_thumbnail_size(9999,9999,TRUE);

remove_filter( 'the_excerpt', 'wpautop' );

add_filter('excerpt_more', function($more) {
 return '...';
});
function wpb_set_post_views($postID) {
    $count_key = 'wpb_post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    }else{
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}
//To keep the count accurate, lets get rid of prefetching
remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);

function wpb_get_post_views($postID){
    $count_key = 'wpb_post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
        return "0 View";
    }
    return 'Views '.$count;
}

function wph_add_mime_types($mimes) {
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'wph_add_mime_types');

/* Function for post duplication. Dups appear as drafts. User is redirected to the edit screen*/
function rd_duplicate_post_as_draft(){
  global $wpdb;
  if (! ( isset( $_GET['post']) || isset( $_POST['post'])  || ( isset($_REQUEST['action']) && 'rd_duplicate_post_as_draft' == $_REQUEST['action'] ) ) ) {
    wp_die('No post to duplicate has been supplied!');
  }
 
  if ( !isset( $_GET['duplicate_nonce'] ) || !wp_verify_nonce( $_GET['duplicate_nonce'], basename( __FILE__ ) ) )
    return;
 
  $post_id = (isset($_GET['post']) ? absint( $_GET['post'] ) : absint( $_POST['post'] ) );

  $post = get_post( $post_id );

  $current_user = wp_get_current_user();
  $new_post_author = $current_user->ID;
 
  if (isset( $post ) && $post != null) {
 
    $args = array(
      'comment_status' => $post->comment_status,
      'ping_status'    => $post->ping_status,
      'post_author'    => $new_post_author,
      'post_content'   => $post->post_content,
      'post_excerpt'   => $post->post_excerpt,
      'post_name'      => $post->post_name,
      'post_parent'    => $post->post_parent,
      'post_password'  => $post->post_password,
      'post_status'    => 'draft',
      'post_title'     => $post->post_title,
      'post_type'      => $post->post_type,
      'to_ping'        => $post->to_ping,
      'menu_order'     => $post->menu_order
    );
 
    $new_post_id = wp_insert_post( $args );
 
    $taxonomies = get_object_taxonomies($post->post_type); // returns array of taxonomy names for post type, ex array("category", "post_tag");
    foreach ($taxonomies as $taxonomy) {
      $post_terms = wp_get_object_terms($post_id, $taxonomy, array('fields' => 'slugs'));
      wp_set_object_terms($new_post_id, $post_terms, $taxonomy, false);
    }
 
    $post_meta_infos = $wpdb->get_results("SELECT meta_key, meta_value FROM $wpdb->postmeta WHERE post_id=$post_id");
    if (count($post_meta_infos)!=0) {
      $sql_query = "INSERT INTO $wpdb->postmeta (post_id, meta_key, meta_value) ";
      foreach ($post_meta_infos as $meta_info) {
        $meta_key = $meta_info->meta_key;
        if( $meta_key == '_wp_old_slug' ) continue;
        $meta_value = addslashes($meta_info->meta_value);
        $sql_query_sel[]= "SELECT $new_post_id, '$meta_key', '$meta_value'";
      }
      $sql_query.= implode(" UNION ALL ", $sql_query_sel);
      $wpdb->query($sql_query);
    }
 
    wp_redirect( admin_url( 'post.php?action=edit&post=' . $new_post_id ) );
    exit;
  } else {
    wp_die('Post creation failed, could not find original post: ' . $post_id);
  }
}
add_action( 'admin_action_rd_duplicate_post_as_draft', 'rd_duplicate_post_as_draft' );
 
function rd_duplicate_post_link( $actions, $post ) {
  if (current_user_can('edit_posts')) {
    $actions['duplicate'] = '<a href="' . wp_nonce_url('admin.php?action=rd_duplicate_post_as_draft&post=' . $post->ID, basename(__FILE__), 'duplicate_nonce' ) . '" title="Duplicate this item" rel="permalink">Duplicate</a>';
  }
  return $actions;
}
 
add_filter( 'post_row_actions', 'rd_duplicate_post_link', 10, 2 );
add_filter('page_row_actions', 'rd_duplicate_post_link', 10, 2);


add_action( 'wp_print_styles', 'wps_deregister_styles', 100 );
function wps_deregister_styles() {
    wp_dequeue_style( 'wp-block-library' );
}

update_option('upload_url_path', '/wp-content/uploads'); 
