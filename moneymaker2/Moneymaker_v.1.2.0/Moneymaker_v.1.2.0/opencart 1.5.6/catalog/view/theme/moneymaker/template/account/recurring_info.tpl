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
          <?php if ($success) { ?>
          <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
          <?php } ?>
          <?php if ($error) { ?>
          <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
          <?php } ?>
          <h1><?php echo $heading_title; ?></h1>
          <div class="row">
            <div class="table-responsive col-xs-12">
              <table class="table">
                <thead>
                <tr>
                  <td class="text-left" colspan="2"><?php echo $text_recurring_detail; ?></td>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td class="text-left" style="width: 50%;">
                    <p><b><?php echo $text_recurring_id; ?></b> #<?php echo $profile['order_recurring_id']; ?></p>
                    <p><b><?php echo $text_date_added; ?></b> <?php echo $profile['created']; ?></p>
                    <p><b><?php echo $text_status; ?></b> <?php echo $status_types[$profile['status']]; ?></p>
                    <p><b><?php echo $text_payment_method; ?></b> <?php echo $profile['payment_method']; ?></p>
                  </td>
                  <td class="left" style="width: 50%; vertical-align: top;">
                    <p><b><?php echo $text_product; ?></b><a href="<?php echo $profile['product_link']; ?>"><?php echo $profile['product_name']; ?></a></p>
                    <p><b><?php echo $text_quantity; ?></b> <?php echo $profile['product_quantity']; ?></p>
                    <p><b><?php echo $text_order; ?></b><a href="<?php echo $profile['order_link']; ?>">#<?php echo $profile['order_id']; ?></a></p>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row">
            <div class="table-responsive col-xs-12">
              <table class="table">
                <thead>
                <tr>
                  <td class="text-left"><?php echo $text_recurring_description; ?></td>
                  <td class="text-left"><?php echo $text_ref; ?></td>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td class="text-left" style="width: 50%;">
                    <p style="margin:5px;"><?php echo $profile['profile_description']; ?></p></td>
                  <td class="text-left" style="width: 50%;">
                    <p style="margin:5px;"><?php echo $profile['profile_reference']; ?></p></td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
          <h2><?php echo $text_transactions; ?></h2>
          <div class="row">
            <div class="table-responsive col-xs-12">
              <table class="table">
                <thead>
                <tr>
                  <td class="text-left"><?php echo $column_created; ?></td>
                  <td class="text-center"><?php echo $column_type; ?></td>
                  <td class="text-right"><?php echo $column_amount; ?></td>
                </tr>
                </thead>
                <tbody>
                <?php if (!empty($profile['transactions'])) { ?><?php foreach ($profile['transactions'] as $transaction) { ?>
                <tr>
                  <td class="text-left"><?php echo $transaction['created']; ?></td>
                  <td class="text-center"><?php echo $transaction_types[$transaction['type']]; ?></td>
                  <td class="text-right"><?php echo $transaction['amount']; ?></td>
                </tr>
                <?php } ?><?php }else{ ?>
                <tr>
                  <td colspan="3" class="text-center"><?php echo $text_empty_transactions; ?></td>
                </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center">
              <?php if($cancel_link){ ?>
              <p class="pull-left"><a href="<?php echo $cancel_link; ?>" onclick="return confirmCancel();" class="btn btn-lg btn-default"><i class="fa fa-times"></i> <?php echo $button_cancel_profile; ?></a></p>
              <p class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></a></p>
              <?php } else { ?>
              <p><a href="<?php echo $continue; ?>" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></a></p>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>
<script type="text/javascript"><!--
    function confirmCancel(){
        var confirmed = confirm("<?php echo $text_confirm_cancel; ?>");
        return confirmed;
    }
//--></script>