<?php get_header(); ?>
	<?php get_template_part('template/md_breadcrumb'); ?> <!-- Breadcrumb -->
	<div class="con_product_single">
		<div class="box_product_single">
			<div class="box_left">
				<!--box_info_main-->
				<?php $cart_url_images = wp_get_attachment_url( get_post_thumbnail_id() ); ?>
				<div class="box_info_main">
					<h2 class="st_single view_sp"><?php the_title(); ?></h2>
					<div class="box_left">
						<div class="box_img"><p class="img"><a class="fancybox" href="<?php echo $cart_url_images; ?>"><?php the_post_thumbnail(); ?></a></p></div>
						<p class="txt_excerpt"><?php echo get_the_excerpt(); ?></p>
					</div>
					<div class="box_info">
						<h2 class="st_single view_pc-tab"><?php the_title(); ?></h2>
						<?php $val_price = (get_post_meta($post->ID, '_price',true) != NULL) ? number_format(get_post_meta($post->ID, '_price',true)).' đ' : ' <span style="color: #e73435;">Vui lòng liên hệ</span> '; ?>

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
						<p class="txt_price">Giá: <span class="price_sale"><?php echo $val_price_sale; ?></span> <?php echo $val_price_html; ?> </p>
						<div class="box_support">
							<?php
								$post_218 = get_post(218);
								$content_218 =wpautop( $post_218->post_content );
								echo $content_218;
							?>
						</div>
						<p class="btn_buy over"><a href="#from_buy" rel="modal:open"><span class="text_buy">ĐẶT MUA NGAY</span><br><span class="text_buy_note">( Tư vấn miễn phí - Không mua không sao )</span></a></p>
						<div class="box_note_contact">
							<b class="txt_note_contact">CÁC CỬA HÀNG CỦA CHÚNG TÔI</b>
							<div class="box">
								<?php
									$post_204 = get_post(204);
									$content_204 =wpautop( $post_204->post_content );
								?>
								<p class="txt"><?php echo $content_204; ?></p>
								<?php
									function smart_category_top_parent_id ($catid) {
									    while ($catid) {
									        $cat = get_category($catid);
									        $catid = $cat->category_parent;
									        $catParent = $cat->cat_ID;
									    }
									    return $catParent;
									}
									$category = get_the_category($post->ID);
									$catid = $category[0]->cat_ID;
									$top_level_cat = smart_category_top_parent_id ($catid);
								?>
								<?php $var_phone = '<i class="ion-android-call" style="color: #e73435;"></i> '.get_field( 'phone_member', 'category_'.$top_level_cat ); ?>
								<?php echo '<p style="color: #e73435; font-weight: 600; font-size: 120%">'.$var_phone.'</p>'; ?>
							</div>
						</div>
					</div>
				</div>
				<!--/box_content_product-->
				<p class="txt_specifi"><i class="fa fa-cogs" aria-hidden="true"></i> Thông số kĩ thuật</p>
				<div class="box_content_product">
					<?php the_content(); ?>
				</div>
				<p class="btn_buy btn_buy-bottom over" style="width: 100%; margin-top: 3em;margin-bottom: 1em;"><a href="#from_buy" rel="modal:open"><span class="text_buy">ĐẶT MUA NGAY</span><br><span class="text_buy_note">( Tư vấn miễn phí - Không mua không sao )</span></a></p>
				<div class="box_note_contact">
					<b class="txt_note_contact">CÁC CỬA HÀNG CỦA CHÚNG TÔI</b>
					<div class="box">
						<p class="txt"><?php echo $content_204; ?></p>
						<?php echo '<p style="color: #e73435; font-weight: 600; font-size: 120%">'.$var_phone.'</p>'; ?>
					</div>
				</div>
			</div>
			<?php wp_reset_query(); ?>
			<div class="box_right">
				<?php include "template/md_sidebar.php"; ?>
			</div>
		</div>
	</div><!-- /.con_product_single -->
	<!-- RELATED ARTICLES -->
	<?php get_template_part('template/md_related_product'); ?>

	<!-- FORM POPUP BY PRODUCT -->
	<?php include 'actions/act_form_send_buy.php'; ?>
	<script type="text/javascript">
		$(function(){
			$(".fancybox").fancybox(); // fancybox
		});
	</script>
<?php get_footer(); ?>