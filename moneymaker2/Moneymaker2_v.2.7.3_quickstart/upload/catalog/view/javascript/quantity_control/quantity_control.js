$(document).ready(function() {	
	all_inputs();
	if ($('.quantity_cart').length != 0) {$('.quantity_div').remove();}
});

function quantity_control(product_id ,minimum, maximum, flag) {
	var p_q = $('.p_q_' + product_id);
	var p_q_val = Number((p_q).val());
	var minimum = Number(minimum);
	var maximum = Number(maximum);

	if($('input[name^=qcs]').val() == 1) {
		var maximum = 9999;
	} else {
		var maximum = Number(maximum);
	}

	if (flag == '+') {
		if ((p_q_val + minimum) <= maximum) {
			p_q.val(Math.round(((p_q_val + minimum)*10))/10);
			calculate_price(product_id, p_q.val())
		} else {
			quantity_alert(product_id, maximum);
		}
	}

	if (flag == '-') {
		if (Number(p_q_val > minimum)) {
			p_q.val(Math.round(((p_q_val - minimum)*10))/10);
			calculate_price(product_id, p_q.val())
		}
	}
}
	
function quantity_alert(product_id, maximum) {
	if(maximum <= 0) {
		$('.s_w_'+product_id).text('На нашем складе данный товар закончился.').fadeIn().delay('2000').fadeOut(); 
	} else {
		$('.s_w_'+product_id).text('На нашем складе данного товара осталось всего ' + maximum + ' шт!').fadeIn().delay('2000').fadeOut();
	}
}

function calculate_price(product_id, minimum) {

		var main_price = Number($('.price_'+product_id).attr('data-price'));
		var special = Number($('.special_'+product_id).attr('data-price'));
		var new_price = main_price * minimum;
		var new_special = special * minimum;
		$('.price_'+product_id).html(price_format(new_price));
		$('.special_'+product_id).html(price_format(new_special));

}