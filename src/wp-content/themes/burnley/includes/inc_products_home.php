<div class="con_product">
	<?php
		// Query categories parent //
		$categories = get_categories( array(
			'post_type' => 'product',
		    'orderby' => 'id',
		    'parent'  => 0
		) );
		?>
		<?php
		foreach ( $categories as $category ) {  // START-foreach categories parent0
			echo '<div class="box_product">';
			printf( '<p class="st_title_home"><span>%2$s</span></p>',
			    esc_url( get_category_link( $category->term_id ) ),
			    esc_html( $category->name )
			);
			$id_cat_parent0 = $category->cat_ID;// ID categories parent0

			// Query categories parent-sub //
			$categoriesSub = get_categories( array(
				'post_type' => 'product',
			    'orderby' => 'name',
			    'parent'  => $id_cat_parent0
			) );
			?>
				<?php
				echo '<div class="box_list">';
				foreach ( $categoriesSub as $categorySub ) { // START-foreach categoriesSUB
					$id_cat_parentSub = $categorySub->cat_ID; // ID categoriesSub

					// START-Query post item
					$query = array(
						'post_type' => 'product',
						'posts_per_page' => 12,
						'cat' => $id_cat_parentSub
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
								<?php
									printf( '<h3 class="txt_cate">%1$s</h3><br />',
										esc_html( $categorySub->name )
									);
								?>
								<h2 class="st_title"><?php echo mb_strimwidth(get_the_title(), 0, 60, '...'); ?></h2>
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
					// END-Query post item
				} // END-foreach categoriesSUB
			echo '</div>';
		echo '</div>';
		} // END-foreach categories parent0
	?>
</div>