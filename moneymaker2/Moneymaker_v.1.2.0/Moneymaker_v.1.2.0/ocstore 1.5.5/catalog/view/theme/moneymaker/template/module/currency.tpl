<?php if (count($currencies) > 1) { ?>
<li class="hidden">
  <form id="currency_form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </form>
</li>
<li class="dropdown">
  <?php foreach ($currencies as $currency) { ?>
  <?php if ($currency['code'] == $currency_code) { ?>
  <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><?php echo $text_currency; ?> <span class="caret"></span></a>
  <?php } ?>
  <?php } ?>
  <ul class="dropdown-menu">
    <?php foreach ($currencies as $currency) { ?>
      <li <?php if ($currency['code'] == $currency_code) { ?>class="active"<?php } ?>><a href="javascript:void(0);" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><span><?php if ($currency['symbol_left']) { echo $currency['symbol_left']; } else { echo $currency['symbol_right']; } ?></span>&nbsp;&nbsp; <?php echo $currency['title']; ?></a></li>
    <?php } ?>
  </ul>
</li>
<?php } ?>