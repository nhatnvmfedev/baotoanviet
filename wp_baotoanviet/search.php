<?php get_header(); ?>

	<?php get_template_part('template/md_breadcrumb'); ?> <!-- Breadcrumb -->
	<div class="con_product">
		<div class="box_product">
			<div class="box_list">
				<?php $search_term = $_GET['s']; ?>
				<?php
					// START-Query post item
					$query = array(
						'post_type' => 'product',
						'posts_per_page' => 15,
						's' => $search_term
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
							<p class="img"><img src="<?php echo $img_avata; ?>" alt="<?php the_title(); ?>"></p>
							<div class="box_info">
								<h2 class="st_title"><?php echo mb_strimwidth(get_the_title(), 0, 30, '...'); ?></h2>
								<?php $val_price = (get_post_meta($post->ID, '_price',true) != NULL) ? number_format(get_post_meta($post->ID, '_price',true)).' đ' : ' Liên hệ '; ?>
								<p class="txt_price">Giá: <?php echo $val_price; ?></p>
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

<?php get_footer(); ?>