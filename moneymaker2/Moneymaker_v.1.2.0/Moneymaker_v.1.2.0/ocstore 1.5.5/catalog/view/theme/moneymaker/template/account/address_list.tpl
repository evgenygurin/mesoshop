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
          <?php if ($error_warning) { ?>
          <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
          <?php } ?>
          <h1><?php echo $heading_title; ?></h1>
          <div class="row">
            <div class="table-responsive col-xs-12">
              <br />
              <table class="table table-hover">
                <thead>
                <tr>
                  <td><?php echo $text_address_book; ?></td>
                  <td></td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($addresses as $result) { ?>
                <tr>
                  <td><?php echo $result['address']; ?></td>
                  <td class="text-right"><a href="<?php echo $result['update']; ?>" class="text-nowrap"><i class="fa fa-fw fa-edit"></i><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="text-nowrap text-danger"><i class="fa fa-fw fa-times"></i><?php echo $button_delete; ?></a></td>
                </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row pagination_buttons">
            <div class="col-xs-12">
              <p class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-lg btn-default"><i class="fa fa-chevron-circle-left"></i> <?php echo $button_back; ?></a></p>
              <p class="pull-right"><a href="<?php echo $insert; ?>" class="btn btn-lg btn-primary" /><i class="fa fa-plus-circle"></i> <?php echo $button_new_address; ?></a></p>
            </div>
          </div>
        </div>
      </div>
    <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>