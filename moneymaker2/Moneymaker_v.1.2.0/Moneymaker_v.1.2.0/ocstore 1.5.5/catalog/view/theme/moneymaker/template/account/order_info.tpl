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
            <div class="col-sm-12">
              <div class="row">
                <div class="col-sm-12">
                  <h3><?php echo $text_order_id; ?> <?php echo $order_id; ?></h3>
                  <p>
                    <ul class="list-unstyled">
                      <?php if ($invoice_no) { ?>
                      <li><b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?></li>
                      <?php } ?>
                      <li><b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></li>
                      <?php if ($payment_method) { ?>
                      <li><b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?></li>
                      <?php } ?>
                      <?php if ($shipping_method) { ?>
                      <li><b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?></li>
                      <?php } ?>
                    </ul>
                  </p>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-6">
                  <h3><?php echo $text_payment_address; ?></h3>
                  <p>
                    <?php echo $payment_address; ?>
                  </p>
                </div>
                <?php if ($shipping_address) { ?>
                <div class="col-sm-6">
                  <h3><?php echo $text_shipping_address; ?></h3>
                  <p>
                    <?php echo $shipping_address; ?>
                  </p>
                </div>
                <?php } ?>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="table-responsive col-xs-12">
              <h3><?php echo $text_order_detail; ?></h3>
              <table class="table table-hover">
                <thead>
                <tr>
                  <td><?php echo $column_name; ?></td>
                  <td><?php echo $column_model; ?></td>
                  <td class="text-right"><?php echo $column_quantity; ?></td>
                  <td class="text-right"><?php echo $column_price; ?></td>
                  <td class="text-right"><?php echo $column_total; ?></td>
                  <?php if ($products) { ?>
                  <td></td>
                  <?php } ?>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($products as $product) { ?>
                <tr>
                  <td><?php echo $product['name']; ?>
                    <?php foreach ($product['option'] as $option) { ?>
                    <br />
                    &nbsp;<small>- <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                    <?php } ?>
                  </td>
                  <td><?php echo $product['model']; ?></td>
                  <td class="text-right"><?php echo $product['quantity']; ?></td>
                  <td class="text-right"><?php echo $product['price']; ?></td>
                  <td class="text-right text-nowrap"><?php echo $product['total']; ?></td>
                  <td class="text-right"><a href="<?php echo $product['return']; ?>" title="<?php echo $button_return; ?>" class="text-danger text-nowrap"><i class="fa fa-fw fa-undo"></i><?php echo $button_return; ?></a></td>
                </tr>
                <?php } ?>
                <?php foreach ($vouchers as $voucher) { ?>
                <tr>
                  <td><?php echo $voucher['description']; ?></td>
                  <td></td>
                  <td class="text-right">1</td>
                  <td class="text-right"><?php echo $voucher['amount']; ?></td>
                  <td class="text-right"><?php echo $voucher['amount']; ?></td>
                  <?php if ($products) { ?>
                  <td></td>
                  <?php } ?>
                </tr>
                <?php } ?>
                <tr><td></td></tr>
                <?php foreach ($totals as $total) { ?>
                <tr>
                  <td></td>
                  <td colspan="3" class="text-right text-neutral"><?php echo $total['title']; ?></td>
                  <td class="text-right text-nowrap"><?php echo $total['text']; ?></td>
                  <?php if ($products) { ?>
                  <td></td>
                  <?php } ?>
                </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
          <?php if ($comment) { ?>
          <div class="row">
            <div class="col-xs-12">
              <h3><?php echo $text_comment; ?></h3>
              <p>
                <?php echo $comment; ?>
              </p>
            </div>
          </div>
          <?php } ?>
          <?php if ($histories) { ?>
          <div class="row">
            <div class="table-responsive col-xs-12">
              <h3><?php echo $text_history; ?></h3>
              <table class="table table-hover">
                <thead>
                <tr>
                  <td><?php echo $column_date_added; ?></td>
                  <td><?php echo $column_status; ?></td>
                  <td><?php echo $column_comment; ?></td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($histories as $history) { ?>
                <tr>
                  <td><?php echo $history['date_added']; ?></td>
                  <td><?php echo $history['status']; ?></td>
                  <td><?php echo $history['comment']; ?></td>
                </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
          <?php } ?>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center">
              <p><a href="<?php echo $continue; ?>" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></a></p>
            </div>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>