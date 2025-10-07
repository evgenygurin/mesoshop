<?php if ($error_warning) { ?>
<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<p><?php echo $text_payment_method; ?></p>
<br />
<?php foreach ($payment_methods as $payment_method) { ?>
<div class="radio">
  <label>
    <?php if ($payment_method['code'] == $code || !$code) { ?>
    <?php $code = $payment_method['code']; ?>
    <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
    <?php } else { ?>
    <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
    <?php } ?>
    <?php echo $payment_method['title']; ?>
  </label>
</div>
<?php } ?>
<?php } ?>
<br />
<p><b><?php echo $text_comments; ?></b></p>
<p><textarea name="comment" class="form-control"><?php echo $comment; ?></textarea></p>
<?php if ($text_agree) { ?>
<br />
<div class="checkbox">
  <label>
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" />
    <?php } ?>
    <?php echo $text_agree; ?>
  </label>
</div>
<?php } ?>
<div class="row pagination_buttons">
  <div class="form-group text-center">
    <p><button id="button-payment-method" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></p>
  </div>
</div>
<script type="text/javascript"><!--
  $(document).ready(function() {
    $('.colorbox').colorbox({
      close: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-times'></i></button>",
      onComplete: function() { if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
      width: 800
    });
  });
  //--></script>