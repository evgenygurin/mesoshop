  </div>
</div>
<div id="footer" class="pos-8">
  <div class="container">
    <div class="row">
      <?php if ($this->config->get('mmr_footer_information_hidden')!=1||$this->config->get('mmr_footer_extras_hidden')!=1) { ?>
      <div class="col-sm-3">
        <?php if ($this->config->get('mmr_footer_information_hidden')!=1) { ?>
        <?php if ($informations) { ?>
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
        <?php } ?>
        <?php } ?>
        <?php if ($this->config->get('mmr_footer_extras_hidden')!=1) { ?>
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>" rel="nofollow"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>" rel="nofollow"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <?php if ($this->config->get('mmr_footer_socials_enabled')) { ?>
        <?php $mmr_footer_socials_title = $this->config->get('mmr_footer_socials_title'); ?>
        <h5><?php echo isset($mmr_footer_socials_title[$this->config->get('config_language_id')]) ? $mmr_footer_socials_title[$this->config->get('config_language_id')] : ''; ?></h5>
        <ul class="list-unstyled">
          <?php $mmr_footer_socials_links = $this->config->get('mmr_footer_socials_links'); ?>
          <?php $mmr_footer_socials_types = $this->config->get('mmr_footer_socials_types'); ?>
          <li class="socials">
            <?php foreach ($mmr_footer_socials_types as $key => $mmr_footer_socials_type) { ?>
            <?php if ($mmr_footer_socials_type) { ?>
            <a href="<?php echo $mmr_footer_socials_links[$key]; ?>" title="<?php echo isset($mmr_footer_socials_title[$this->config->get('config_language_id')]) ? $mmr_footer_socials_title[$this->config->get('config_language_id')].' - ' : ''; ?><?php echo str_replace('-square','',$mmr_footer_socials_type); ?>" target="_blank"><i class="fa <?php if ($this->config->get('mmr_footer_socials_icons_large')) { ?>fa-3x<?php } else { ?>fa-2x<?php } ?> fa-<?php echo $mmr_footer_socials_type; ?>"></i></a>&nbsp;
            <?php } ?>
            <?php } ?>
          </li>
        </ul>
        <?php } ?>
        <?php if ($this->config->get('mmr_footer_service_hidden')!=1) { ?>
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>" rel="nofollow"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
        <?php } ?>
        <?php if ($this->config->get('mmr_footer_payments_enabled')) { ?>
        <?php $mmr_footer_payments_title = $this->config->get('mmr_footer_payments_title'); ?>
        <h5><?php echo isset($mmr_footer_payments_title[$this->config->get('config_language_id')]) ? $mmr_footer_payments_title[$this->config->get('config_language_id')] : ''; ?></h5>
        <ul class="list-unstyled">
          <?php $mmr_footer_payments_links = $this->config->get('mmr_footer_payments_links'); ?>
          <?php $mmr_footer_payments_types = $this->config->get('mmr_footer_payments_types'); ?>
          <li class="payments">
            <?php if (isset($mmr_footer_payments_types)) { ?>
            <?php foreach ($mmr_footer_payments_types as $key => $mmr_footer_payments_type) { ?>
            <?php if ($mmr_footer_payments_type) { ?>
            <?php if ($mmr_footer_payments_links[$key]) { ?><a href="route=information/information&amp;information_id=<?php echo $mmr_footer_payments_links[$key]; ?>" data-to="index.php?route=information/information/info&amp;information_id=<?php echo $mmr_footer_payments_links[$key]; ?>" class="colorbox_popup" title="<?php echo isset($mmr_footer_payments_title[$this->config->get('config_language_id')]) ? $mmr_footer_payments_title[$this->config->get('config_language_id')].' - ' : ''; ?><?php echo str_replace('cc-','',$mmr_footer_payments_type); ?>" target="_blank"><?php } ?><i class="fa <?php if ($this->config->get('mmr_footer_payments_icons_large')) { ?>fa-3x<?php } else { ?>fa-2x<?php } ?> fa-<?php echo $mmr_footer_payments_type; ?>"></i><?php if ($mmr_footer_payments_links[$key]) { ?></a><?php } ?>&nbsp;
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </li>
        </ul>
        <?php } ?>
      </div>
      <div class="col-sm-3">
        <?php if ($this->config->get('mmr_footer_account_hidden')!=1) { ?>
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>" rel="nofollow"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>" rel="nofollow"><?php echo $text_order; ?></a></li>
          <?php if (!$this->config->get('mmr_common_btn_wishlist_hidden')) { ?><li><a href="<?php echo $wishlist; ?>" rel="nofollow"><?php echo $text_wishlist; ?></a></li><?php } ?>
          <li><a href="<?php echo $newsletter; ?>" rel="nofollow"><?php echo $text_newsletter; ?></a></li>
        </ul>
        <?php } ?>
        <?php if ($this->config->get('mmr_footer_contact_hidden')!=1) { ?>
        <?php $mmr_footer_contact_title = $this->config->get('mmr_footer_contact_title'); ?>
        <h5><?php echo isset($mmr_footer_contact_title[$this->config->get('config_language_id')])&&$mmr_footer_contact_title[$this->config->get('config_language_id')] ? $mmr_footer_contact_title[$this->config->get('config_language_id')] : $this->config->get('config_name'); ?></h5>
        <p>
          <i class="fa fa-globe fa-fw"></i> <?php echo $this->config->get('config_address'); ?><br />
          <a href="tel:<?php echo preg_replace('/[^0-9]/', '', $this->config->get('config_telephone')); ?>" title="<?php echo $this->config->get('config_telephone'); ?>"><i class="fa fa-phone fa-fw"></i> <?php echo $this->config->get('config_telephone'); ?></a><br />
          <?php if ($this->config->get('config_fax')) { ?>
          <i class="fa fa-phone fa-fw"></i> <?php echo $this->config->get('config_fax'); ?><br />
          <?php } ?>
          <a href="mailto:<?php echo $this->config->get('config_email'); ?>" title="<?php echo $this->config->get('config_email'); ?>"><i class="fa fa-envelope fa-fw"></i> <?php echo $this->config->get('config_email'); ?></a>
        </p>
        <?php } ?>
      </div>
      <div class="col-sm-3">
        <?php if ($this->config->get('mmr_footer_links_enabled')) { ?>
        <?php $mmr_footer_links_title = $this->config->get('mmr_footer_links_title'); ?>
        <h5><?php echo isset($mmr_footer_links_title[$this->config->get('config_language_id')]) ? $mmr_footer_links_title[$this->config->get('config_language_id')] : ''; ?></h5>
        <ul class="list-unstyled">
          <?php $mmr_footer_links = $this->config->get('mmr_footer_links'); ?>
          <?php if ($mmr_footer_links) { ?>
          <?php foreach ($mmr_footer_links as $mmr_footer_link) { ?>
          <?php if ($mmr_footer_link['link_mode']) { ?>
          <li><a href="<?php echo $mmr_footer_link['link_url']; ?>"><?php echo isset($mmr_footer_link['text'][$this->config->get('config_language_id')]) ? $mmr_footer_link['text'][$this->config->get('config_language_id')] : ''; ?></a></li>
          <?php } else { ?>
          <li><a href="<?php echo $this->url->link('information/information', 'information_id=' . $mmr_footer_link['link_id'], 'SSL'); ?>"><?php echo isset($mmr_footer_link['text'][$this->config->get('config_language_id')]) ? $mmr_footer_link['text'][$this->config->get('config_language_id')] : ''; ?></a></li>
          <?php } ?>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
        <?php if ($this->config->get('mmr_footer_custom_enabled')) { ?>
        <?php $mmr_footer_custom_title = $this->config->get('mmr_footer_custom_title'); ?>
        <h5><?php echo isset($mmr_footer_custom_title[$this->config->get('config_language_id')]) ? $mmr_footer_custom_title[$this->config->get('config_language_id')] : ''; ?></h5>
        <p>
          <?php $mmr_footer_custom_text = $this->config->get('mmr_footer_custom_text'); ?>
          <?php echo isset($mmr_footer_custom_text[$this->config->get('config_language_id')]) ? html_entity_decode($mmr_footer_custom_text[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8') : ''; ?>
        </p>
        <p>
          &copy; <?php if ($this->config->get('mmr_footer_custom_year')) { ?><?php echo $this->config->get('mmr_footer_custom_year'); ?> &ndash; <?php } ?><?php echo date("Y"); ?> <?php echo $this->config->get('config_name'); ?>
        </p>
        <?php } ?>
      </div>
    </div>
  </div>
</div>

<?php if ($this->config->get('mmr_effects_enabled')) { ?>
<?php if ($this->config->get('mmr_effects_home_enabled')&&(!isset($this->request->get['route']) || isset($this->request->get['route']) && $this->request->get['route'] == 'common/home') || !$this->config->get('mmr_effects_home_enabled')) { ?>

<script type="text/javascript"><!--
  $('html').css({visibility: "visible" });
  <?php $mmr_effects = $this->config->get('mmr_effects'); ?>
  <?php foreach ($mmr_effects as $key => $mmr_effect) { ?>
  <?php if ($mmr_effect['enabled-js']) { ?>
      $('.pos-<?php echo $key; ?>').css({ <?php switch($mmr_effect['type-js']) { case 0: ?>left: "-100%"<?php break; case 1: ?>right: "-150%"<?php break; case 2: ?>top: "-500px"<?php break; case 3: ?>bottom: "-1000px"<?php break; case 4: ?>opacity: "0"<?php break; default: break; } ?> });
    $('.pos-<?php echo $key; ?>').animate({ <?php switch($mmr_effect['type-js']) { case 0: ?>left: "+=100%"<?php break; case 1: ?>right: "+=150%"<?php break; case 2: ?>top: "+=500px"<?php break; case 3: ?>bottom: "+=1000px"<?php break; case 4: ?>opacity: "1"<?php break; default: break; } ?> }, <?php echo $mmr_effect['duration-js']; ?>);
  <?php } ?>
  <?php if ($mmr_effect['enabled-css']) { ?>$(".pos-<?php echo $key; ?>").addClass("<?php echo $mmr_effect['type-css']; ?>");<?php } ?>
  <?php } ?>
  //setTimeout(function(){$('.header-container').css('position', 'relative')}, 3000);
  $('.navbar, .header-container').on('click', function(e){
    $('.container-sm-height').css('position', 'relative');
    $('.header-container').css('position', 'relative');
  });
  //--></script>
<?php } ?>
<?php } ?>

<!--[if !IE 8]><!-->
<script type="text/javascript"><!--
  jQuery.colorbox.settings.maxWidth  = '95%';
  jQuery.colorbox.settings.maxHeight = '95%';
  var resizeTimer;
  function resizeColorBox()
  {
    if (resizeTimer) clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function() {
      if (jQuery('#cbox_mmrOverlay').is(':visible')) {
        jQuery.colorbox.load(true);
      }
    }, 300);
  }
  jQuery(window).resize(resizeColorBox);
  window.addEventListener("orientationchange", resizeColorBox, false);
  //--></script>
<!--<![endif]-->

  <?php if ($this->config->get('mmr_callback_enabled')&&$this->config->get('mmr_callback_fields')) {$this->language->load('module/mmr_callback'); $mmr_callback = true;} else {$mmr_callback = false;}; ?>
  <?php if ($mmr_callback) { ?>
  <div class="hidden">
    <div id="callback_form">
      <input id="page_url" type="hidden" value='<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>'>
      <div class="col-sm-12 form-group text-center">
        <h4><?php echo $this->language->get('text_mmr_callback_title'); ?></h4>
      </div>
      <?php $mmr_callback_fields = $this->config->get('mmr_callback_fields'); ?>
      <?php foreach($mmr_callback_fields as $subKey => $subArray){ if($subArray['status'] != 1){ unset($mmr_callback_fields[$subKey]); } } ?>
      <?php $mmr_callback_fields = array_values($mmr_callback_fields); ?>
      <?php foreach ($mmr_callback_fields as $key => $mmr_callback_field) { ?>
      <div class="col-sm-<?php if ( ($key == count($mmr_callback_fields)-1) && ($key%2==0)) { ?>12<?php } else { ?>6<?php } ?> form-group <?php if ($mmr_callback_field['required']) { ?>required<?php } ?>">
        <label for="mmr_callback_field<?php echo $key; ?>" class="control-label"><?php echo isset($mmr_callback_field['label'][$this->config->get('config_language_id')]) ? $mmr_callback_field['label'][$this->config->get('config_language_id')] : ''; ?></label>
        <input type="text" class="form-control" id="mmr_callback_field<?php echo $key; ?>">
      </div>
      <?php } ?>
      <div class="clearfix"></div>
      <div class="col-sm-12 form-group" id="callback_result"></div>
      <div class="form-group text-center">
        <p>
          <button type="submit" class="btn btn-lg btn-primary"><i class="fa fa-flip-horizontal fa-reply-all"></i> <span><?php echo $this->language->get('text_mmr_callback_button'); ?></span></button>
        </p>
        <p>
          <button class="btn btn-default" onclick="$.colorbox.close()"><?php echo $this->language->get('button_shopping'); ?></button>
        </p>
      </div>
    </div>
  </div>
  <?php } ?>

<script type="text/javascript"><!--
  $(document).ready(function() {
    <?php if ($mmr_callback) { ?>
      $('.btn-callback').colorbox({
        close: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-times'></i></button>",
        href:"#callback_form",
        inline: true,
        width:"550px",
        onComplete: function() { $('.btn-callback').tooltip('destroy'); if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
        onCleanup: function() { $('#callback_result').html(''); }
      });
      $("#callback_form .btn-primary").click(function(){
          $('#callback_result').html('<div class="alert alert-info"><i class="fa fa-spinner fa-spin"></i> <?php echo $this->language->get('text_mmr_callback_processing'); ?></div>');
          $('#callback_form').colorbox.resize()
          $.post("catalog/view/javascript/moneymaker_callback.php",
            { 'page_url': $('#page_url').val(),
              'mmr_callback_fields[]': [<?php foreach ($mmr_callback_fields as $key => $mmr_callback_field) { ?>$('#mmr_callback_field<?php echo $key; ?>').val(), <?php } ?>],
            'mmr_callback_fields_label[]': [<?php foreach ($mmr_callback_fields as $mmr_callback_field) { ?><?php echo '"'.$mmr_callback_field['label'][$this->config->get('mmr_callback_mail_language')].'", '; ?><?php } ?>],
            'mmr_callback_fields_required[]': [<?php foreach ($mmr_callback_fields as $mmr_callback_field) { ?><?php echo $mmr_callback_field['required'].', '; ?><?php } ?>],
            'email': "<?php echo $this->config->get('config_email'); ?>",
            'email_subject': "<?php echo $this->config->get('config_name')." - ".$this->language->get('text_mmr_callback_email_subject')." (".date('Y.m.d H:i').")"; ?>",
            'email_order_received': "<?php echo $this->language->get('text_mmr_callback_email_order_received'); ?>",
            'email_order_detail': "<?php echo $this->language->get('text_mmr_callback_email_order_detail'); ?>",
            'email_url': "<?php echo $this->language->get('text_mmr_callback_email_url'); ?>",
        },
        function (data) {
          if (data == '0') {
            $('#callback_result').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $this->language->get('error_mmr_callback_fields'); ?></div>');
            $('#callback_form').colorbox.resize();
          }
          else {
            $('#callback_result').html('<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $this->language->get('text_mmr_callback_success'); ?></div>');
            $('#callback_form').colorbox.resize();
            $('#callback_form .btn-primary').attr('disabled','disabled');
          }
        });
    });
    <?php } ?>
    
    <?php if ($this->config->get('mmr_advantages_enabled')) { ?>
    $('.colorbox_popup').colorbox({
      close: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-times'></i></button>",
      onComplete: function() { if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
      width: 910,
      height: 700,
      href:function(){ return $(this).attr('data-to'); }
    });
    <?php } ?>
    <?php if ($this->config->get('mmr_common_scrolltotop_enabled')) { ?>
      $().UItoTop({ easingType: 'easeOutQuart' });
    <?php } ?>
  });
//--></script>
</body></html>