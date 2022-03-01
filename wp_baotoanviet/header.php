<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="profile" href="https://gmpg.org/xfn/11" />
	<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<?php wp_head(); ?>
	
</head>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3"></script>
<body <?php body_class(); ?>>
	<header id="header">
		<div class="con_header">
			<div class="box_header">
				<div class="box_logo">
					<p class="img"><a href="<?php echo home_url(); ?>"><img src="<?php echo THEME_URL_URI ?>/assets/images/logo.png" alt="<?php echo get_bloginfo(); ?>" title="<?php echo get_bloginfo(); ?>" /></a></p>
					<h1 class="st_title-main">Công Ty Cổ Phần <span class="c_yellow"><br class="view_sp">Bảo Toàn Việt</span></h1>
				</div>
				<p class="txt_phone_sp view_sp"><a href="tel:<?php echo get_option('phone_main_option');?>"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic_phone.png" alt=""></a></p>
				<div class="box_social view_pc">
					<div class="box_search">
						<form role="search" method="get" class="filter-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
							<input type="search" id="" class="input_search" placeholder="Tìm kiếm tên sản phẩm... " value="<?php echo get_search_query(); ?>" name="s" />
							<button type="submit" class="site-btn fs-submit"><img src="<?php echo THEME_URL_URI ?>/assets/images/search.png" /></button>
						</form>
					</div>
				</div>
				<div class="box_menu_contact view_pc-tab">
					<p class="img"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic_phone.png" alt=""></p>
					<div class="box_info">
						<p class="txt_text"><span class="txt_small">Tư vấn tận tình</span></p>
						<p class="txt_phone"><?php echo get_option('phone_main_option');?> - <?php echo get_option('phone_sub_option');?></p>
					</div>
				</div>
			</div>
		</div>
		<!--box_open_menusp-->
		<div class="box_open_menusp view_tab-sp">
			<span></span>
		</div>
		<div class="box_menu_sp view_tab-sp">
			<div class="box_close_menusp view_tab-sp">
				<span></span>
			</div>
			<div class="box_small_menu_sp">
				<?php menu_sp( 'sp-menu' ); ?>
			</div>
		</div>
		<?php include 'includes/inc_menu.php'; ?>
	</header>