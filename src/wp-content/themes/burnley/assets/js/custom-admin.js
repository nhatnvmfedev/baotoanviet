function getValuePrice() {
	$('input#price2').on('keypress keyup keydown' ,function(event) {
		let val = $(this).val();
		$('input#price').val(parseInt(val.replace(/[^a-z0-9\s]/gi, '').replace(/[_\s]/g, '-')));
	});
}
$(document).ready(function() {
	$('input#price2').simpleMoneyFormat();
	$('input#area').simpleMoneyFormat();
	getValuePrice();
})