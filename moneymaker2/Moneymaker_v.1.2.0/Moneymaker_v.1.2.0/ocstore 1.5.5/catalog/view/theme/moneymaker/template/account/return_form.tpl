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
          <?php echo $text_description; ?>
          <div class="row">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal col-sm-12" role="form">
              <h3><?php echo $text_order; ?></h3>
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <div class="form-group required">
                    <label for="order_id" class="col-sm-4 control-label"><?php echo $entry_order_id; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="order_id" name="order_id" value="<?php echo $order_id; ?>" />
                      <?php if ($error_order_id) { ?>
                      <span class="error"><?php echo $error_order_id; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="date_ordered" class="col-sm-4 control-label"><?php echo $entry_date_ordered; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control date" id="date_ordered" name="date_ordered" value="<?php echo $date_ordered; ?>" />
                    </div>
                  </div>
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
                </div>
              </div>
              <h3><?php echo $text_product; ?></h3>
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <div class="form-group required">
                    <label for="product" class="col-sm-4 control-label"><?php echo $entry_product; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="product" name="product" value="<?php echo $product; ?>" />
                      <?php if ($error_product) { ?>
                      <span class="error"><?php echo $error_product; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="model" class="col-sm-4 control-label"><?php echo $entry_model; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="model" name="model" value="<?php echo $model; ?>" />
                      <?php if ($error_model) { ?>
                      <span class="error"><?php echo $error_model; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="quantity" class="col-sm-4 control-label"><?php echo $entry_quantity; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="quantity" name="quantity" value="<?php echo $quantity; ?>" />
                    </div>
                  </div>
                  <div class="form-group required">
                    <label class="col-sm-4 control-label"><?php echo $entry_reason; ?></label>
                    <div class="col-sm-8">
                      <?php foreach ($return_reasons as $return_reason) { ?>
                      <?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>
                      <label>
                        <input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" checked="checked" />
                        <?php echo $return_reason['name']; ?>
                      </label><br />
                      <?php } else { ?>
                      <label>
                        <input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" />
                        <?php echo $return_reason['name']; ?>
                      </label><br />
                      <?php } ?>
                      <?php } ?>
                      <?php if ($error_reason) { ?>
                      <span class="error"><?php echo $error_reason; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_opened; ?></label>
                    <div class="col-sm-8">
                      <?php if ($opened) { ?>
                      <label class="radio-inline">
                        <input type="radio" name="opened" value="1" checked="checked" /> <?php echo $text_yes; ?>
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="opened" value="0" /> <?php echo $text_no; ?>
                      </label>
                      <?php } else { ?>
                      <label class="radio-inline">
                        <input type="radio" name="opened" value="1" /> <?php echo $text_yes; ?>
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="opened" value="0" checked="checked" /> <?php echo $text_no; ?>
                      </label>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_fault_detail; ?></label>
                    <div class="col-sm-8">
                      <textarea name="comment" class="form-control" rows="3"><?php echo $comment; ?></textarea>
                    </div>
                  </div>
                  <div class="form-group required">
                    <div class="col-sm-offset-4 col-sm-8">
                      <?php if ($recaptcha) { ?>
                      <script>var RecaptchaOptions = {theme : 'custom', custom_theme_widget: 'recaptcha_widget'};</script>
                      <div class="text-center">
                        <div id="recaptcha_widget" style="display:none" class="recaptcha_widget">
                          <div id="recaptcha_image"></div>
                          <div class="recaptcha_only_if_incorrect_sol" style="color:red">Incorrect. Please try again.</div>
                          <div class="recaptcha_input">
                            <small class="recaptcha_only_if_image text-neutral"><?php echo $entry_captcha; ?></small>
                            <div class="input-group">
                              <input type="text" id="recaptcha_response_field" name="recaptcha_response_field" class="form-control">
                              <div class="input-group-btn">
                                <a class="btn btn-default" href="javascript:Recaptcha.reload()"><i class="fa fa-refresh"></i></a>
                                <a class="btn btn-default recaptcha_only_if_image" href="javascript:Recaptcha.switch_type('audio')"><i class="fa fa-volume-up"></i></a>
                                <a class="btn btn-default recaptcha_only_if_audio" href="javascript:Recaptcha.switch_type('image')"><i class="fa fa-picture-o"></i></a>
                                <a class="btn btn-default" href="javascript:Recaptcha.showhelp()"><i class="fa fa-question-circle"></i></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <?php echo $recaptcha; ?>
                        <?php if ($error_captcha) { ?>
                        <span class="error"><?php echo $error_captcha; ?></span>
                        <?php } ?>
                      </div>
                      <?php } else { ?>
                      <div class="captcha">
                        <div></div>
                        <img src="index.php?route=account/return/captcha" alt="" id="captcha" />
                        <small class="text-neutral"><?php echo $entry_captcha; ?></small>
                        <input type="text" name="captcha" value="<?php echo $captcha; ?>" id="input-captcha" class="form-control input-lg" />
                      </div>
                      <?php if ($error_captcha) { ?>
                      <span class="error"><?php echo $error_captcha; ?></span>
                      <?php } ?>
                      <?php } ?>
                    </div>
                  </div>
                  <?php if ($text_agree) { ?>
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
<script type="text/javascript"><!--
  $(document).ready(function() {
    $('.colorbox').colorbox({
      close: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-times'></i></button>",
      onComplete: function() { if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
      width: 800
    });
  });
  //--></script>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<?php echo $footer; ?>