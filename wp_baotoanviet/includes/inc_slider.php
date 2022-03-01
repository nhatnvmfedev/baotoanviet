<div class="con_slider">
	<div class="box_slider">
		<?php
		    query_posts(array(
		        'post_type' => 'banner',
		        'showposts' => 5
		    ) );
		?>
		<?php while (have_posts()) : the_post(); ?>
			<?php the_post_thumbnail( 'img-banner' ); ?>
		<?php endwhile;?>
	</div>
</div>