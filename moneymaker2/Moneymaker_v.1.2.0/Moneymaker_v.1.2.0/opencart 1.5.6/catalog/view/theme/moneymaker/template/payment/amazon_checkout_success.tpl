<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="row">
    <div class="col-sm-12">
      <?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-12 pos-9">
          <h2><?php echo $heading_title; ?></h2>
          <p><?php echo $text_payment_success ?></p>
          <div id="AmazonOrderDetail"></div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
  new CBA.Widgets.OrderDetailsWidget ({
    merchantId: "<?php echo $merchant_id ?>",
    orderID: "<?php echo $amazon_order_id ?>"
  }).render ("AmazonOrderDetail");
//--></script>
<?php echo $footer; ?>