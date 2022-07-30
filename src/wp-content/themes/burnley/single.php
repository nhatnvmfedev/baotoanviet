<?php get_header(); ?>
	<?php get_template_part('template/md_breadcrumb'); ?> <!-- Breadcrumb -->
	<div class="con_news_single">
		<div class="box_news_single">
			<div class="box_left">
				<div class="box_excerpt">
					<p class="txt"><?php echo get_the_excerpt(); ?></p>
				</div>
				<div class="box_content">
					<?php echo get_the_content(); ?>
				</div>
			</div>
		</div>
	</div><!-- /.con_product_single -->
	<!-- RELATED ARTICLES -->
	<?php get_template_part('template/md_related_news'); ?>
<?php get_footer(); ?>