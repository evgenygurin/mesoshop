<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="row">
    <div class="col-sm-12">
      <div class="row">
        <div class="col-sm-12 pos-12">
          <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
            <?php if($i+1<count($breadcrumbs)) { ?><li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } else { ?><li class="active"><?php echo $breadcrumb['text']; ?></li><?php } ?>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-12 pos-9">
          <h1><?php echo $heading_title; ?></h1>
          <div class="row">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal col-sm-12" role="form">
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <div class="form-group">
                    <div class="col-sm-12">
                      <h3><?php echo $text_your_payment; ?></h3>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="tax" class="col-sm-4 control-label"><?php echo $entry_tax; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="tax" name="tax" value="<?php echo $tax; ?>" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_payment; ?></label>
                    <div class="col-sm-8">
                      <label>
                        <input type="radio" name="payment" value="cheque" <?php if ($payment == 'cheque') { ?>checked="checked"<?php } ?> />
                        <?php echo $text_cheque; ?>
                      </label><br />
                      <label>
                        <input type="radio" name="payment" value="paypal" <?php if ($payment == 'paypal') { ?>checked="checked"<?php } ?> />
                        <?php echo $text_paypal; ?>
                      </label><br />
                      <label>
                        <input type="radio" name="payment" value="bank" <?php if ($payment == 'bank') { ?>checked="checked"<?php } ?> />
                        <?php echo $text_bank; ?>
                      </label>
                    </div>
                  </div>
                  <div class="form-group payment" id="payment-cheque">
                    <label for="cheque" class="col-sm-4 control-label"><?php echo $entry_cheque; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="cheque" name="cheque" value="<?php echo $cheque; ?>" />
                    </div>
                  </div>
                  <div class="form-group payment" id="payment-paypal">
                    <label for="paypal" class="col-sm-4 control-label"><?php echo $entry_paypal; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="paypal" name="paypal" value="<?php echo $paypal; ?>" />
                    </div>
                  </div>
                  <div id="payment-bank" class="payment">
                    <div class="form-group">
                      <label for="bank_name" class="col-sm-4 control-label"><?php echo $entry_bank_name; ?></label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" id="bank_name" name="bank_name" value="<?php echo $bank_name; ?>" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="bank_branch_number" class="col-sm-4 control-label"><?php echo $entry_bank_branch_number; ?></label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" id="bank_branch_number" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="bank_swift_code" class="col-sm-4 control-label"><?php echo $entry_bank_swift_code; ?></label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" id="bank_swift_code" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="bank_account_name" class="col-sm-4 control-label"><?php echo $entry_bank_account_name; ?></label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" id="bank_account_name" name="bank_account_name" value="<?php echo $bank_account_name; ?>" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="bank_account_number" class="col-sm-4 control-label"><?php echo $entry_bank_account_number; ?></label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" id="bank_account_number" name="bank_account_number" value="<?php echo $bank_account_number; ?>" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row pagination_buttons">
                <div class="col-xs-12 text-center">
                  <p class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-lg btn-default"><i class="fa fa-chevron-circle-left"></i> <?php echo $button_back; ?></a></p>
                  <p class="pull-right"><button type="submit" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></p>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
  $('input[name=\'payment\']').bind('change', function() {
    $('.payment').hide();

    $('#payment-' + this.value).show();
  });

  $('input[name=\'payment\']:checked').trigger('change');
  //--></script>
<?php echo $footer; ?> 