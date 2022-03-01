<div class="con_news_other">
	<ul>
		<?php
			$query = array(
				'post' => 'post',
				'post__not_in' => array($post->ID),
				'cat' => $cat_id
			);
			$the_query = new WP_Query($query);
			if($the_query->have_posts()):
				// The Loop
				while ( $the_query->have_posts() ) : $the_query->the_post();
			?>
				<li><a href="<?php echo get_permalink(); ?>"><?php echo get_the_title(); ?></a> <span>( <?php echo get_the_date(); ?> )</span></li>
			<?php
				endwhile;
			endif;
			wp_reset_query();
		?>
	</ul>

</div>
