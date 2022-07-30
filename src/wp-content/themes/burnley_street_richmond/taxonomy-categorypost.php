<?php get_header(); ?>
	<?php include 'template/md_breadcrumb.php';
	$term2 = get_term_by( 'slug', get_query_var( 'categorypost' ), get_query_var( 'categorypost' ) );
?>
<?php
	// global $the_query;
	$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
	$query = array(
	    'tax_query' => array(
	        array(
	            'taxonomy' => 'categorypost',
	            'field' => 'slug',
	            'terms' => $term
	        ),
	    ),
	    'paged' => $paged
	);
	$the_query = new WP_Query($query);
?>
<div class="con_product">
	<div class="box_product">
		<div class="box_list">
			<?php
				if($the_query->have_posts()) :
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
							<h2 class="st_title"><?php echo mb_strimwidth(get_the_title(), 0, 50, '...'); ?></h2>
							<p class="txt_time"><i class="fa fa-calendar-o" aria-hidden="true"></i> <?php echo get_the_date(); ?></p>
							<p class="txt_excerpt"><?php echo mb_strimwidth(get_the_title(), 0, 50, '...'); ?></p>
						</div>
					</a>
					<?php
					endwhile;
				else :
					get_template_part('404');
				endif;
			?>
		</div>
		<?php devvn_wp_corenavi($the_query); ?>
	</div>
</div>



<?php get_footer(); ?>