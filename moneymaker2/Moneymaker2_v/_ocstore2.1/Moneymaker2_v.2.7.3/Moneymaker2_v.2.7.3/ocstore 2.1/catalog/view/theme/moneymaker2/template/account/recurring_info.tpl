<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <ul class="breadcrumb text-center">
        <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
        <?php if($i+1<count($breadcrumbs)) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } else { ?><li class="active"><?php echo $breadcrumb['text']; ?></li><?php } ?>
        <?php } ?>
      </ul>
      <?php echo $content_top; ?>
      <h1 class="h2 text-center content-title"><?php echo $heading_title; ?></h1>
      <div class="row catalog-thumb">
        <div class="col-sm-12 text-center">
            <span class="fa-stack fa-2x img-thumbnail">
              <i class="fa fa-circle fa-stack-2x"></i>
              <i class="fa fa-refresh fa-stack-1x fa-inverse"></i>
            </span>
        </div>
      </div>
      <div class="row catalog-descr">
        <div class="col-sm-12 text-center">
          <div>
            <p><?php echo $text_recurring_detail; ?></p>
          </div>
        </div>
      </div>
      <hr class="catalog-hr">
      <br />
      <table class="table">
        <tbody>
        <tr>
          <th class="text-left" style="width: 50%;">
            <p><b><?php echo $text_recurring_id; ?></b> #<?php echo $recurring['order_recurring_id']; ?></p>
            <p><b><?php echo $text_date_added; ?></b> <?php echo $recurring['date_added']; ?></p>
            <p><b><?php echo $text_status; ?></b> <?php echo $status_types[$recurring['status']]; ?></p>
            <p><b><?php echo $text_payment_method; ?></b> <?php echo $recurring['payment_method']; ?></p>
          </th>
          <th class="left" style="width: 50%; vertical-align: top;">
            <p><b><?php echo $text_product; ?></b><a href="<?php echo $recurring['product_link']; ?>"><?php echo $recurring['product_name']; ?></a></p>
            <p><b><?php echo $text_quantity; ?></b> <?php echo $recurring['product_quantity']; ?></p>
            <p><b><?php echo $text_order; ?></b><a href="<?php echo $recurring['order_link']; ?>">#<?php echo $recurring['order_id']; ?></a></p>
          </th>
        </tr>
        </tbody>
      </table>
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
            <p style="margin:5px;"><?php echo $recurring['recurring_description']; ?></p></td>
          <td class="text-left" style="width: 50%;">
            <p style="margin:5px;"><?php echo $recurring['reference']; ?></p></td>
        </tr>
        </tbody>
      </table>
      <h3 class="text-center"><?php echo $text_transactions; ?></h3>
      <table class="table table-bordered table-hover">
        <thead>
        <tr>
          <td class="text-left"><?php echo $column_date_added; ?></td>
          <td class="text-center"><?php echo $column_type; ?></td>
          <td class="text-right"><?php echo $column_amount; ?></td>
        </tr>
        </thead>
        <tbody>
        <?php if (!empty($recurring['transactions'])) { ?><?php foreach ($recurring['transactions'] as $transaction) { ?>
        <tr>
          <td class="text-left"><?php echo $transaction['date_added']; ?></td>
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
      <?php echo $buttons; ?>
      <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<script type="text/javascript"><!--
  $(document).ready(function() {
    <?php if ($error_warning) { ?>
      $('#popupModal .modal-header .close').removeClass('hidden');
      $('#popupModal .modal-title').text('<?php echo $heading_title; ?>');
      $('#popupModal .modal-body').prepend('<div class="panel panel-danger"><div class="panel-heading text-center"><small><?php echo $error_warning; ?></small></div></div>');
      $('#popupModal').modal();
    <?php } ?>
  });
  //--></script>
<?php echo $footer; ?>