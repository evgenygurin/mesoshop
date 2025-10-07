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
          <?php if ($orders) { ?>
          <div class="row">
            <div class="table-responsive col-xs-12">
              <br />
              <table class="table table-hover">
                <thead>
                <tr>
                  <td class="text-right"><?php echo $text_order_id; ?></td>
                  <td><?php echo $text_date_added; ?></td>
                  <td><?php echo $text_status; ?></td>
                  <td><?php echo $text_customer; ?></td>
                  <td class="text-right"><?php echo $text_products; ?></td>
                  <td class="text-right"><?php echo $text_total; ?></td>
                  <td></td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($orders as $order) { ?>
                <tr>
                  <td class="text-right"><?php echo $order['order_id']; ?></td>
                  <td><?php echo $order['date_added']; ?></td>
                  <td><?php echo $order['status']; ?></td>
                  <td><?php echo $order['name']; ?></td>
                  <td class="text-right"><?php echo $order['products']; ?></td>
                  <td class="text-right text-nowrap"><?php echo $order['total']; ?></td>
                  <td class="text-right"><a class="text-nowrap" href="<?php echo $order['href']; ?>"><i class="fa fa-fw fa-file-text"></i><?php echo $button_view; ?></a> &nbsp; <a class="text-nowrap" href="<?php echo $order['reorder']; ?>"><i class="fa fa-fw fa-refresh"></i><?php echo $button_reorder; ?></a></td>
                </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center"><?php echo $pagination; ?></div>
          </div>
          <?php } else { ?>
          <div class="row">
            <div class="col-xs-12">
              <p>
                <?php echo $text_empty; ?>
              </p>
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