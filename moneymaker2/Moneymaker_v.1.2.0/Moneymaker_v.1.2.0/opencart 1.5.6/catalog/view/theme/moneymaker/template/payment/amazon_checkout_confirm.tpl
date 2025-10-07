<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="row">
    <div class="col-sm-12">
      <?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-12 pos-9">

          <h2><?php echo $heading_confirm; ?></h2>
          <form class="payment-form" method="POST" action="<?php echo $process_order ?>">
            <div style="float: left" id="amazon-address-widget"></div>
            <div style="float: left; margin-left: 15px" id="amazon-wallet-widget"></div>
            <div style="clear: both;"></div>
          </form>

          <div class="checkout-product" style="margin-top: 15px">
            <table>
              <thead>
                <tr>
                  <td class="name"><?php echo $column_name; ?></td>
                  <td class="model"><?php echo $column_model; ?></td>
                  <td class="quantity"><?php echo $column_quantity; ?></td>
                  <td class="price"><?php echo $column_price; ?></td>
                  <td class="total"><?php echo $column_total; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($products as $product) { ?>
                  <tr>
                    <td class="name"><?php echo $product['name']; ?>
                      <?php foreach ($product['option'] as $option) { ?>
                        <br />
                        &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                      <?php } ?></td>
                    <td class="model"><?php echo $product['model']; ?></td>
                    <td class="quantity"><?php echo $product['quantity']; ?></td>
                    <td class="price"><?php echo $product['price']; ?></td>
                    <td class="total"><?php echo $product['total']; ?></td>
                  </tr>
                <?php } ?>
              </tbody>

              <tfoot>
                <?php foreach ($totals as $total) { ?>
                  <tr>
                    <td colspan="4" class="price"><b><?php echo $total['title']; ?>:</b></td>
                    <td class="total"><?php echo $total['text']; ?></td>
                  </tr>
                <?php } ?>
              </tfoot>
            </table>
          </div>

          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center">
              <p class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-lg btn-default"><i class="fa fa-chevron-circle-left"></i> <?php echo $text_back; ?></a></p>
              <p class="pull-right"><a id="confirm-button" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $text_confirm; ?></a></p>
            </div>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
  $(document).ready(function(){
    new CBA.Widgets.AddressWidget({
      merchantId: '<?php echo $merchant_id ?>',
      displayMode: 'read'
    }).render('amazon-address-widget');

    new CBA.Widgets.WalletWidget({
      merchantId: '<?php echo $merchant_id ?>',
      displayMode: 'read'
    }).render('amazon-wallet-widget');

    $('#confirm-button').click(function(){
      if ($(this).attr('disabled') != 'disabled') {
        $('.payment-form').submit();
      }

      $(this).attr('disabled', 'disabled');
    });
  });
//--></script>
<?php echo $footer; ?>