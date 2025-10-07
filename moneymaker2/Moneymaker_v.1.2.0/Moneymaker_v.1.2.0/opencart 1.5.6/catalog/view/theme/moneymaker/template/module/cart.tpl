<div id="cart" class="btn-group pull-right">
  <button type="button" class="btn btn-primary pull-right <?php if (!$this->config->get('mmr_header_small_cart_btn_enabled')) { ?>btn-lg <?php } ?>btn-transparent dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
    <i class="fa fa-shopping-cart"></i> <span id="cart-total"><?php if (($this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0)<1)&&$this->config->get('mmr_cartgift_enabled')) { ?><?php $mmr_cartgift_caption = $this->config->get('mmr_cartgift_caption'); ?><?php echo html_entity_decode($mmr_cartgift_caption[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?><?php } else { ?><?php echo $text_items; ?><?php } ?></span> <span class="caret"></span>
  </button>
  <ul class="dropdown-menu keep_open">
    <?php if ($products || $vouchers) { ?>
      <li>
        <table class="table table-minicart-products">
          <?php foreach ($products as $product) { ?>
          <tr>
            <td class="image text-center"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
              <?php } ?></td>
            <td class="name text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
              <?php if ($product['option']) { ?>
              <br />
              <?php foreach ($product['option'] as $option) { ?>
              &nbsp;<small>- <?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>
              <?php if ($product['recurring']): ?>
              &nbsp;<small>- <?php echo $text_payment_profile; ?> <?php echo $product['profile']; ?></small><br />
              <?php endif; ?>
              <?php } ?></td>
            <td class="quantity text-left">x&nbsp;<?php echo $product['quantity']; ?></td>
            <td class="total"><?php echo $product['total']; ?></td>
            <td class="remove"><a href="javascript:void(0);" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" title="<?php echo $button_remove; ?>" class="text-danger"><i class="fa fa-lg fa-times-circle"></i></a></td>
          </tr>
          <?php } ?>
          <?php foreach ($vouchers as $voucher) { ?>
          <tr>
            <td class="image"></td>
            <td class="name text-left"><?php echo $voucher['description']; ?></td>
            <td class="quantity text-left">x&nbsp;1</td>
            <td class="total"><?php echo $voucher['amount']; ?></td>
            <td class="remove"><a href="javascript:void(0);" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" title="<?php echo $button_remove; ?>" class="text-danger"><i class="fa fa-lg fa-times-circle"></i></a></td>
          </tr>
          <?php } ?>
        </table>
        <table class="table table-minicart-products">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="totals-left-border"></td>
            <td class="text-right"><span class="text-neutral"><?php echo $total['title']; ?>:</span> &nbsp;&nbsp;&nbsp;<?php echo $total['text']; ?></td>
            <td class="totals-right-border"></td>
          </tr>
          <?php } ?>
        </table>
        <p class="text-center"><a class="btn btn-lg btn-primary" href="<?php echo $checkout; ?>"><i class="fa fa-share"></i> <?php echo $text_checkout; ?></a></p>
        <p class="text-center"><a class="btn btn-default" href="<?php echo $cart; ?>"><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></a></p>
      </li>
    <?php } else { ?>
      <li>
        <?php if ($this->config->get('mmr_cartgift_enabled')) { ?>
        <p class="text-left"> <?php if ($this->customer->isLogged()) { ?><?php $mmr_cartgift_text_logged = $this->config->get('mmr_cartgift_text_logged'); ?><?php echo html_entity_decode($mmr_cartgift_text_logged[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?><?php } else { ?><?php $mmr_cartgift_text = $this->config->get('mmr_cartgift_text'); ?><?php echo html_entity_decode($mmr_cartgift_text[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?><?php } ?></p>
        <?php } else { ?>
          <p class="text-center"><?php echo $text_empty; ?></p>
        <?php } ?>
      </li>
    <?php } ?>
  </ul>
</div>