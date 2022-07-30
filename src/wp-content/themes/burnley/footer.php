
	<?php include 'includes/inc_menu_bottom.php'; ?>
	<p class="img_gotop"><a class="over" href="javascript:void(0);"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic_gotop.png" alt="Go top"></a></p>
	<footer id="footer">
		<!--con_footer-->
		<div class="con_footer">
			<div class="box_footer">
				<div class="box_left">
					<?php
						$post_43 = get_post(43);
						$content = $post_43->post_content;
						echo $content;
					?>
					<div class="box_l_social">
						<a href="#"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic-fb.png" alt="facebook"></a>
						<a href="#"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic-instagram.png" alt="instagram"></a>
						<a href="#"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic-youtube.png" alt="yotube"></a>
						<a href="#"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic-twitter.png" alt="twitter"></a>
						<a href="#"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic-google-plus.png" alt="google-plus"></a>
					</div>
				</div>
				<div class="box_right">
					<div class="box_ggmap">
						<?php
							$post_81 = get_post(81);
							$content = $post_81->post_content;
							echo $content;
						?>
					</div>
				</div>
			</div>
		</div>
		<!--con_copyright-->
		<div class="con_copyright">
			<p>Copyright © All rights reserved | developed <i class="ion-ios-heart-outline" aria-hidden="true"></i> by <a href="https://hopnhat.com.vn" target="_blank">Hợp Nhất Group</a></p>
		</div>
	</footer>
</body>
<!-- SEND BUY -->
<script type="text/javascript">
	$('.form_send_buy').submit(function(e){
	    e.preventDefault();
	    var cart_title = $("input[name=cart_title]").val();
	    var cart_price = $("input[name=cart_price]").val();
	    var cart_url_images = $("input[name=cart_url_images]").val();
	    var cart_name = $("input[name=cart_name]").val();
	    var cart_phone = $("input[name=cart_phone]").val();
	    var cart_mail = $("input[name=cart_mail]").val();
	    var cart_address = $("input[name=cart_address]").val();
	    var cart_content = $("textarea[name=cart_content]").val();
	    $.ajax({
	        type : "post",
	        dataType : "html",
	        url : mn.ajax_url,
	        data : {
	            action: "ajax_form_info_finish",
	            cart_title : cart_title,
	            cart_price : cart_price,
	            cart_url_images : cart_url_images,
	            cart_name : cart_name,
	            cart_phone : cart_phone,
	            cart_mail : cart_mail,
	            cart_address : cart_address,
	            cart_content : cart_content,
	        },
	        beforeSend: function(){
	            $('.box_img_load_ajax').show();
	        },
	        success: function(response) {
	        	$('.jquery-modal, .box_img_load_ajax').hide();
	        	$('body').css('overflow','auto');
	        	$('.con_popup_success').fadeIn();
	        }
	    });
	});
</script>
<?php wp_footer(); ?>

