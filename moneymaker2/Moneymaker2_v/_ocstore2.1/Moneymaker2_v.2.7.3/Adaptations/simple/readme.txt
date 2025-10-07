Адаптация для пересчета миникорзины

В разделе джаваскриптов пропишите код:

if ($('#simplecheckout_cart_total').length) {
  var total = $('#simplecheckout_cart_total').text();
  var items = total.split(' - ');
  $('#cart .fa-stack-1x, .navbar-cart-toggle .fa-stack-1x').text(items[0]);
  $('#cart #cart-total').text(items[1]);
}
$('#cart > ul').load('index.php?route=common/cart/info ul li');