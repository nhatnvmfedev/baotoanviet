<?php get_header() ?>

	<?php get_template_part('template/md_breadcrumb'); ?> <!-- Breadcrumb -->
	<div class="con_content con_contact">
		<div class="box_content">
			<div class="box_left">
				<?php if ( have_posts() ) : while ( have_posts() ) : the_post();
							the_content();
						endwhile; else: ?>
					<p>Sorry, no posts matched your criteria.</p>
				<?php endif; ?>
			</div>
			<div class="box_right">
				<?php get_template_part('md_sidebar') ?>
			</div>
		</div>
	</div>

<?php get_footer() ?>