<script type="text/javascript">
	$('.form_send_buy').submit(function(e){
	    e.preventDefault();
	    var cart_title = $("input[name=cart_title]").val();
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
	            cart_name : cart_name,
	            cart_phone : cart_phone,
	            cart_mail : cart_mail,
	            cart_address : cart_address,
	            cart_content : cart_content,
	        },
	        beforeSend: function(){
	            console.log('Loading Data');
	        },
	        success: function(response) {
	        }
	    });
	});
</script>