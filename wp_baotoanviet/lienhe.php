<?php
/*
 Template Name: lienhe
 */
?>

<?php get_header() ?>
	<?php get_template_part('template/md_breadcrumb'); ?> <!-- Breadcrumb -->
	<div class="con_content con_contact">
		<div class="box_content">
			<div class="box_left" style="width: 100%;">
				<div class="box_ggmap">
					<?php
						$post_81 = get_post(81);
						$content = $post_81->post_content;
						echo $content;
					?>
				</div>
				<div class="box">
					<?php
						$post_43 = get_post(43);
						$content = $post_43->post_content;
						echo $content;
					?>
				</div>
				<div class="box_form">
					<?php if(have_posts()) : ?>
					    <?php while(have_posts())  : the_post(); ?>
					      <?php the_content(); ?>
					    <?php endwhile; ?>
					      <?php else : ?>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
<?php get_footer() ?>