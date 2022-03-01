<?php
	$category = get_category( get_query_var( 'cat' ) );
	$cat_id = $category->cat_ID;
?>

<div class="con_product">
	<div class="box_product">
		<div class="box_list">
			<?php
				// START-Query post item
				$query = array(
					'post_type' => 'product',
					'posts_per_page' => 15,
					'cat' => $cat_id
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
					<?php $val_price_sale = (get_post_meta($post->ID, '_price_sale',true) != NULL) ? number_format(get_post_meta($post->ID, '_price_sale',true)).' đ' : ''; ?>
					<a class="box" href="<?php echo get_permalink(); ?>">
						<?php
							if ( $val_price_sale != NULL ) {
								?>
									<p class="img_sale"><img src="<?php echo THEME_URL_URI; ?>/assets/images/ic_sale.png" alt="Sale"></p>
								<?php

							}
						?>
						<p class="img"><img src="<?php echo $img_avata; ?>" alt="<?php the_title(); ?>"></p>
						<div class="box_info">
							<h2 class="st_title"><?php echo mb_strimwidth(get_the_title(), 0, 30, '...'); ?></h2>
							<?php $val_price = (get_post_meta($post->ID, '_price',true) != NULL) ? number_format(get_post_meta($post->ID, '_price',true)).' đ' : ' Liên hệ '; ?>
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
				else :
					 get_template_part('404');
				endif;
				wp_reset_query();
			?>
		</div>
	</div>
</div>

