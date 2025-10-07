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
          <?php if ($error_warning) { ?>
          <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
          <?php } ?>
          <h1><?php echo $heading_title; ?></h1>
          <div class="row">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal col-sm-12" role="form">
              <h3><?php echo $text_your_details; ?></h3>
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <br />
                  <div class="form-group required">
                    <label for="firstname" class="col-sm-4 control-label"><?php echo $entry_firstname; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="firstname" name="firstname" value="<?php echo $firstname; ?>" />
                      <?php if ($error_firstname) { ?>
                      <span class="error"><?php echo $error_firstname; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="lastname" class="col-sm-4 control-label"><?php echo $entry_lastname; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="lastname" name="lastname" value="<?php echo $lastname; ?>" />
                      <?php if ($error_lastname) { ?>
                      <span class="error"><?php echo $error_lastname; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="email" class="col-sm-4 control-label"><?php echo $entry_email; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="email" name="email" value="<?php echo $email; ?>" />
                      <?php if ($error_email) { ?>
                      <span class="error"><?php echo $error_email; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="telephone" class="col-sm-4 control-label"><?php echo $entry_telephone; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="telephone" name="telephone" value="<?php echo $telephone; ?>" />
                      <?php if ($error_telephone) { ?>
                      <span class="error"><?php echo $error_telephone; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="fax" class="col-sm-4 control-label"><?php echo $entry_fax; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="fax" name="fax" value="<?php echo $fax; ?>" />
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