<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
  <meta charset="UTF-8" />
  <title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>
  <meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="<?php echo $og_url; ?>" />
  <?php if ($og_image) { ?>
  <meta property="og:image" content="<?php echo $og_image; ?>" />
  <?php } else { ?>
  <meta property="og:image" content="<?php echo $logo; ?>" />
  <?php } ?>
  <meta property="og:site_name" content="<?php echo $name; ?>" />
  <?php if ($this->config->get('mmr_themes_responsive_disabled')!=1) { ?>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <?php } ?>

  <?php if ($icon) { ?>
  <link href="<?php echo $icon; ?>" rel="icon" />
  <?php } ?>

  <?php  $this->language->load('module/account');
  $this->language->load('account/account');
  $this->language->load('product/compare');
  $this->language->load('information/contact'); ?>

  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/moneymaker/stylesheet/font-awesome.min.css" />
  <?php foreach ($styles as $style) { ?>
  <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>

  <?php if ($this->config->get('mmr_themes_responsive_disabled')!=1) { ?>
  <link href="catalog/view/theme/moneymaker/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/moneymaker.css" />
  <?php } ?>
  <?php if ($this->config->get('mmr_themes_responsive_disabled')==1) { ?>
  <link href="catalog/view/theme/moneymaker/bootstrap/css/bootstrap.min-fixed.css" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/moneymaker-fixed.css" />
  <?php } ?>

  <?php if ($this->config->get('mmr_effects_enabled')) { ?>
  <?php if ($this->config->get('mmr_effects_home_enabled')&&(!isset($this->request->get['route']) || isset($this->request->get['route']) && $this->request->get['route'] == 'common/home') || !$this->config->get('mmr_effects_home_enabled')) { ?>
  <link href="catalog/view/theme/moneymaker/stylesheet/animations.css" rel="stylesheet">
  <?php } ?>
  <?php } ?>

  <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />

  <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />

  <?php  if ($this->config->get('mmr_product_gallery_type')=='photobox') { ?>
    <link rel="stylesheet" href="catalog/view/javascript/jquery/photobox/photobox.css">
    <!--[if lt IE 9]><link rel="stylesheet" href="catalog/view/javascript/jquery/photobox/photobox.ie.css"><![endif]-->
  <?php } else if ($this->config->get('mmr_product_gallery_type')=='fancybox') { ?>
    <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
  <?php } ?>

  <?php if ($this->config->get('mmr_themes_mode')==2&&$this->config->get('mmr_themes_builtin_theme')) { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes/moneymaker-themes-<?php echo $this->config->get('mmr_themes_builtin_theme'); ?>.css" />
  <?php if ($this->config->get('mmr_themes_responsive_disabled')!=1) { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes_responsive/moneymaker-themes-<?php echo $this->config->get('mmr_themes_builtin_theme'); ?>.css" />
  <?php } ?>
  <?php } else if ($this->config->get('mmr_themes_mode')==1) { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes/moneymaker-custom-theme-colors-<?php echo $this->config->get('mmr_themes_custom_color'); ?>.css" />
  <?php if ($this->config->get('mmr_themes_custom_brightness')) { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes/moneymaker-custom-theme-light.css" />
  <?php if ($this->config->get('mmr_themes_responsive_disabled')!=1) { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes_responsive/moneymaker-custom-theme-light.css" />
  <?php } ?>
  <?php } else { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes/moneymaker-custom-theme-dark.css" />
  <?php if ($this->config->get('mmr_themes_responsive_disabled')!=1) { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes_responsive/moneymaker-custom-theme-dark.css" />
  <?php } ?>
  <?php } ?>
  <?php if ($this->config->get('mmr_themes_custom_bg_mode')) { ?>
  <?php if ($this->config->get('mmr_themes_custom_bg_img')) { ?>
  <style type="text/css">body {background: <?php if ($this->config->get('mmr_themes_custom_bg_attachment')) { echo $this->config->get('mmr_themes_custom_bg_attachment'); } ?> <?php if ($this->config->get('mmr_themes_custom_bg_position')) { echo $this->config->get('mmr_themes_custom_bg_position'); } ?> <?php if ($this->config->get('mmr_themes_custom_bg_repeat')) { echo $this->config->get('mmr_themes_custom_bg_repeat'); } ?> url('image/<?php echo $this->config->get('mmr_themes_custom_bg_img'); ?>');}</style>
  <?php } else { ?>
  <style type="text/css">body {background: url('image/no_image.jpg');}</style>
      <?php } ?>
    <?php } else { ?>
    <style type="text/css">body {background-color: <?php echo $this->config->get('mmr_themes_custom_bg_color'); ?>;}</style>
  <?php } ?>
  <?php } else { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes/moneymaker-themes-2.css" />
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/mmr_themes_responsive/moneymaker-themes-2.css" />
  <?php } ?>
  <?php if ($this->config->get('mmr_header_custom_css_enabled')) { ?>
  <link type="text/css" rel="stylesheet" href="catalog/view/theme/moneymaker/stylesheet/moneymaker-custom.css" />
  <?php } ?>
  <style type="text/css">
    <?php //require_once 'catalog/view/theme/moneymaker/template/module/init.tpl'; ?>
    <?php if ($this->config->get('mmr_header_custom_css_enabled')) { ?>
    <?php //echo html_entity_decode($this->config->get('mmr_header_custom_css'), ENT_QUOTES, 'UTF-8'); ?>
    <?php } ?>
  </style>

  <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>

  <script type="text/javascript" src="catalog/view/javascript/moneymaker.js"></script>

  <script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js"></script>
  <?php if ($this->config->get('mmr_product_gallery_type')=='photobox') { ?>
    <script src="catalog/view/javascript/jquery/photobox/jquery.photobox.js"></script>
  <?php } else if ($this->config->get('mmr_product_gallery_type')=='fancybox') { ?>
    <script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
  <?php } ?>

  <!--[if !IE 8]><!-->
  <script type="text/javascript" src="catalog/view/javascript/bootstrap-rating-input.min.js"></script>
  <!--<![endif]-->

  <?php if ($this->config->get('mmr_header_livesearch_enabled')) { ?>
  <script type="text/javascript" src="catalog/view/javascript/livesearch.js"></script>
  <?php } ?>

  <?php if ($this->config->get('mmr_timer_enabled')) { ?>
  <script type="text/javascript" src="catalog/view/javascript/jquery/mmr_timer/jquery.countdown.js"></script>
  <?php } ?>

  <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>

  <?php if ($this->config->get('mmr_product_sharing_enabled')) { ?>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53b3a98b67bd4c4f&amp;async=1"></script>
  <?php } ?>

  <?php foreach ($scripts as $script) { ?>
  <script type="text/javascript" src="<?php echo $script; ?>"></script>
  <?php } ?>

  <?php if ($this->config->get('mmr_header_custom_js_enabled')) { ?>
  <script type="text/javascript"><!--
    <?php echo html_entity_decode($this->config->get('mmr_header_custom_js'), ENT_QUOTES, 'UTF-8'); ?>
    //--></script>
  <?php } ?>

  <script src="catalog/view/theme/moneymaker/bootstrap/js/bootstrap.min.js"></script>
  <?php if ($this->config->get('mmr_header_dropdown_hover_enabled')) { ?>
  <?php if ($this->config->get('mmr_header_dropdown_hover_delay_enabled')) { ?>
  <script type="text/javascript" src="catalog/view/javascript/jquery.hoverIntent.minified.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/bootstrap-hover-intent-dropdown.min.js"></script>
  <?php } else { ?>
  <script type="text/javascript" src="catalog/view/javascript/bootstrap-hover-dropdown.min.js"></script>
  <?php } ?>
  <?php } ?>
  <?php if ($this->config->get('mmr_common_scrolltotop_enabled')) { ?>
  <script src="catalog/view/javascript/jquery/mmr_uitotop/jquery.ui.totop.min.js" type="text/javascript"></script>
  <?php } ?>

  <!--[if lt IE 9]>
  <script type="text/javascript" src="catalog/view/javascript/html5shiv.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/respond.min.js"></script>
  <![endif]-->

  <?php if ($stores) { ?>
  <script type="text/javascript"><!--
    $(document).ready(function() {
      <?php foreach ($stores as $store) { ?>
          $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
      <?php } ?>
    });
    //--></script>
  <?php } ?>
  <?php echo $google_analytics; ?>
</head>
<body>
<?php if ($this->config->get('mmr_effects_enabled')) { ?>
<?php if ($this->config->get('mmr_effects_home_enabled')&&(!isset($this->request->get['route']) || isset($this->request->get['route']) && $this->request->get['route'] == 'common/home') || !$this->config->get('mmr_effects_home_enabled')) { ?>
<script type="text/javascript"><!--
  $('html').css({visibility: "hidden" });
  //--></script>
<?php } ?>
<?php } ?>
<script type="text/javascript">
  var button_shopping = "<?php echo $this->language->get('button_shopping'); ?>";
  var text_compare = "<?php echo preg_replace('/\\s*\\([^()]*\\)\\s*/', '', $this->language->get('text_compare')); ?>";
  var text_wishlist = "<?php echo preg_replace('/\\s*\\([^()]*\\)\\s*/', '', $text_wishlist); ?>";
  var link_compare = "<?php echo $this->url->link('product/compare'); ?>";
  var link_wishlist = "<?php echo $this->url->link('account/wishlist'); ?>";
  var button_checkout = "<?php echo $this->language->get('button_checkout'); ?>";
  var link_checkout = "<?php echo $checkout; ?>";
</script>
<!--MMR v.1.2.0-->
<div class="header-container">
  <div class="navbar navbar-inverse pos-1<?php if ($this->config->get('mmr_common_header_fixed')) { ?> navbar-fixed-top<?php } ?>" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".main-nav">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <span class="navbar-brand visible-xs" data-toggle="collapse" data-target=".main-nav"><?php if ($this->config->get('mmr_header_brand_caption')) { $mmr_header_brand_caption = $this->config->get('mmr_header_brand_caption'); echo $mmr_header_brand_caption[$this->config->get('config_language_id')]; } else { echo $this->config->get('config_name'); } ?></span>
      </div>
      <div class="collapse navbar-collapse main-nav">
        <ul class="nav navbar-nav navbar-left">
          <?php $mmr_header_links = $this->config->get('mmr_header_links'); ?>
          <?php if ($mmr_header_links) { ?>
          <?php foreach ($mmr_header_links as $mmr_header_link) { ?>
          <?php if ($mmr_header_link['link_mode']) { ?>
          <?php if (strlen ($mmr_header_link['link_url'])==0 && (!isset($this->request->get['route']) || isset($this->request->get['route']) && $this->request->get['route'] == 'common/home')) { ?>
          <li class="active"><a><?php if (isset($mmr_header_link['icon_mode'])&&$mmr_header_link['icon_mode']) { ?><i class="fa fa-<?php echo $mmr_header_link['icon']; ?> fa-fw"></i> <?php } ?><?php echo isset($mmr_header_link['text'][$this->config->get('config_language_id')]) ? $mmr_header_link['text'][$this->config->get('config_language_id')] : ''; ?></a></li>
          <?php } else { ?>
          <li><a href="<?php echo $mmr_header_link['link_url']; ?>"><?php if (isset($mmr_header_link['icon_mode'])&&$mmr_header_link['icon_mode']) { ?><i class="fa fa-<?php echo $mmr_header_link['icon']; ?> fa-fw"></i> <?php } ?><?php echo isset($mmr_header_link['text'][$this->config->get('config_language_id')]) ? $mmr_header_link['text'][$this->config->get('config_language_id')] : ''; ?></a></li>
          <?php } ?>
          <?php } else { ?>
          <?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'information/information' && isset($this->request->get['information_id']) && $this->request->get['information_id']==$mmr_header_link['link_id']) { ?>
          <li class="active"><a><?php if (isset($mmr_header_link['icon_mode'])&&$mmr_header_link['icon_mode']) { ?><i class="fa fa-<?php echo $mmr_header_link['icon']; ?> fa-fw"></i> <?php } ?><?php echo isset($mmr_header_link['text'][$this->config->get('config_language_id')]) ? $mmr_header_link['text'][$this->config->get('config_language_id')] : ''; ?></a></li>
          <?php } else { ?>
          <li><a href="<?php echo $this->url->link('information/information', 'information_id=' . $mmr_header_link['link_id'], 'SSL'); ?>"><?php if (isset($mmr_header_link['icon_mode'])&&$mmr_header_link['icon_mode']) { ?><i class="fa fa-<?php echo $mmr_header_link['icon']; ?> fa-fw"></i> <?php } ?><?php echo isset($mmr_header_link['text'][$this->config->get('config_language_id')]) ? $mmr_header_link['text'][$this->config->get('config_language_id')] : ''; ?></a></li>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <?php echo $currency; ?>
          <?php echo $language; ?>
          <li class="dropdown">
            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i class="fa fa-user fa-fw"></i> <?php if (!$logged) {echo $this->language->get('text_my_account');} else {echo $this->customer->getFirstName();} ?> <span class="caret"></span>
            </a>
            <ul class="dropdown-menu keep_open">
              <li class="dropdown-header"><?php echo $this->language->get('text_my_account'); ?></li>
              <?php if (!$logged) { ?>
              <li><a href="<?php echo $this->url->link('account/login', '', 'SSL'); ?>" rel="nofollow"><i class="fa fa-sign-in fa-fw"></i> <?php echo $this->language->get('text_login'); ?> / <?php echo $this->language->get('text_register'); ?></a></li>
              <?php } else { ?>
              <li><a href="<?php echo $account; ?>" rel="nofollow"><i class="fa fa-user fa-fw"></i> <?php echo $this->language->get('text_my_account'); ?></a></li>
              <?php } ?>
              <?php if (!$this->config->get('mmr_common_btn_wishlist_hidden')) { ?><li><a href="<?php echo $wishlist; ?>" rel="nofollow"><i class="fa fa-heart fa-fw"></i> <span id="wishlist-total"><?php echo $text_wishlist; ?></span></a></li><?php } ?>
              <?php if (!$this->config->get('mmr_common_btn_compare_hidden')) { ?><li><a href="<?php echo $this->url->link('product/compare'); ?>" rel="nofollow"><i class="fa fa-bar-chart-o fa-fw"></i> <span id="compare-total"><?php echo sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0)); ?></span></a></li><?php } ?>
              <li class="divider"></li>
              <li class="dropdown-header"><?php echo $text_checkout; ?></li>
              <li><a href="<?php echo $shopping_cart; ?>" rel="nofollow"><i class="fa fa-shopping-cart fa-fw"></i> <?php echo $text_shopping_cart; ?></a></li>
              <li><a href="<?php echo $checkout; ?>" rel="nofollow"><i class="fa fa-credit-card fa-fw"></i> <?php echo $text_checkout; ?></a></li>
              <?php if ($logged) { ?>
              <li class="divider"></li>
              <li><a href="<?php echo $this->url->link('account/logout', '', 'SSL'); ?>" rel="nofollow"><i class="fa fa-sign-out fa-fw"></i> <?php echo $this->language->get('text_logout'); ?></a></li>
              <?php } ?>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="container container-sm-height">
    <div class="row row-sm-height pos-2">
      <div class="col-xs-12 col-sm-5 col-sm-height col-md-6 col-lg-6 col-middle header-logo-contacts">
        <div class="row row-md-height">
          <div class="col-sm-12 col-md-8 col-md-height col-middle">
            <div id="logo" class="text-center">
              <?php if (!isset($this->request->get['route']) || isset($this->request->get['route']) && $this->request->get['route'] == 'common/home') { ?>
              <?php if ($logo) { ?><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive image-additional" /><?php } else { ?><div style="font-size: 32px"><?php echo $name; ?></div><?php } ?>
              <?php } else { ?>
              <?php if ($logo) { ?><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive image-additional" /></a><?php } else { ?><div style="font-size: 32px"><a href="<?php echo $home; ?>"><?php echo $name; ?></a></div><?php } ?>
              <?php } ?>
            </div>
            <?php if ($this->config->get('mmr_header_contacts_address_hidden')!=1) { ?>
            <div class="text-center hidden-xs hidden-sm">
              <?php $mmr_header_contacts_address = $this->config->get('mmr_header_contacts_address'); ?>
              <?php if ($mmr_header_contacts_address[$this->config->get('config_language_id')]) { ?>
              <small><?php echo html_entity_decode($mmr_header_contacts_address[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?></small>
              <?php } else { ?>
              <small><?php echo $this->config->get('config_address'); ?></small>
              <?php } ?>
            </div>
            <?php } ?>
          </div>
          <div class="col-sm-12 col-md-4 col-md-height col-middle">
            <div class="header-contacts <?php if ($this->config->get('mmr_header_contacts_caption_enabled')) { ?>header-contacts-caption<?php } ?>">
              <div class="dropdown">
                <a href="javascript:void(0);" class="btn btn-default" data-toggle="dropdown" data-hover="dropdown">
                  <?php if ($this->config->get('mmr_header_contacts_caption_enabled')) { ?>
                  <?php $mmr_header_contacts_caption = $this->config->get('mmr_header_contacts_caption'); ?>
                  <span class="caption"><small><?php echo html_entity_decode($mmr_header_contacts_caption[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?></small></span>
                  <?php } ?>
                  <span class="phone"><?php if ($this->config->get('mmr_header_contacts_telephone_hidden')!=1) { ?><span class="hidden-xs hidden-sm hidden-md"><?php echo $this->language->get('text_telephone'); ?></span> <?php } ?><i class="fa fa-lg fa-mobile"></i> <?php echo $this->config->get('config_telephone'); ?> <span class="caret"></span></span>
                  <?php if ($this->config->get('mmr_callback_enabled')&&$this->config->get('mmr_callback_fields')) {$this->language->load('module/mmr_callback'); $mmr_callback = true;} else {$mmr_callback = false;}; ?><?php if ($mmr_callback) { ?><br /><?php } ?>
                </a>
                <?php if ($this->config->get('mmr_header_contacts')) { ?>
                <ul class="dropdown-menu keep_open">
                  <?php $mmr_header_contacts = $this->config->get('mmr_header_contacts'); ?>
                  <?php foreach ($mmr_header_contacts as $key => $mmr_header_contact) { ?>
                  <?php if ($mmr_header_contact['mode']) { ?>
                  <?php if ($mmr_header_contact['mode']==1&&$mmr_header_contact['mobile_icon']) { ?>
                  <li class="text-left"><span><img alt="<?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?>" src="catalog/view/theme/moneymaker/image/mobiles/<?php echo $mmr_header_contact['mobile_icon']; ?>.png" /> <?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?></span></li>
                  <?php } else if ($mmr_header_contact['mode']==2) { ?>
                  <?php if (isset($mmr_header_contact['link'])&&$mmr_header_contact['link']) { ?>
                  <li class="text-left"><a href="<?php echo $mmr_header_contact['link']; ?>" target="_blank"><span><i class="fa fa-lg fa-fw fa-<?php echo $mmr_header_contact['icon']; ?>"></i> <?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?></span></a></li>
                  <?php } else { ?>
                  <li class="text-left"><span><i class="fa fa-lg fa-fw fa-<?php echo $mmr_header_contact['icon']; ?>"></i> <?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?></span></li>
                  <?php } ?>
                  <?php } else if ($mmr_header_contact['mode']==3) { ?>
                  <li class="dropdown-header"><?php echo $mmr_header_contact['text'][$this->config->get('config_language_id')]; ?></li>
                  <?php } else if ($mmr_header_contact['mode']==4) { ?>
                  <li class="divider"></li>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                </ul>
                <?php } ?>
              </div>
            </div>
            <?php if ($mmr_callback) { ?>
            <div id="callback"><div><a href="javascript:void(0);" class="btn-callback"><small><i class="fa fa-chevron-circle-right"></i> <span style="text-decoration: underline;"><?php echo $this->language->get('text_mmr_callback_caption'); ?></span></small></a></div></div>
            <?php } ?>
          </div>
        </div>
      </div>
      <div class="col-xs-12 col-sm-3 col-sm-height col-md-3 col-lg-3 col-middle">
        <div class="header-search" id="search">
          <div class="input-group" role="search">
            <input type="text" name="search" class="form-control" value="" placeholder="<?php echo $text_search; ?>">
          <span class="input-group-btn">
            <button class="btn btn-default btn-header-search" type="button"><i class="fa fa-fw fa-search"></i></button>
          </span>
          </div>
        </div>
      </div>
      <div class="col-xs-12 col-sm-4 col-sm-height col-md-3 col-lg-3 col-middle">
        <div class="header-cart text-right">
          <?php echo $cart; ?>
        </div>
      </div>
    </div>
  </div>
</div>

<?php if ($categories) { ?>
<div class="navbar navbar-default pos-3<?php if ($this->config->get('mmr_header_categories_mobile_enabled')) { ?> visible-xs<?php } ?>" role="navigation" id="menu">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".cat-nav">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <span class="navbar-brand visible-xs" data-toggle="collapse" data-target=".cat-nav"><?php $this->language->load('module/category');  echo $this->language->get('heading_title'); ?></span>
    </div>
    <div class="collapse navbar-collapse cat-nav">
      <ul class="nav navbar-nav navbar-left">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown <?php if (isset($this->request->get['path'])) {$mmr_cat_id = explode("_", $this->request->get['path']); if ($category['category_id']==$mmr_cat_id[0]) { ?>active<?php } } ?>">
          <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><?php echo $category['name']; ?> <span class="caret"></span></a>
          <div class="dropdown-menu keep_open">
            <div class="dropdown-inner parent-category">
              <a href="<?php echo $category['href']; ?>"><?php if ($this->config->get('mmr_header_categories_description_hidden')!=1) { ?><?php if ($category['image']) { ?><div class="text-center" style="width: <?php echo (100/$category['column'])-1; ?>%"><img alt="<?php echo $category['name']; ?>" src="<?php echo $category['image']; ?>" /></div><?php } ?><?php } ?><span><?php echo $category['name']; ?></span></a>
              <?php if ($this->config->get('mmr_header_categories_description_hidden')!=1) { ?><div class="text-neutral"><?php echo $category['description']; ?></div><?php } ?>
            </div>
            <div class="clearfix"></div>
            <div class="dropdown-inner children-category">
              <?php foreach ($category['children'] as $children) { ?>
              <ul class="list-unstyled" style="width: <?php echo (100/$category['column'])-1; ?>%">
                <li><a href="<?php echo $children['href']; ?>"><?php if ($this->config->get('mmr_header_categories_child_image_hidden')!=1) { ?><?php if ($children['child_image']) { ?><div class="img-thumbnail-transparent text-center"><img alt="<?php echo $children['name']; ?>" src="<?php echo $children['child_image']; ?>" /></div><?php } ?><?php } ?><?php echo $children['name']; ?></a></li>
                <?php if ($children['children']) { ?>
                <?php foreach ($children['children'] as $key => $child) { ?>
                  <?php if ($this->config->get('mmr_header_categories_hidden')!=1&&$this->config->get('mmr_header_categories_hide_limit')&&$key>$this->config->get('mmr_header_categories_hide_limit')-1) { ?>
                  <li class="child"><a style="padding-top: 6px;" href="<?php echo $children['href']; ?>"><?php echo $this->language->get('heading_title'); ?> (+<?php echo count($children['children'])-$key; ?>)</a></li>
                  <?php break; ?>
                  <?php } ?>
                <li class="child"><a href="<?php echo $child['href']; ?>">-&nbsp;<?php echo $child['name']; ?></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
          </div>
        </li>
        <?php } else { ?>
        <li <?php if (isset($this->request->get['path'])) { $cat_id = explode("_", $this->request->get['path']); if ($category['category_id']==$cat_id[0]) { ?>class="active"<?php } } ?>><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
<?php } ?>

<div class="content-container">
  <div class="container">
<!--div id="notification"></div-->