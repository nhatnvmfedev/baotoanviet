<?php
	define( 'THEME_URL', get_stylesheet_directory() );
	define( 'THEME_URL_URI', get_template_directory_uri() );
	define( 'CORE', THEME_URL . '/core' );
	add_filter('show_admin_bar', '__return_false');
  	if ( ! function_exists( 'theme_original' ) ) {
        function theme_original() {
			add_theme_support( 'post-thumbnails' );
			add_theme_support( 'custom-background',$theme_original_defaults );
			add_image_size( 'img-banner', 1920, 700, true );
			add_image_size( 'img-news', 554, 330, true );
			/*
			* Thêm chức năng title-tag để tự thêm <title>
			*/
			add_theme_support( 'title-tag' );
        }
        add_action ( 'after_setup_theme', 'theme_original' );
  	}
	/*
	* Tạo menu cho theme
	*/
    register_nav_menu ( 'primary-menu', __('Primary Menu', 'menu_top') );
	register_nav_menu ( 'bottom-menu', __('Bottom Menu', 'menu_bottom') );
	register_nav_menu ( 'sp-menu', __('Smartphone Menu', 'menu_sp') );
	register_nav_menu ( 'cat-menu', __('Cate Menu', 'menu_cat') );
	/**
	@ Thiết lập hàm hiển thị menu top
	@ menu_top( $slug )
	**/
	if ( ! function_exists( 'menu_top' ) ) {
		function menu_top( $slug ) {
			$menu = array(
				'theme_location' => $slug,
				'container' => '',
				'container_class' => '',
				'menu_class' => 'main-menu'
			);
			wp_nav_menu( $menu );
		}
	}

	/**
	@ Thiết lập hàm hiển thị menu bottom
	@ menu_top( $slug )
	**/
	if ( ! function_exists( 'menu_bottom' ) ) {
		function menu_bottom( $slug ) {
			$menu = array(
				'theme_location' => $slug,
				'container' => 'div',
				'container_class' => $slug,
			);
			wp_nav_menu( $menu );
		}
	}
	/**
	@ Thiết lập hàm hiển thị menu smartphone
	@ menu_top( $slug )
	**/
	if ( ! function_exists( 'menu_sp' ) ) {
		function menu_sp( $slug ) {
			$menu = array(
				'theme_location' => $slug,
				'container' => 'div',
				'container_class' => $slug,
			);
			wp_nav_menu( $menu );
		}
	}
	/**
	@ Thiết lập hàm hiển thị menu smartphone
	@ menu_cat( $slug )
	**/
	if ( ! function_exists( 'menu_cat' ) ) {
		function menu_cat( $slug ) {
			$menu = array(
				'theme_location' => $slug,
				'container' => 'div',
				'container_class' => $slug,
			);
			wp_nav_menu( $menu );
		}
	}
	if ( ! isset( $content_width ) ) {
	   $content_width = 1170;
	}


 	/*---- IMPORT CSS----*/
    function theme_style() {
    	wp_enqueue_style( 'style-name', get_stylesheet_uri() );

        wp_enqueue_style( 'slickcss',  get_stylesheet_directory_uri()  . '/assets/css/slick.css', array()) ;
        wp_enqueue_style( 'main',  get_stylesheet_directory_uri()  . '/assets/css/app.css', array()) ;
	    wp_enqueue_script('jquery-lib1', THEME_URL_URI . '/assets/js/jquery.min.js', array(), null, true);
	    wp_enqueue_script('slick', THEME_URL_URI . '/assets/js/slick.min.js', array(), null, true);
        wp_enqueue_script( 'main_js', trailingslashit( get_stylesheet_directory_uri() ) . 'assets/js/main.js','','',true );
	    
    }
    add_action( 'wp_enqueue_scripts', 'theme_style' );

    function load_admin_script(){
        wp_enqueue_script('morney-format', THEME_URL_URI . '/assets/js/simple.money.format.min.js');
        wp_enqueue_script('custom-admin', THEME_URL_URI . '/assets/js/custom-admin.js');
    }
    add_action('admin_enqueue_scripts','load_admin_script');

    // Create post type cart //
    function create_product()
	{
	    /*
	     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
	     */
	    $label = array(
	        'name' => 'Danh sách sản phẩm', //Tên post type dạng số nhiều
	        'singular_name' => 'Sản phẩm' //Tên post type dạng số ít
	    );

	    /*
	     * Biến $args là những tham số quan trọng trong Post Type
	     */
	    $args = array(
	        'labels' => $label, //Gọi các label trong biến $label ở trên
	        'description' => 'Post type đăng sản phẩm', //Mô tả của post type
	        'supports' => array(
	            'title',
	            'excerpt',
	            'editor',
	            'thumbnail',
	        ), //Các tính năng được hỗ trợ trong post type
	        'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
	        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
	        'public' => true, //Kích hoạt post type
	        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
	        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
	        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
	        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
	        'menu_position' => 2, //Thứ tự vị trí hiển thị trong menu (tay trái)
	        'menu_icon' => 'dashicons-star-half', //Đường dẫn tới icon sẽ hiển thị
	        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
	        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
	        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
	        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
	        'capability_type' => 'post' //
	    );
	    register_post_type('product', $args); //Tạo post type với slug tên là datnen và các tham số trong biến $args ở trên
	}
	/* Kích hoạt hàm tạo custom post type */
	add_action('init', 'create_product');


	// Create post type banner //
    function create_banner()
	{
	    /*
	     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
	     */
	    $label = array(
	        'name' => 'Danh sách banner', //Tên post type dạng số nhiều
	        'singular_name' => 'banner' //Tên post type dạng số ít
	    );

	    /*
	     * Biến $args là những tham số quan trọng trong Post Type
	     */
	    $args = array(
	        'labels' => $label, //Gọi các label trong biến $label ở trên
	        'description' => 'Post type đăng banner', //Mô tả của post type
	        'supports' => array(
	            'title',
	            'thumbnail',
	        ), //Các tính năng được hỗ trợ trong post type
	        'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
	        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
	        'public' => true, //Kích hoạt post type
	        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
	        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
	        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
	        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
	        'menu_position' => 3, //Thứ tự vị trí hiển thị trong menu (tay trái)
	        'menu_icon' => 'dashicons-format-gallery', //Đường dẫn tới icon sẽ hiển thị
	        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
	        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
	        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
	        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
	        'capability_type' => 'post' //
	    );
	    register_post_type('banner', $args); //Tạo post type với slug tên là datnen và các tham số trong biến $args ở trên
	}
	/* Kích hoạt hàm tạo custom post type */
	add_action('init', 'create_banner');

	/**
	 Khai báo meta giá
	**/
	function metabox_price()
	{
		add_meta_box( 'price', 'Giá', 'price', 'product' );
	}
	add_action( 'add_meta_boxes', 'metabox_price' );
	/**
	 Khai báo callback
	 @param $post là đối tượng WP_Post để nhận thông tin của post
	**/
	function price( $post )
	{
		$price = get_post_meta( $post->ID, '_price', true );
		// Tạo trường Link Download
		echo ('<input type="text" id="price" name="price" value='.esc_attr($price).'>');
	}
	/**
	 Lưu dữ liệu meta box khi nhập vào
	 @param post_id là ID của post hiện tại
	**/
	function metabox_price_save( $post_id )
	{
	    if (isset($_POST['price']) && $_POST['price'] != '') {
	         $price = sanitize_text_field( $_POST['price'] );
	         update_post_meta( $post_id, '_price', $price );
	     }
	}
	add_action( 'save_post', 'metabox_price_save' );


	/**
	 Khai báo meta giá khuyến mãi
	**/
	function metabox_price_sale()
	{
		add_meta_box( 'price_sale', 'Giá khuyến mãi', 'price_sale', 'product' );
	}
	add_action( 'add_meta_boxes', 'metabox_price_sale' );
	/**
	 Khai báo callback
	 @param $post là đối tượng WP_Post để nhận thông tin của post
	**/
	function price_sale( $post )
	{
		$price_sale = get_post_meta( $post->ID, '_price_sale', true );
		// Tạo trường Link Download
		echo ('<input type="text" id="price_sale" name="price_sale" value='.esc_attr($price_sale).'>');
	}
	/**
	 Lưu dữ liệu meta box khi nhập vào
	 @param post_id là ID của post hiện tại
	**/
	function metabox_price_sale_save( $post_id )
	{
	    if (isset($_POST['price_sale']) && $_POST['price_sale'] != '') {
	         $price_sale = sanitize_text_field( $_POST['price_sale'] );
	         update_post_meta( $post_id, '_price_sale', $price_sale );
	     }
	}
	add_action( 'save_post', 'metabox_price_sale_save' );


	// Chuyển đổi qua kiểu tiền tệ //
	function jam_read_num_forvietnamese( $num = false ) {
	    $str = '';
	    $num  = trim($num);
	    $arr = str_split($num);
	    $count = count( $arr );
	    $f = $num;
	       //KHÔNG ĐỌC BẤT KÌ SỐ NÀO NHỎ DƯỚI 999 ngàn
	    if ( $count < 7 ) {
	        $str = $num;
	    } else {
	        // từ 6 số trở lên là triệu, ta sẽ đọc nó !
	        // "32,000,000,000"
	        $r = explode(',', $f);
	        switch ( count ( $r ) ) {
	            case 4:
	                $str = $r[0] . ' tỉ';
	                if ( (int) $r[1] ) { $str .= ' '. $r[1] . ' Tr'; }
	            break;
	            case 3:
	                $str = $r[0] . ' Triệu';
	                if ( (int) $r[1] ) { $str .= ' '. $r[1] . 'K'; }
	            break;
	        }
	    }
	    return ( $str . ' VNĐ' );
	}


    // ajax send form //
	function assets() {
		wp_localize_script( 'tuts/js', 'mn', array(
			'nonce'    => wp_create_nonce( 'mn' ),
			'ajax_url' => admin_url( 'admin-ajax.php' )
		));
	}
	add_action('wp_enqueue_scripts', 'assets', 100);


	add_action('wp_ajax_ajax_form_guest_post' , 'ajax_form_guest_post');
	add_action('wp_ajax_nopriv_ajax_form_guest_post','ajax_form_guest_post');
	function ajax_form_guest_post(){
		ob_start();
		session_start();
		$_SESSION['cart_title'] = $_POST['cart_title'];
		$_SESSION['cart_price'] = $_POST['cart_price'];
		$_SESSION['cart_url_images'] = $_POST['cart_url_images'];
		$_SESSION['cart_name'] = $_POST['cart_name'];
		$_SESSION['cart_phone'] = $_POST['cart_phone'];
		$_SESSION['cart_mail'] = $_POST['cart_mail'];
		$_SESSION['cart_address'] = $_POST['cart_address'];
		$_SESSION['cart_content'] = $_POST['cart_content'];
	}

	add_action('wp_ajax_ajax_form_info_finish' , 'ajax_form_info_finish');
	add_action('wp_ajax_nopriv_ajax_form_info_finish','ajax_form_info_finish');
	function ajax_form_info_finish(){
		$cart_title = $_POST['cart_title'];
		$cart_price = $_POST['cart_price'];
		$cart_url_images = $_POST['cart_url_images'];
		$cart_name = $_POST['cart_name'];
		$cart_phone = $_POST['cart_phone'];
		$cart_mail = $_POST['cart_mail'];
		$cart_address = $_POST['cart_address'];
		$cart_content = $_POST['cart_content'];

		if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");
		else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;
		$date = date("Y/m/d");
	    $to = "minh.nhat.dev@gmail.com, ".$cart_mail."";
	    $subject = "[Thông tin đơn hàng] ".$cart_title." (".$date.")";
	    $headers = array('Content-Type: text/html; charset=UTF-8');
	    $message = '<div marginwidth="0" marginheight="0" style="font-family:Arial,serif;"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="table-layout:fixed;"><tbody><tr><td width="100%" valign="top" bgcolor="#f5f5f5" style="border-top:3px solid #579902;padding:0;"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;width:100%;"><tbody><tr><td bgcolor="white" style="padding:10px 0; text-align: center;"><a href="' .home_url().'" target="_blank"><img src="'.$cart_url_images.'" style="max-height:70px;max-width:80%;" border="0"></a></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table border="0" cellpadding="0" cellspacing="0" align="center" style="min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;" width="620"><tbody><tr><td style="border-left:6px solid #fb651b;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;" bgcolor="#fdfdfd"><p style="margin: 10px 0">Chào <b> '.$cart_name.'</b>,</p><p style="margin: 10px 0">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style="margin: 10px 0"><b style="text-decoration:underline;">THÔNG TIN ĐƠN HÀNG CỦA QUÝ KHÁCH:</b><br/><label style="font-weight:600;padding-left:12px;">Họ và tên: </label> ' .$cart_name.'<br/><label style="font-weight:600;padding-left:12px;">Địa chỉ: </label> '.$cart_address.'<br/><label style="font-weight:600;padding-left:12px;">Email: </label> '.$cart_mail.'<br/><label style="font-weight:600;padding-left:12px;">Số điện thoại: </label> '.$cart_phone.'<br/><label style="font-weight:600;padding-left:12px;color:#e73435">Tên sản phẩm: </label> <label style="font-weight: bold;color:#355C7D">'.$cart_title.'</label><br/><label style="font-weight:600;padding-left:12px;color:#e73435">Giá: </label> <label style="font-weight: bold;color:#355C7D">'.$cart_price.'</label><br/><label style="font-weight:600;padding-left:12px;">Nội dung liên hệ: </label> '.$cart_content.'<br/><label style="font-weight:600;padding-left:12px;">IP truy cập: </label> '.$IP_NUMBER.'<br/><label style="font-weight:600;padding-left:12px;">Ngày gửi liên hệ: </label> '.$date.'<br/></p><p style="margin: 10px 0">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style="margin: 10px 0">Chân thành cảm ơn!</p></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td bgcolor="#e1e1e1" style="padding:15px 10px 25px"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;min-width:290px;" width="620"><tbody><tr><td><table width="80%" cellpadding="0" cellspacing="0" border="0" align="left"><tbody><tr><td valign="top" style="font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;"></td></tr></tbody></table><table width="20%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td style="font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;"><span>Follow us on</span><br><a href="" target="_blank"><img src="https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png" width="27" height="27" alt="Facebook logo" title="Facebook" border="0" style="padding:3px;"></a>&nbsp;<a href="" target="_blank"><img src="https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png" width="27" height="27" alt="Twitter logo" title="Twitter" border="0" style="padding:3px;"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>';
	    if( wp_mail($to, $subject, $message, $headers) ){
	        echo "mail sent";
	    } else {
	        echo "mail not sent";
	    }

	    die();
	}

	add_action('init', 'create_categorypost');

    function create_categorypost() {
        register_taxonomy('categorypost', 'post', array(
                'label' => 'Chủng loại',
                'labels' => array(
                    'name'          => __('Chủng loại'),
                    'singular_name' => __('categorypost'),
                    'add_new_item'  => __('Thêm chủng loại'),
                    'new_item'      => __('Thêm chủng loại'),
                    'add_new'       => __('Thêm chủng loại'),
                    'edit_item'     => __('Sửa chủng loại')
                ),
                'public' => true,
                'hierarchical' => true
            )
        );
    }


 function create_specials_type()
{
    register_post_type('specials',
        array(
            'labels' => array(
                'name' => __('Specials'),
                'singular_name' => __('Specials')
            ),
            'public' => true,
            'has_archive' => true,
            'supports' => array(
                'title',
                'editor',
                'thumbnail',
                'revisions'
            ),
            'show_ui' => true,
            'show_in_menu' => true
        )
    );

    add_theme_support('post-thumbnails',
        array(
            'specials'
        )
    );
}

 add_action('admin_menu', 'phone_limit_create_menu');
