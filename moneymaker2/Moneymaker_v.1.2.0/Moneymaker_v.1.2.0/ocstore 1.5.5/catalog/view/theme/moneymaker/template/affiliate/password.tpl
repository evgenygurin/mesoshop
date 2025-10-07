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
              <h3><?php echo $text_password; ?></h3>
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <br />
                  <div class="form-group required">
                    <label for="password" class="col-sm-4 control-label"><?php echo $entry_password; ?></label>
                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="password" name="password" value="<?php echo $password; ?>" />
                      <?php if ($error_password) { ?>
                      <span class="error"><?php echo $error_password; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="confirm" class="col-sm-4 control-label"><?php echo $entry_confirm; ?></label>
                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="confirm" name="confirm" value="<?php echo $confirm; ?>" />
                      <?php if ($error_confirm) { ?>
                      <span class="error"><?php echo $error_confirm; ?></span>
                      <?php } ?>
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
<?php echo $footer; ?>