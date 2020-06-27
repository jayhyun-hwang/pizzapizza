/**
 * order 페이지
 */

$(function() {
	var cl="";
	var st=false;
	$('input').change(function() {
		cl=$(this).val();
		st = this.checked;
		if (st) {
			$('select[name='+cl+']').css('visibility', 'visible');
		} else {
			$('select[name='+cl+']').css('visibility', 'hidden');
		}
	});
});