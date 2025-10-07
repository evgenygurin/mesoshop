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
            <div class="col-sm-6">
              <h3><?php echo $text_return_id; ?> <?php echo $return_id; ?></h3>
              <p>
              <ul class="list-unstyled">
                <li><b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></li>
                <li><b><?php echo $column_reason; ?></b> <?php echo $reason; ?></li>
                <li><b><?php echo $column_opened; ?></b> <?php echo $opened; ?></li>
                <li><b><?php echo $column_action; ?></b> <?php echo $action; ?></li>
              </ul>
              </p>
            </div>
            <div class="col-sm-6">
              <h3><?php echo $text_order_id; ?> <?php echo $order_id; ?></h3>
              <p>
              <ul class="list-unstyled">
                <li><b><?php echo $text_date_ordered; ?></b> <?php echo $date_ordered; ?></li>
              </ul>
              </p>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <h3><?php echo $text_return_detail; ?></h3>
              <div class="row">
                <div class="table-responsive col-xs-12">
                  <table class="table table-hover">
                    <thead>
                    <tr>
                      <td class="text-left"><?php echo $column_product; ?></td>
                      <td class="text-left"><?php echo $column_model; ?></td>
                      <td class="text-right"><?php echo $column_quantity; ?></td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td class="text-left"><?php echo $product; ?></td>
                      <td class="text-left"><?php echo $model; ?></td>
                      <td class="text-right"><?php echo $quantity; ?></td>
                    </tr>
                    </tbody>
                  </table>
                </div>
              </div>
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
            <div class="col-xs-12">
              <h3><?php echo $text_history; ?></h3>
              <div class="row">
                <div class="table-responsive col-xs-12">
                  <table class="table table-hover">
                    <thead>
                    <tr>
                      <td class="text-left"><?php echo $column_date_added; ?></td>
                      <td class="text-left"><?php echo $column_status; ?></td>
                      <td class="text-left"><?php echo $column_comment; ?></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($histories as $history) { ?>
                    <tr>
                      <td class="text-left"><?php echo $history['date_added']; ?></td>
                      <td class="text-left"><?php echo $history['status']; ?></td>
                      <td class="text-left"><?php echo $history['comment']; ?></td>
                    </tr>
                    <?php } ?>
                    </tbody>
                  </table>
                </div>
              </div>
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