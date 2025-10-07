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
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <br />
                  <p><?php echo $text_description; ?></p>
                  <div class="form-group required">
                    <label for="to_name" class="col-sm-4 control-label"><?php echo $entry_to_name; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="to_name" name="to_name" value="<?php echo $to_name; ?>" />
                      <?php if ($error_to_name) { ?>
                      <span class="error"><?php echo $error_to_name; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="to_email" class="col-sm-4 control-label"><?php echo $entry_to_email; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="to_email" name="to_email" value="<?php echo $to_email; ?>" />
                      <?php if ($error_to_email) { ?>
                      <span class="error"><?php echo $error_to_email; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="from_name" class="col-sm-4 control-label"><?php echo $entry_from_name; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="from_name" name="from_name" value="<?php echo $from_name; ?>" />
                      <?php if ($error_from_name) { ?>
                      <span class="error"><?php echo $error_from_name; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="from_email" class="col-sm-4 control-label"><?php echo $entry_from_email; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="from_email" name="from_email" value="<?php echo $from_email; ?>" />
                      <?php if ($error_from_email) { ?>
                      <span class="error"><?php echo $error_from_email; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label class="col-sm-4 control-label"><?php echo $entry_theme; ?></label>
                    <div class="col-sm-8">
                      <?php foreach ($voucher_themes as $voucher_theme) { ?>
                      <?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
                      <label>
                        <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" />
                        <?php echo $voucher_theme['name']; ?>
                      </label><br />
                      <?php } else { ?>
                      <label>
                        <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" />
                        <?php echo $voucher_theme['name']; ?>
                      </label><br />
                      <?php } ?>
                      <?php } ?>
                      <?php if ($error_theme) { ?>
                      <span class="error"><?php echo $error_theme; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="amount" class="col-sm-4 control-label"><?php echo $entry_amount; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="amount" name="amount" value="<?php echo $amount; ?>" />
                      <?php if ($error_amount) { ?>
                      <span class="error"><?php echo $error_amount; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_message; ?></label>
                    <div class="col-sm-8">
                      <textarea name="message" class="form-control" rows="3"><?php echo $message; ?></textarea>
                    </div>
                  </div>
                  <?php if ($text_agree) { ?>
                  <br /><br />
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                      <div class="checkbox">
                        <label>
                          <?php if ($agree) { ?>
                          <input type="checkbox" name="agree" value="1" checked="checked" />
                          <?php } else { ?>
                          <input type="checkbox" name="agree" value="1" />
                          <?php } ?>
                          <?php echo $text_agree; ?>
                        </label>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <div class="row pagination_buttons">
                <div class="col-xs-12 text-center">
                  <p><button type="submit" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></p>
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