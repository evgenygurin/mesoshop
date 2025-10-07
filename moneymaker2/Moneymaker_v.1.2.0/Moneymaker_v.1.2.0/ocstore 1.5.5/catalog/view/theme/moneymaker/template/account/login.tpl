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
            <div class="col-md-10 col-sm-12">
              <h3><?php echo $text_returning_customer; ?></h3>
              <div class="row">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="col-sm-12 form-horizontal" role="form">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label for="email" class="col-sm-4 control-label"><?php echo $entry_email; ?></label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="email" name="email" value="<?php echo $email; ?>" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="password" class="col-sm-4 control-label"><?php echo $entry_password; ?></label>
                        <div class="col-sm-8">
                        <input type="password" class="form-control" id="password" name="password" value="<?php echo $password; ?>" />
                        <a href="<?php echo $forgotten; ?>"><small><?php echo $text_forgotten; ?></small></a>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-12 text-center">
                          <button type="submit" class="btn btn-lg btn-primary"><i class="fa fa-sign-in"></i> <?php echo $button_login; ?></button>
                          <?php if ($redirect) { ?>
                          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                          <?php } ?>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
              <h3><?php echo $text_new_customer; ?></h3>
              <div class="row">
                <div class="col-xs-12">
                  <p><?php echo $text_register_account; ?></p>
                </div>
              </div>
              <div class="row pagination_buttons">
                <div class="col-xs-12 text-center">
                  <a href="<?php echo $register; ?>" class="btn btn-lg btn-default"><i class="fa fa-user"></i> <?php echo $text_register; ?></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>