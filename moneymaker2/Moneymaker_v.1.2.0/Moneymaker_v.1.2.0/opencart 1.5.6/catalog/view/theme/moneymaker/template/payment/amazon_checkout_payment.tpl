<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="row">
    <div class="col-sm-12">
      <?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-12 pos-9">
          <h2><?php echo $heading_payment; ?></h2>
          <div style="float: left" id="amazon-wallet-widget"></div>
          <div style="clear: both;"></div>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center">
              <p class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-lg btn-default"><i class="fa fa-chevron-circle-left"></i> <?php echo $text_back; ?></a></p>
              <p class="pull-right"><a id="confirm-button" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $text_continue; ?></a></p>
            </div>
          </div>
          <input type="hidden" name="payment_method" value="" />
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
  $(document).ready(function(){
    $('#continue-button').click(function(){
      $('div.warning').remove();

      if ($("input[name='payment_method']").val() == '1') {
        location = '<?php echo $continue ?>';
      } else {
        $('#amazon-wallet-widget').before('<div class="warning"><?php echo $error_payment_method ?></div>');
      }
    });

    new CBA.Widgets.WalletWidget({
      merchantId: '<?php echo $merchant_id ?>',
      displayMode: 'edit',
      onPaymentSelect: function(widget){
        $("input[name='payment_method']").val('1');
      }

    }).render('amazon-wallet-widget');
  });
//--></script>
<?php echo $footer; ?>