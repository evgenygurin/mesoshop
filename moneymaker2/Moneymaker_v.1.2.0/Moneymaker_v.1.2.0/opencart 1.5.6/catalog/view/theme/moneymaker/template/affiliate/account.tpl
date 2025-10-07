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
          <h1><?php echo $heading_title; ?></h1>
          <div class="row">
            <div class="col-sm-12">
              <h3><?php echo $text_my_account; ?></h3>
              <ul class="list-unstyled">
                <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
              </ul>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-12">
              <h3><?php echo $text_my_tracking; ?></h3>
              <ul class="list-unstyled">
                <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
              </ul>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-12">
              <h3><?php echo $text_my_transactions; ?></h3>
              <ul class="list-unstyled">
                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>