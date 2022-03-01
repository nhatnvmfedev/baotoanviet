<div class="box_sidebar view_pc-tab">
	<?php
		$categories2 = get_the_category();
		$cat_id2 = $categories2[0]->term_id; // get ID cat
		$cat_title2 = $categories2[0]->name; // get title cat
	?>
	<?php if ( $cat_title2 ) : ?>
	<div class="box_support_custom box_products_right">
		<p class="txt_fsz18"><i class="ion-grid"></i>&nbsp;&nbsp;<?php echo $cat_title2; ?></p>
		<div class="box_list" id="scrollbar">
			<?php
				// START-Query post item
				$query = array(
					'post_type' => 'product',
					'post__not_in' => array($post->ID),
					'cat' => $cat_id2
				);
				$the_query = new WP_Query($query);
				if($the_query->have_posts()):
					// The Loop
					while ( $the_query->have_posts() ) : $the_query->the_post();
						$img_avata = THEME_URL_URI.'/assets/images/img-empty.jpg';
						if (get_the_post_thumbnail_url() != NULL) {
							$img_avata = get_the_post_thumbnail_url();
						}
				?>
					<a class="box" href="<?php echo get_permalink(); ?>">
						<?php if (get_post_meta($post->ID, '_price_sale',true) != NULL) : ?>
							<p class="img_sale"><img src="<?php echo THEME_URL_URI; ?>/assets/images/ic_sale.png" alt="Sale"></p>
						<?php endif; ?>
						<p class="img"><img src="<?php echo $img_avata; ?>" alt="<?php the_title(); ?>"></p>
						<div class="box_info">
							<h2 class="st_title"><?php echo mb_strimwidth(get_the_title(), 0, 50, '...'); ?></h2>
							<?php $val_price = (get_post_meta($post->ID, '_price',true) != NULL) ? number_format(get_post_meta($post->ID, '_price',true)).' đ' : ' Liên hệ '; ?>

								<?php $val_price_sale = (get_post_meta($post->ID, '_price_sale',true) != NULL) ? number_format(get_post_meta($post->ID, '_price_sale',true)).' đ' : ''; ?>
								<?php
									$val_price_html = 0;
									if ( $val_price_sale == NULL ) {
										$val_price_html = '<span class="not_sale">'.$val_price.'</span>';

									}
									else if ( $val_price_sale != NULL ) {
										$val_price_html = '<span class="have_sale">'.$val_price.'</span>';
									}

								?>
								<p class="txt_price"><?php echo $val_price_html; ?> <span class="price_sale"><?php echo $val_price_sale; ?></span></p>
						</div>
					</a>
				<?php
					endwhile;
				endif;
				wp_reset_query();
			?>
		</div>
	</div>
	<?php endif; ?>
	<!-- <div class="box_support_custom">
		<p class="txt_fsz18">Hỗ trợ khách hàng</p>
		<p class="img_man"><img src="<?php echo THEME_URL_URI ?>/assets/images/i-man.png" alt="Hỗ trợ khách hàng"></p>
		<div class="box_list">
			<div class="box">
				<div class="box_info">
					<p class="txt_name">Nhân viên 1</p>
					<p class="txt_tel"><?php echo get_option('phone_main_option');?></p>
				</div>
				<p class="img"><a href="skype:username?call"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic_skype.png" alt="Hỗ trợ khách hàng"></a></p>
			</div>
			<div class="box">
				<div class="box_info">
					<p class="txt_name">Nhân viên 2</p>
					<p class="txt_tel"><?php echo get_option('phone_sub_option');?></p>
				</div>
				<p class="img"><a href="skype:username?call"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic_skype.png" alt="Hỗ trợ khách hàng"></a></p>
			</div>
		</div>
	</div> -->
</div>