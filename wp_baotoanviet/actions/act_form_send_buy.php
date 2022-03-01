<div class="con_form_buy modal" id="from_buy">
	<div class="box_form_buy">
		<p class="txt_name">ĐẶT MUA SẢN PHẨM</p>
		<h3 class="st_title_buy"><span style="color: #e73435">TÊN SẢN PHẨM:</span> <?php echo get_the_title(); ?></h3>
		<form method="POST" class="form_send_buy" name="guest_registration">
			<input type="hidden" id="cart_title" name="cart_title" value="<?php echo get_the_title(); ?>">
			<input type="hidden" id="cart_price" name="cart_price" value="<?php echo $val_price; ?>">
			<input type="hidden" id="cart_url_images" name="cart_url_images" value="<?php echo $cart_url_images; ?>">
			<input type="text" id="cart_name" name="cart_name" value="" placeholder = "Họ và tên" required>
			<input type="tel" id="cart_phone" name="cart_phone" value="" placeholder = "Số điện thoại" required>
			<input type="email" id="cart_mail" name="cart_mail" value="" placeholder = "Địa chỉ email" required>
			<input type="text" id="cart_address" name="cart_address" value="" placeholder = "Địa chỉ giao hàng">
			<textarea name="cart_content" id="cart_content" cols="30" rows="10" placeholder = "Nội dung"></textarea>
			<input class="btn_submit over" type="submit" name="submit" value="Gửi"/>
		</form>
	</div>
	<!-- IMAGES SEND AJAX -->
	<div class="box_img_load_ajax">
		<p class="img"><img src="<?php echo THEME_URL_URI ?>/assets/images/load-ajax.gif" alt="Send form"></p>
	</div>
</div>

<div class="con_popup_success">
	<div class="box_popup_success">
		<p class="img"><img src="<?php echo THEME_URL_URI ?>/assets/images/ic_success.png" alt="Send form"></p>
		<p class="txt_fsz25">Thông tin đã được gửi</p>
		<p class="btn_ok over"><a href="javascript:void(0);">OK</a></p>
	</div>
</div><!-- /.con_popup_success -->