function phone_limit_create_menu() {
    add_menu_page('Số điện thoại', 'Số điện thoại', 'administrator', __FILE__, 'phone_limit_settings_page' , 'dashicons-phone', 10);
    add_action( 'admin_init', 'register_phone_limit_settings' );
}

function register_phone_limit_settings() {
    register_setting( 'phone-limit-settings-group', 'phone_main_option' );
    register_setting( 'phone-limit-settings-group', 'phone_sub_option' );
}

function phone_limit_settings_page() { ?>
<div class="wrap">
    <h1>Số điện thoại</h1>
    <form method="post" action="options.php">
        <?php settings_fields( 'phone-limit-settings-group' ); ?>
        <?php do_settings_sections( 'phone-limit-settings-group' ); ?>
        <table class="form-table">
            <tr valign="top">
                <th scope="row">Số điện thoại chính:</th>
                <td><input type="tel" name="phone_main_option" value="<?php echo esc_attr( get_option('phone_main_option') ); ?>" placeholder="00" /></td>
            </tr>
            <tr valign="top">
                <th scope="row">Số điện thoại phụ:</th>
                <td><input type="tel" name="phone_sub_option" value="<?php echo esc_attr( get_option('phone_sub_option') ); ?>" placeholder="00"/></td>
            </tr>
        </table>
        <?php submit_button(); ?>
    </form>
</div>
 <?php } 
function devvn_wp_corenavi($custom_query = null, $paged = null) {
	global $wp_query;
	if($custom_query) $main_query = $custom_query;
	else $main_query = $wp_query;
	$paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;
	$big = 999999999;
	$total = isset($main_query->max_num_pages)?$main_query->max_num_pages:'';
	if($total > 1) echo '<div class="site-pagination">';
	echo paginate_links( array(
		'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
		'format' => '?paged=%#%',
		'current' => max( 1, $paged ),
		'total' => $total,
        'mid_size' => '2', // Số trang hiển thị khi có nhiều trang trước khi hiển thị ...
        'prev_text'    => __('<i class="ion-arrow-left-b"></i>'),
        'next_text'    => __('<i class="ion-arrow-right-b"></i>'),
    ) );
	if($total > 1) echo '</div>';
}
?>