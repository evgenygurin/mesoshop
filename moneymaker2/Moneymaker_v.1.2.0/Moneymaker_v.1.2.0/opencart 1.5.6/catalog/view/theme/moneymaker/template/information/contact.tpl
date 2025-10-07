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
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="col-sm-12" role="form">
              <div class="row">
                <div class="col-sm-4">
                  <h3><?php echo $text_address; ?></h3>
                  <p><?php echo $store; ?></p>
                  <p><?php echo $address; ?></p>
                  <?php if ($telephone) { ?>
                  <h3><?php echo $text_telephone; ?></h3>
                  <p><i class="fa fa-fw fa-lg fa-mobile"></i> <?php echo $telephone; ?></p>
                  <?php } ?>
                  <?php if ($fax) { ?>
                  <h3><?php echo $text_fax; ?></h3>
                  <p><i class="fa fa-fw fa-fax"></i> <?php echo $fax; ?></p>
                  <?php } ?>
                  <?php if ($this->config->get('mmr_catalog_contacts_additional_enabled')&&$this->config->get('mmr_header_contacts')) { ?>
                  <?php $mmr_header_contacts = $this->config->get('mmr_header_contacts'); ?>
                  <?php foreach ($mmr_header_contacts as $key => $mmr_header_contact) { ?>
                  <?php if ($mmr_header_contact['mode']) { ?>
                  <?php if ($mmr_header_contact['mode']==1&&$mmr_header_contact['mobile_icon']) { ?>
                  <p><img alt="<?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?>" src="catalog/view/theme/moneymaker/image/mobiles/<?php echo $mmr_header_contact['mobile_icon']; ?>.png" /> <?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?></p>
                  <?php } else if ($mmr_header_contact['mode']==2) { ?>
                    <?php if (isset($mmr_header_contact['link'])&&$mmr_header_contact['link']) { ?>
                    <p><a href="<?php echo $mmr_header_contact['link']; ?>"><i class="fa fa-lg fa-fw fa-<?php echo $mmr_header_contact['icon']; ?>"></i> <?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?></a></p>
                    <?php } else { ?>
                    <p><i class="fa fa-lg fa-fw fa-<?php echo $mmr_header_contact['icon']; ?>"></i> <?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?></p>
                    <?php } ?>
                  <?php } else if ($mmr_header_contact['mode']==3) { ?>
                  <h3><?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?></h3>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                </div>
                <div class="col-sm-8">
                  <div class="form form-horizontal">
                    <div class="form-group">
                      <div class="col-sm-offset-4 col-sm-8"><h3><?php echo $text_contact; ?></h3></div>
                    </div>
                    <div class="form-group required">
                      <label for="name" class="col-sm-4 control-label"><?php echo $entry_name; ?></label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" id="name" name="name" value="<?php echo $name; ?>" />
                        <?php if ($error_name) { ?>
                        <span class="error"><?php echo $error_name; ?></span>
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
                      <label for="enquiry" class="col-sm-4 control-label"><?php echo $entry_enquiry; ?></label>
                      <div class="col-sm-8">
                        <textarea name="enquiry" id="enquiry" class="form-control" rows="3"><?php echo $enquiry; ?></textarea>
                        <?php if ($error_enquiry) { ?>
                        <span class="error"><?php echo $error_enquiry; ?></span>
                        <?php } ?>
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
                          <img src="index.php?route=information/contact/captcha" alt="" id="captcha" />
                          <small class="text-neutral"><?php echo $entry_captcha; ?></small>
                          <input type="text" name="captcha" value="<?php echo $captcha; ?>" id="input-captcha" class="form-control input-lg" />
                        </div>
                        <?php if ($error_captcha) { ?>
                        <span class="error"><?php echo $error_captcha; ?></span>
                        <?php } ?>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-offset-4 col-sm-8 <?php if ($recaptcha) { ?>text-center<?php } ?>"><button type="submit" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></div>
                    </div>
                  </div>
                </div>
              </div>
              <?php if ($this->config->get('mmr_catalog_contacts_map_enabled')&&$this->config->get('mmr_catalog_contacts_map_code')) { ?>
              <div class="row">
                <div class="col-sm-12">
                  <br />
                  <h3><?php echo $text_location; ?></h3>
                  <div class="iframe-responsive">
                    <?php echo html_entity_decode($this->config->get('mmr_catalog_contacts_map_code'), ENT_QUOTES, 'UTF-8'); ?>
                  </div>
                </div>
              </div>
              <?php } ?>
            </form>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>