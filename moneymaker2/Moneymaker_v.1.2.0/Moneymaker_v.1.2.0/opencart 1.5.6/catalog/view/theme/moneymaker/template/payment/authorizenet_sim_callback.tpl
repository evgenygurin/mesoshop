<h1><?php echo $x_response_reason_text; ?></h1>
<?php if($x_response_code == '1') { ?>
<p>Your payment was processed successfully. Here is your receipt:</p>
<pre>
<?php echo $exact_ctr; ?></pre>
<?php if(!empty($exact_issname)) { ?>
<p>Issuer: <?php echo $exact_issname; ?><br/>
  Confirmation Number: <?php echo $exact_issconf; ?> </p>
<?php } ?>
<div class="row pagination_buttons">
  <div class="col-xs-12 text-center">
    <p><a href="<?php echo $confirm; ?>" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_confirm; ?></a></p>
  </div>
</div>
<?php } elseif($_REQUEST['x_response_code'] == '2') { ?>
<p>Your payment failed.  Here is your receipt.</p>
<pre>
<?php echo $exact_ctr; ?></pre>
<div class="row pagination_buttons">
  <div class="col-xs-12 text-center">
    <p><a href="<?php echo $back; ?>" class="btn btn-lg btn-default"><i class="fa fa-chevron-circle-left"></i> <?php echo $button_back; ?></a></p>
  </div>
</div>
<?php } else { ?>
<p>An error occurred while processing your payment. Please try again later.</p>
<div class="row pagination_buttons">
  <div class="col-xs-12 text-center">
    <p><a href="<?php echo $back; ?>" class="btn btn-lg btn-default"><i class="fa fa-chevron-circle-left"></i> <?php echo $button_back; ?></a></p>
  </div>
</div>
<?php } ?>
