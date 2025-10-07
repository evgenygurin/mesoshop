<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" itemscope itemtype="http://schema.org/Product">
  <div class="row">
    <div class="col-sm-12">
      <div class="row">
        <div class="col-sm-12 pos-12">
          <ul class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
            <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
            <?php if($i+1<count($breadcrumbs)) { ?>
            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem"><a itemprop="item" href="<?php echo $breadcrumb['href']; ?>" title="<?php echo $breadcrumb['text']; ?>"><span itemprop="name"><?php echo $breadcrumb['text']; ?></span></a><meta itemprop="position" content="<?php echo $i+1; ?>" /></li><?php } else { ?><li class="active"><?php echo $breadcrumb['text']; ?></li><?php } ?>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php echo $content_top; ?>
      <?php if ($this->config->get('mmr_quickorder_enabled')&&$this->config->get('mmr_quickorder_fields')) {$this->language->load('module/mmr_quickorder'); $mmr_qorder = true;} else {$mmr_qorder = false;}; if ($this->config->get('mmr_common_addtocart_hide_enabled')&&$quantity<1) {$mmr_buyhide = true;} else {$mmr_buyhide = false;}; ?>
      <?php if ($column_left && $column_right) { $mmr_cols = 2; } elseif ($column_left || $column_right) { $mmr_cols = 1; } else { $mmr_cols = 0; } ?>
      <?php if ($this->config->get('mmr_timer_enabled')&&$mmr_timer_date_end) { ?>
      <div class="row mmr_timer_container">
        <div class="col-lg-10 col-lg-push-1 col-sm-12">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title text-center"><?php if ($this->config->get('mmr_timer_title')) $mmr_timer_title = $this->config->get('mmr_timer_title'); echo isset($mmr_timer_title[$this->config->get('config_language_id')]) ? $mmr_timer_title[$this->config->get('config_language_id')] : ''; ?> <?php if ($this->config->get('mmr_timer_title_date_enabled')) { ?><?php echo $mmr_timer_date_end; ?><?php } ?></h4>
            </div>
            <div class="panel-body text-center">
              <div class="mmr_timer_description">
                <?php if ($this->config->get('mmr_timer_text')) $mmr_timer_text = $this->config->get('mmr_timer_text'); echo isset($mmr_timer_text[$this->config->get('config_language_id')]) ? $mmr_timer_text[$this->config->get('config_language_id')] : ''; ?> <a href="route=information/information&amp;information_id=<?php if ($this->config->get('mmr_timer_link_id')) echo $this->config->get('mmr_timer_link_id'); ?>" data-to="index.php?route=information/information/info&amp;information_id=<?php if ($this->config->get('mmr_timer_link_id')) echo $this->config->get('mmr_timer_link_id'); ?>" class="colorbox_popup""><?php if ($this->config->get('mmr_timer_text_link')) $mmr_timer_text_link = $this->config->get('mmr_timer_text_link'); echo isset($mmr_timer_text_link[$this->config->get('config_language_id')]) ? $mmr_timer_text_link[$this->config->get('config_language_id')] : ''; ?></a>
              </div>
              <div class="mmr_timer hidden-xxs"></div>
              <div class="text-neutral hidden-xxs"><small><?php if ($this->config->get('mmr_timer_text_days')) $mmr_timer_text_days = $this->config->get('mmr_timer_text_days'); echo isset($mmr_timer_text_days[$this->config->get('config_language_id')]) ? $mmr_timer_text_days[$this->config->get('config_language_id')] : ''; ?></small></div><div class="text-neutral hidden-xxs"><small><?php if ($this->config->get('mmr_timer_text_hours')) $mmr_timer_text_hours = $this->config->get('mmr_timer_text_hours'); echo isset($mmr_timer_text_hours[$this->config->get('config_language_id')]) ? $mmr_timer_text_hours[$this->config->get('config_language_id')] : ''; ?></small></div><div class="text-neutral hidden-xxs"><small><?php if ($this->config->get('mmr_timer_text_minutes')) $mmr_timer_text_minutes = $this->config->get('mmr_timer_text_minutes'); echo isset($mmr_timer_text_minutes[$this->config->get('config_language_id')]) ? $mmr_timer_text_minutes[$this->config->get('config_language_id')] : ''; ?></small></div><div class="text-neutral hidden-xxs"><small><?php if ($this->config->get('mmr_timer_text_seconds')) $mmr_timer_text_seconds = $this->config->get('mmr_timer_text_seconds'); echo isset($mmr_timer_text_seconds[$this->config->get('config_language_id')]) ? $mmr_timer_text_seconds[$this->config->get('config_language_id')] : ''; ?></small></div>
              <div><br>
                <span class="text-neutral"><?php if ($this->config->get('mmr_timer_text_limited')) $mmr_timer_text_limited = $this->config->get('mmr_timer_text_limited'); echo isset($mmr_timer_text_limited[$this->config->get('config_language_id')]) ? $mmr_timer_text_limited[$this->config->get('config_language_id')] : ''; ?></span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php } ?>
      <div class="row row-product pos-10">
        <div class="col-sm-12">
          <h1><span itemprop="name"><?php echo $heading_title; ?></span><?php if ($this->config->get('mmr_product_h1_meta_enabled')&&$this->document->getDescription()) { ?> <small><?php echo $this->document->getDescription(); ?></small><?php } ?> <?php if ($this->config->get('mmr_product_h1_code_enabled')) { ?><?php $mmr_product_h1_code_field=$this->config->get('mmr_product_h1_code_field'); if (${$mmr_product_h1_code_field}) { ?> <small>(<?php $mmr_common_product_code_caption = $this->config->get('mmr_common_product_code_caption'); ?><?php echo html_entity_decode($mmr_common_product_code_caption[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?> <?php echo ${$mmr_product_h1_code_field}; ?>)</small><?php } ?><?php } ?></h1>
          <?php if ($this->config->get('mmr_savings_enabled')&&$mmr_savings) { ?><?php $mmr_savings_text = $this->config->get('mmr_savings_text'); ?><span class="savings"><?php echo isset($mmr_savings_text[$this->config->get('config_language_id')]) ? $mmr_savings_text[$this->config->get('config_language_id')] : ''; ?> <?php echo $mmr_savings; ?></span><?php } ?>
        </div>
        <div class="<?php if ($mmr_cols == 0) { echo 'col-sm-4'; } else {echo 'col-sm-5';}  ?>">
          <?php if ($thumb || $images) { ?>
          <div class="thumbnails text-center">
            <?php if ($thumb) { ?>
              <?php if ($this->config->get('mmr_stickers_enabled')) { ?>
                <?php $mmr_stickers = $this->config->get('mmr_stickers'); ?>
                <?php foreach ($mmr_stickers as $key => $mmr_sticker) { ?>
                  <?php if ($mmr_sticker['enabled']) { ?>
                    <?php if ( (($key==1)&&$rating) || ((($key==2)||($key==7)||($key==8)||($key==9))&&isset(${$mmr_sticker['limit']})&&${$mmr_sticker['limit']}) || (($key==3)&&$special) || (($key==4)&&isset($viewed)&&$viewed>=$mmr_sticker['limit']) || (($key==5)&&isset($date_available)&&(round((strtotime(date("Y-m-d"))-strtotime($date_available))/86400))<=$mmr_sticker['limit']) || (($key==6)&&$rating&&$rating>=$mmr_sticker['limit']) ) { ?>
                    <div class="sticker sticker-<?php echo $key; ?>">
                      <div <?php if ($mmr_stickers[1]['enabled']&&$key>1&&$rating) { echo "class='sticker-right'"; } ?> >
                        <div class="fa-stack fa-2x">
                          <i class="fa fa-<?php echo $mmr_sticker['icon']; ?> fa-stack-2x"></i>
                          <i class="fa fa-stack-1x">
                            <?php if ($key==1) { ?>
                            <?php echo $rating; ?><small>/5</small>
                            <?php } else { ?>
                            <?php echo isset($mmr_sticker['title'][$this->config->get('config_language_id')]) ? $mmr_sticker['title'][$this->config->get('config_language_id')] : ''; ?>
                            <?php } ?>
                          </i>
                        </div>
                        <div class="sticker-caption">
                          <?php echo isset($mmr_sticker['caption'][$this->config->get('config_language_id')]) ? $mmr_sticker['caption'][$this->config->get('config_language_id')] : ''; ?>
                        </div>
                      </div>
                    </div>
                    <?php if ($key>1) break; ?>
                  <?php } ?>
                  <?php } ?>
                <?php } ?>
              <?php } ?>
            <div class="<?php if (!$this->config->get('mmr_product_gallery_type')||$this->config->get('mmr_product_gallery_type')=='colorbox') { ?>colorbox<?php } else if ($this->config->get('mmr_product_gallery_type')=='photobox') { ?>photobox<?php } ?>">
              <a href="<?php echo $popup; ?>" class="thumbnail <?php if ($this->config->get('mmr_product_gallery_type')=='fancybox') { ?>fancybox" data-rel="fancybox<?php } ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" itemprop="image" /></a>
              <?php if ($this->config->get('mmr_product_sharing_enabled')||$this->config->get('mmr_product_sharing_yandex_enabled')||$this->config->get('mmr_product_sharing_pluso_enabled')||$this->config->get('mmr_product_sharing_custom_enabled')) { ?>
              <div class="product-sharing img-thumbnail-transparent hidden-xs">
                <?php if ($this->config->get('mmr_product_sharing_enabled')) { ?>
                <div class="addthis_sharing_toolbox"></div>
                <script type="text/javascript">
                  setTimeout(function(){initAddThis()},<?php echo $this->config->get('mmr_product_sharing_loading_delay'); ?>);
                  function initAddThis() {addthis.init();$('.addthis_sharing_toolbox').css({opacity: "0"});$('.addthis_sharing_toolbox').animate({opacity: "1"}, 2000);}
                </script>
                <?php } ?>
                <?php if ($this->config->get('mmr_product_sharing_yandex_enabled')) { ?>
                <script type="text/javascript" src="//yastatic.net/share/share.js" charset="utf-8"></script><div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="small" data-yashareQuickServices="vkontakte,facebook,twitter,odnoklassniki,moimir" data-yashareTheme="counter"></div>
                <?php } ?>
                <?php if ($this->config->get('mmr_product_sharing_pluso_enabled')) { ?>
                <script type="text/javascript">(function() {
                    if (window.pluso)if (typeof window.pluso.start == "function") return;
                    if (window.ifpluso==undefined) { window.ifpluso = 1;
                      var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
                      s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
                      s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
                      var h=d[g]('body')[0];
                      h.appendChild(s);
                    }})();</script>
                <div class="pluso" data-background="transparent" data-options="small,square,line,horizontal,nocounter,theme=04" data-services="vkontakte,odnoklassniki,facebook,twitter,moimir,print"></div>
                <?php } ?>
                <?php if ($this->config->get('mmr_product_sharing_custom_enabled')) { ?>
                <?php echo html_entity_decode($this->config->get('mmr_product_sharing_custom'), ENT_QUOTES, 'UTF-8'); ?>
                <?php } ?>
              </div>
              <?php } ?>
            </div>
            <?php } ?>
          </div>
          <?php } ?>
        </div>
        <div class="<?php if ($mmr_cols == 0) { echo 'col-sm-8'; } else {echo 'col-sm-7';}  ?>" id="product-controls">
          <div>
            <div class="stock-price-buttons">
              <div class="stock<?php if ($quantity<=0) { ?> outofstock<?php } ?>">
                <?php if (!$this->config->get('mmr_common_stock_availability_hidden')) { ?><?php echo $text_stock; ?> <?php } ?><?php echo $stock; ?>
              </div>
              <?php if ($price) { ?>
              <div class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
              <meta itemprop="priceCurrency" content="<?php echo $this->currency->getCode(); ?>" />
              <meta itemprop="price" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($special ? $special : $price)), '.'); ?>" />
              <link itemprop = "availability" href = "http://schema.org/<?php echo ($quantity>0 ? "InStock" : "OutOfStock") ?>" />
              <span class="price-ldot">&bull;</span>
              <?php if (!$special) { ?>
                <?php echo $price; ?>
              <?php } else { ?>
                <span class="price-new"><?php echo $special; ?></span> <span class="price-old"><small><?php echo $price; ?></small></span>
              <?php } ?>
              <span class="price-rdot">&bull;</span>
              </div>
              <?php } ?>
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <div class="btn-group btn-group-lg">
                <button type="button" data-toggle="tooltip" <?php if ($mmr_buyhide) { ?>disabled="disabled" <?php } ?>id="button-cart" class="btn btn-primary" title="<?php echo $button_cart; ?>"><i class="fa fa-shopping-cart"></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <span class="<?php if ($mmr_cols == 2) { echo 'hidden-md hidden-sm hidden-xxs'; } else {echo 'hidden-xxs';}  ?> "><?php echo $button_cart; ?></span><?php } ?></button>
                <?php if (!$mmr_buyhide) { ?><input type="number" min="1" data-toggle="tooltip" class="form-control input-lg <?php if ($mmr_cols == 2) { echo 'hidden-sm hidden-xxs'; } else {echo 'hidden-xxs';}  ?>" name="quantity" size="2" value="<?php echo $minimum; ?>" title="<?php echo $text_qty; ?>" /><?php } ?>
                <?php if ($mmr_qorder&&!$mmr_buyhide) { ?>
                <button type="button" data-toggle="tooltip" class="btn btn-default btn-quickorder" title="<?php echo $this->language->get('text_mmr_quickorder_button'); ?>" data-to="#quickorder_form"><i class="fa fa-flip-horizontal fa-reply-all"></i></button>
                <?php } ?>
                <?php if (!$this->config->get('mmr_common_btn_wishlist_hidden')) { ?><button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button><?php } ?>
                <?php if (!$this->config->get('mmr_common_btn_compare_hidden')) { ?><button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product_id; ?>');"><i class="fa fa-bar-chart-o"></i></button><?php } ?>
              </div>
            </div>
            <div class="images">
              <?php if ($images) { ?>
              <?php foreach ($images as $key => $image) { ?>
              <div class="<?php if ($this->config->get('mmr_product_images_hidden')!=1&&$this->config->get('mmr_product_images_hide_limit')&&$key>=$this->config->get('mmr_product_images_hide_limit')) { ?>collapse<?php } ?> image-additional img-thumbnail-transparent <?php if (!$this->config->get('mmr_product_gallery_type')||$this->config->get('mmr_product_gallery_type')=='colorbox') { ?>colorbox<?php } else if ($this->config->get('mmr_product_gallery_type')=='photobox') { ?>photobox<?php } ?>"><a class="thumbnail <?php if ($this->config->get('mmr_product_gallery_type')=='fancybox') { ?>fancybox" data-rel="fancybox<?php } ?>" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
              <?php } ?>
              <?php if ($this->config->get('mmr_product_images_hidden')!=1&&$this->config->get('mmr_product_images_hide_limit')&&$key>=$this->config->get('mmr_product_images_hide_limit')) { ?>
              <div class="images-expand">
                <a href="javascript:void(0);" onclick="$('.images .collapse').css('display', 'inline-block');$('.images .images-expand').hide();" title="<?php echo $this->language->get('text_image'); ?> (+<?php echo count($images)-$this->config->get('mmr_product_images_hide_limit'); ?>)"><?php echo $this->language->get('text_image'); ?> (+<?php echo count($images)-$this->config->get('mmr_product_images_hide_limit'); ?>) <span class="caret"></span></a>
              </div>
              <?php } ?>
              <?php } ?>
            </div>
          </div>
          <?php if ($minimum > 1||$reward||$tax||$points||$discounts) { ?>
          <ul class="list-unstyled">
            <?php if ($minimum > 1) { ?>
              <li><?php echo $text_minimum; ?></li>
            <?php } ?>
            <?php if ($reward) { ?>
              <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <?php if ($price) { ?>
              <?php if ($tax) { ?>
                <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
              <?php } ?>
              <?php if ($points) { ?>
                <li><?php echo $text_points; ?> <?php echo $points; ?></li>
              <?php } ?>
              <?php if ($discounts) { ?>
                <?php foreach ($discounts as $discount) { ?>
                  <li><?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?></li>
                <?php } ?>
              <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <?php if ($options) { ?>
          <div class="panel panel-default">
            <div class="panel-body options">
              <?php if (($this->config->get('mmr_product_options_hidden')!=1)&&$this->config->get('mmr_product_options_hide_limit')&&(count($options)>$this->config->get('mmr_product_options_hide_limit'))) { ?>
                <div class="options-expand">
                  <a href="javascript:void(0);" onclick="$('.options .collapse').show();$('.options .options-expand').hide();" title="<?php echo $text_option; ?>"><?php echo $text_option; ?> <span class="caret"></span></a>
                </div>
              <?php } ?>
              <div class="<?php if (($this->config->get('mmr_product_options_hidden')!=1)&&$this->config->get('mmr_product_options_hide_limit')&&(count($options)>$this->config->get('mmr_product_options_hide_limit'))) { ?>collapse<?php } ?>">
                <?php foreach ($options as $option) { ?>
                <?php if ($option['type'] == 'select') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                  <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                    <option value=""><?php echo $text_select; ?></option>
                    <?php foreach ($option['option_value'] as $option_value) { ?>
                    <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                      <?php if ($option_value['price']) { ?>
                      (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                      <?php } ?>
                    </option>
                    <?php } ?>
                  </select>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'radio') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label"><?php echo $option['name']; ?></label>
                  <div id="input-option<?php echo $option['product_option_id']; ?>">
                    <?php foreach ($option['option_value'] as $option_value) { ?>
                    <div class="radio">
                      <label>
                        <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                        <?php echo $option_value['name']; ?>
                        <?php if ($option_value['price']) { ?>
                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                        <?php } ?>
                      </label>
                    </div>
                    <?php } ?>
                  </div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'checkbox') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label"><?php echo $option['name']; ?></label>
                  <div id="input-option<?php echo $option['product_option_id']; ?>">
                    <?php foreach ($option['option_value'] as $option_value) { ?>
                    <div class="checkbox">
                      <label>
                        <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                        <?php echo $option_value['name']; ?>
                        <?php if ($option_value['price']) { ?>
                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                        <?php } ?>
                      </label>
                    </div>
                    <?php } ?>
                  </div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'image') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label"><?php echo $option['name']; ?></label>
                  <div id="input-option<?php echo $option['product_option_id']; ?>">
                    <?php foreach ($option['option_value'] as $option_value) { ?>
                    <div class="radio">
                      <label>
                        <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                        <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                        <?php if ($option_value['price']) { ?>
                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                        <?php } ?>
                      </label>
                    </div>
                    <?php } ?>
                  </div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'text') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'textarea') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                  <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="3" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['option_value']; ?></textarea>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'file') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label"><?php echo $option['name']; ?></label>
                  <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                  <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'date') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" data-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control date" />
                  </div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'datetime') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control datetime" />
                  </div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'time') { ?>
                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" data-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control time" />
                  </div>
                </div>
                <?php } ?>
                <?php } ?>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
      <?php if ($this->config->get('mmr_advantages_enabled')&&$this->config->get('mmr_advantages')&&$this->config->get('mmr_advantages_display_product')) { ?>
      <div class="row advantages text-center pos-13">
      <?php $mmr_advantages = $this->config->get('mmr_advantages'); ?>
      <?php foreach ($mmr_advantages as $key => $mmr_advantage) { ?><?php if ($mmr_advantage['link_id']) { ?><a href="route=information/information&amp;information_id=<?php echo $mmr_advantage['link_id']; ?>" data-to="index.php?route=information/information/info&amp;information_id=<?php echo $mmr_advantage['link_id']; ?>" class="colorbox_popup img-thumbnail-transparent r<?php echo count($mmr_advantages); ?>"><?php } else { ?><div class="img-thumbnail-transparent r<?php echo count($mmr_advantages); ?>"><?php } ?><i class="fa fa-2x fa-<?php echo $mmr_advantage['icon']; ?>"></i><span><?php echo isset($mmr_advantage['text'][$this->config->get('config_language_id')]) ? $mmr_advantage['text'][$this->config->get('config_language_id')] : ''; ?></span><?php if ($mmr_advantage['link_id']) { ?></a><?php } else { ?></div><?php } ?><?php } ?>
      </div>
      <?php } ?>
      <div class="row tabs pos-11">
        <div class="col-xs-12">
          <?php if ($this->config->get('mmr_product_tabs_disabled')!=1) { ?>
          <ul class="htabs nav nav-<?php if ($this->config->get('mmr_product_tabs_mode')) { ?>tabs<?php } else { ?>pills<?php } ?> nav-justified">
            <?php if ($this->config->get('mmr_product_description_disabled')!=1) { ?>
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php } ?>
            <?php if ($this->config->get('mmr_product_specification_disabled')!=1) { ?>
            <?php if ($attribute_groups||$this->config->get('mmr_product_specification_model_disabled')!=1||$this->config->get('mmr_product_specification_brand_disabled')!=1||$this->config->get('mmr_product_specification_weight_disabled')!=1||$this->config->get('mmr_product_specification_dimensions_disabled')!=1) { ?>
            <li<?php if ($this->config->get('mmr_product_description_disabled')==1) { ?> class="active"<?php } ?>><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab" class="text-nowrap"><?php echo $tab_review; ?></a></li>
            <?php } ?>
            <?php if ($this->config->get('mmr_product_tabs_additional')) { ?>
              <?php $mmr_product_tabs_additional = $this->config->get('mmr_product_tabs_additional'); ?>
              <?php foreach ($mmr_product_tabs_additional as $key => $mmr_product_tab_additional) { ?>
                <?php if ($mmr_product_tab_additional['status']==1) { ?>
                <li><a href="#tab-additional-<?php echo $key; ?>" data-toggle="tab" class="text-nowrap"><?php echo isset($mmr_product_tab_additional['title'][$this->config->get('config_language_id')]) ? $mmr_product_tab_additional['title'][$this->config->get('config_language_id')] : ''; ?></a></li>
                <?php } ?>
              <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <div class="tab-content">
            <?php if ($this->config->get('mmr_product_description_disabled')!=1) { ?>
            <div class="tab-pane active" id="tab-description">
              <h2><?php echo $tab_description; ?></h2>
              <div itemprop="description"><?php echo $description; ?></div>
              <?php if (!$mmr_buyhide&&($this->config->get('mmr_product_description_cart_button_disabled')!=1||($mmr_qorder&&$this->config->get('mmr_quickorder_description_button_disabled')!=1))) { ?>
              <div class="text-center">
                <div class="btn-group btn-group-lg additional-buttons">
                  <?php if ($this->config->get('mmr_product_description_cart_button_disabled')!=1&&$mmr_qorder&&$this->config->get('mmr_quickorder_description_button_disabled')!=1) { ?>
                  <button type="button" onclick="$('#button-cart').click();" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <span class="<?php if ($mmr_cols == 2) { echo 'hidden-md hidden-sm hidden-xxs';} else {echo 'hidden-xxs';}  ?>"><?php echo $button_cart; ?></span><?php } ?></button><input type="number" min="1" data-toggle="tooltip" class="form-control input-lg middle-input hidden-xxs" name="quantities" size="2" value="<?php echo $minimum; ?>" title="<?php echo $text_qty; ?>" />
                  <?php } else if ($this->config->get('mmr_product_description_cart_button_disabled')!=1) { ?>
                  <button type="button" onclick="$('#button-cart').click();" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <span><?php echo $button_cart; ?></span><?php } ?></button><input type="number" min="1" data-toggle="tooltip" class="form-control input-lg last-input" name="quantities" size="2" value="<?php echo $minimum; ?>" title="<?php echo $text_qty; ?>" />
                  <?php } ?>
                  <?php if ($mmr_qorder&&$this->config->get('mmr_quickorder_description_button_disabled')!=1) { ?>
                  <a href="javascript:void(0);" data-toggle="tooltip" title="<?php echo $this->language->get('text_mmr_quickorder_button'); ?>" class="btn btn-default btn-quickorder"><i class="fa fa-flip-horizontal fa-reply-all"></i><?php if (!$this->config->get('mmr_quickorder_buy_caption_hidden')) { ?> <span><?php echo $this->language->get('text_mmr_quickorder_button'); ?></span><?php } ?></a>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if ($this->config->get('mmr_product_specification_disabled')!=1) { ?>
            <?php if ($attribute_groups||$this->config->get('mmr_product_specification_model_disabled')!=1||$this->config->get('mmr_product_specification_brand_disabled')!=1||$this->config->get('mmr_product_specification_weight_disabled')!=1||$this->config->get('mmr_product_specification_dimensions_disabled')!=1) { ?>
            <div class="tab-pane <?php if ($this->config->get('mmr_product_tabs_disabled')==1||$this->config->get('mmr_product_description_disabled')==1) { ?>active<?php } ?>" id="tab-specification">
              <h2><?php echo $tab_attribute; ?></h2>
              <table class="table <?php if ($this->config->get('mmr_product_specification_table_hover')!=1) { ?>table-hover<?php } ?> <?php if ($this->config->get('mmr_product_specification_table_bordered')) { ?>table-bordered<?php } ?> <?php if ($this->config->get('mmr_product_specification_row_bordered')) { ?>table-row-bordered<?php } ?> <?php if ($this->config->get('mmr_product_specification_table_striped')) { ?>table-striped<?php } ?> <?php if ($this->config->get('mmr_product_specification_table_condensed')) { ?>table-condensed<?php } ?>">
                <?php if ($this->config->get('mmr_product_specification_model_disabled')!=1||$this->config->get('mmr_product_specification_brand_disabled')!=1||$this->config->get('mmr_product_specification_weight_disabled')!=1||$this->config->get('mmr_product_specification_dimensions_disabled')!=1) { ?>
                <?php if ($this->config->get('mmr_product_specification_headers_disabled')!=1) { ?>
                <tbody>
                <tr>
                  <th colspan="2"><strong><?php echo $heading_title; ?></strong></th>
                </tr>
                </tbody>
                <?php } ?>
                <tbody>
                <?php if ($this->config->get('mmr_product_specification_model_disabled')!=1) { ?>
                <tr>
                  <td><?php echo $text_model; ?></td>
                  <td itemprop="model"><?php echo $model; ?></td>
                </tr>
                <?php } ?>
                <?php if ($this->config->get('mmr_product_specification_brand_disabled')!=1) { ?>
                <tr>
                  <td><?php echo $text_manufacturer; ?></td>
                  <td><a href="<?php echo $manufacturers; ?>" itemprop="manufacturer"><?php echo $manufacturer; ?></a></td>
                </tr>
                <?php } ?>
                <?php if ($weight||$length||$width||$height) { ?>
                <?php $this->language->load('product/compare');?>
                <?php if ($this->config->get('mmr_product_specification_weight_disabled')!=1&&$weight) { ?>
                <tr>
                  <td><?php echo $this->language->get('text_weight'); ?></td>
                  <td><?php echo $weight; ?></td>
                </tr>
                <?php } ?>
                <?php if ($this->config->get('mmr_product_specification_dimensions_disabled')!=1&&($length||$width||$height)) { ?>
                <tr>
                  <td><?php echo $this->language->get('text_dimension'); ?></td>
                  <td><?php echo $length; ?> x <?php echo $width; ?> x <?php echo $height; ?></td>
                </tr>
                <?php } ?>
                <?php } ?>
                </tbody>
                <?php } ?>
                <?php if ($attribute_groups) { ?>
                  <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <?php if ($this->config->get('mmr_product_specification_headers_disabled')!=1) { ?>
                    <tbody>
                      <tr>
                          <th colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></th>
                      </tr>
                    </tbody>
                    <?php } ?>
                    <tbody>
                    <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                    <tr>
                      <td><?php echo $attribute['name']; ?></td>
                      <td><?php echo $attribute['text']; ?></td>
                    </tr>
                    <?php } ?>
                    </tbody>
                  <?php } ?>
                <?php } ?>
              </table>
              <?php if (!$mmr_buyhide&&($this->config->get('mmr_product_specification_cart_button_disabled')!=1||($mmr_qorder&&$this->config->get('mmr_quickorder_specification_button_disabled')!=1))) { ?>
              <div class="text-center">
                <div class="btn-group btn-group-lg additional-buttons">
                  <?php if ($this->config->get('mmr_product_specification_cart_button_disabled')!=1&&$mmr_qorder&&$this->config->get('mmr_quickorder_specification_button_disabled')!=1) { ?>
                  <button type="button" onclick="$('#button-cart').click();" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <span class="<?php if ($mmr_cols == 2) { echo 'hidden-md hidden-sm hidden-xxs';} else {echo 'hidden-xxs';}  ?>"><?php echo $button_cart; ?></span><?php } ?></button><input type="number" min="1" data-toggle="tooltip" class="form-control input-lg middle-input hidden-xxs" name="quantities" size="2" value="<?php echo $minimum; ?>" title="<?php echo $text_qty; ?>" />
                  <?php } else if ($this->config->get('mmr_product_specification_cart_button_disabled')!=1) { ?>
                  <button type="button" onclick="$('#button-cart').click();" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <span><?php echo $button_cart; ?></span><?php } ?></button><input type="number" min="1" data-toggle="tooltip" class="form-control input-lg last-input" name="quantities" size="2" value="<?php echo $minimum; ?>" title="<?php echo $text_qty; ?>" />
                  <?php } ?>
                  <?php if ($mmr_qorder&&$this->config->get('mmr_quickorder_specification_button_disabled')!=1) { ?>
                  <a href="javascript:void(0);" data-toggle="tooltip" title="<?php echo $this->language->get('text_mmr_quickorder_button'); ?>" class="btn btn-default btn-quickorder"><i class="fa fa-flip-horizontal fa-reply-all"></i><?php if (!$this->config->get('mmr_quickorder_buy_caption_hidden')) { ?> <span><?php echo $this->language->get('text_mmr_quickorder_button'); ?></span><?php } ?></a>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
            </div>
            <?php } ?>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane <?php if ($this->config->get('mmr_product_tabs_disabled')==1) { ?>active<?php } ?>" id="tab-review"<?php if($rating) { ?> itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"<?php } ?>>
              <form>
                <h2><?php echo $this->language->get('button_reviews'); ?><?php if($rating) { ?> (<span itemprop = "reviewCount"><?php echo preg_replace('/[^0-9]/', '', $tab_review); ?></span>)<?php } ?></h2>
                <?php if($rating) { ?><h4><?php echo $entry_rating; ?> <span itemprop = "ratingValue"><?php echo $rating; ?></span>/5</h4><?php } ?>
                <div id="review"></div>
                <div class="clearfix"></div>
                <br />
                <?php if ($this->config->get('mmr_product_review_write')!=1) { ?>
                  <div class="panel panel-default">
                    <div class="panel-heading text-center">
                      <?php echo $text_write; ?>
                    </div>
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-lg-4 col-md-5 col-lg-push-8 col-md-push-7">
                          <div class="form-group required">
                            <label class="control-label"><?php echo $entry_rating; ?><!--[if lt IE 9]> (1..5)<![endif]--></label>
                            <input type="number" data-max="5" data-min="1" name="mmr_rating" class="mmr_rating form-control" />
                          </div>
                        </div>
                        <div class="col-lg-offset-1 col-lg-7 col-md-7 col-lg-pull-4 col-md-pull-5">
                          <div class="form-group required">
                            <label for="input-name" class="control-label"><?php echo $entry_name; ?></label>
                            <div class="">
                              <input type="text" class="form-control" id="input-name" name="name" value="" />
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-offset-1 <?php if ($recaptcha) { ?>col-lg-10 col-md-12<?php } else { ?>col-lg-7 col-md-7<?php } ?>">
                          <div class="form-group required">
                            <label for="input-review" class="control-label"><?php echo $entry_review; ?></label>
                            <div>
                              <textarea class="form-control" id="input-review" name="text"></textarea>
                            </div>
                          </div>
                          <?php if ($recaptcha) { ?>
                          <div class="form-group required">
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
                            </div>
                          </div>
                          <?php } else { ?>
                        </div>
                        <div class="col-lg-4 col-md-5">
                          <div class="form-group required">
                            <label class="control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
                            <div class="captcha">
                              <div></div>
                              <img src="index.php?route=product/product/captcha" alt="" id="captcha" />
                              <input type="text" name="captcha" value="" id="input-captcha" class="form-control" />
                            </div>
                          </div>
                          <?php } ?>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-12 text-center">
                          <button type="button" id="button-review" class="btn btn-default btn-lg <?php if ($recaptcha) { ?>recaptcha-button-review<?php } ?>"><i class="fa fa-pencil"></i> <span><?php echo $button_continue; ?></span></button>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php } ?>
              </form>
              <?php if (!$mmr_buyhide&&($this->config->get('mmr_product_review_cart_button_disabled')!=1||($mmr_qorder&&$this->config->get('mmr_quickorder_review_button_disabled')!=1))) { ?>
              <div class="text-center">
                <div class="btn-group btn-group-lg additional-buttons">
                  <?php if ($this->config->get('mmr_product_review_cart_button_disabled')!=1&&$mmr_qorder&&$this->config->get('mmr_quickorder_review_button_disabled')!=1) { ?>
                  <button type="button" onclick="$('#button-cart').click();" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <span class="<?php if ($mmr_cols == 2) { echo 'hidden-md hidden-sm hidden-xxs';} else {echo 'hidden-xxs';}  ?>"><?php echo $button_cart; ?></span><?php } ?></button><input type="number" min="1" data-toggle="tooltip" class="form-control input-lg middle-input hidden-xxs" name="quantities" size="2" value="<?php echo $minimum; ?>" title="<?php echo $text_qty; ?>" />
                  <?php } else if ($this->config->get('mmr_product_review_cart_button_disabled')!=1) { ?>
                  <button type="button" onclick="$('#button-cart').click();" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <span><?php echo $button_cart; ?></span><?php } ?></button><input type="number" min="1" data-toggle="tooltip" class="form-control input-lg last-input" name="quantities" size="2" value="<?php echo $minimum; ?>" title="<?php echo $text_qty; ?>" />
                  <?php } ?>
                  <?php if ($mmr_qorder&&$this->config->get('mmr_quickorder_review_button_disabled')!=1) { ?>
                  <a href="javascript:void(0);" data-toggle="tooltip" title="<?php echo $this->language->get('text_mmr_quickorder_button'); ?>" class="btn btn-default btn-quickorder"><i class="fa fa-flip-horizontal fa-reply-all"></i><?php if (!$this->config->get('mmr_quickorder_buy_caption_hidden')) { ?> <span><?php echo $this->language->get('text_mmr_quickorder_button'); ?></span><?php } ?></a>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if ($this->config->get('mmr_product_tabs_additional')) { ?>
              <?php $mmr_product_tabs_additional = $this->config->get('mmr_product_tabs_additional'); ?>
              <?php foreach ($mmr_product_tabs_additional as $key => $mmr_product_tab_additional) { ?>
                <?php if ($mmr_product_tab_additional['status']==1) { ?>
                  <div class="tab-pane <?php if ($this->config->get('mmr_product_tabs_disabled')==1) { ?>active<?php } ?>" id="tab-additional-<?php echo $key; ?>">
                    <script type="text/javascript"><!--
                      $(function() { $('#tab-additional-<?php echo $key; ?>').load('index.php?route=information/information/info&information_id=<?php echo $mmr_product_tab_additional['link_id']; ?>');});
                      //--></script>
                  </div>
                <?php } ?>
              <?php } ?>
            <?php } ?>
          </div>
        </div>
      </div>
      <?php if ($products) { ?>
      <br />
      <h2><?php echo $tab_related; ?></h2>
      <div class="row products product-grid">
        <div>
          <?php foreach ($products as $product) { ?>
          <div class="product-layout">
            <div class="product-block product-block-detailed">
              <div class="image">
                <?php if ($this->config->get('mmr_stickers_enabled')) { ?>
                  <?php $mmr_stickers = $this->config->get('mmr_stickers'); ?>
                  <?php foreach ($mmr_stickers as $key => $mmr_sticker) { ?>
                    <?php if ($mmr_sticker['enabled']) { ?>
                      <?php if ( (($key==1)&&$product['rating']) || ((($key==2)||($key==7)||($key==8)||($key==9))&&isset($product[$mmr_sticker['limit']])&&$product[$mmr_sticker['limit']]) || (($key==3)&&$product['special']) || (($key==4)&&isset($product['viewed'])&&$product['viewed']>=$mmr_sticker['limit']) || (($key==5)&&isset($product['date_available'])&&(round((strtotime(date("Y-m-d"))-strtotime($product['date_available']))/86400))<=$mmr_sticker['limit']) || (($key==6)&&$product['rating']&&$product['rating']>=$mmr_sticker['limit']) ) { ?>
                        <div class="sticker sticker-<?php echo $key; ?>">
                          <div<?php if ($mmr_stickers[1]['enabled']&&$key>1&&$product['rating']) { echo " class='sticker-right'"; } ?>>
                            <div class="fa-stack fa-2x">
                              <i class="fa fa-<?php echo $mmr_sticker['icon']; ?> fa-stack-2x"></i>
                              <i class="fa fa-stack-1x">
                                <?php if ($key==1) { ?>
                                <?php echo $product['rating']; ?><small>/5</small>
                                <?php } else { ?>
                                  <?php echo isset($mmr_sticker['title'][$this->config->get('config_language_id')]) ? $mmr_sticker['title'][$this->config->get('config_language_id')] : ''; ?>
                                <?php }  ?>
                              </i>
                            </div>
                            <div class="sticker-caption">
                                <?php echo isset($mmr_sticker['caption'][$this->config->get('config_language_id')]) ? $mmr_sticker['caption'][$this->config->get('config_language_id')] : ''; ?>
                            </div>
                          </div>
                        </div>
                        <?php if ($key>1) break; ?>
                      <?php } ?>
                    <?php } ?>
                  <?php } ?>
                <?php } ?>
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive img-thumbnail-transparent" /></a>
              </div>
              <div class="name">
                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                <?php if ($this->config->get('mmr_savings_enabled')&&$product['mmr_savings']) { ?><?php $mmr_savings_text = $this->config->get('mmr_savings_text'); ?><span class="savings"><?php echo isset($mmr_savings_text[$this->config->get('config_language_id')]) ? $mmr_savings_text[$this->config->get('config_language_id')] : ''; ?> <?php echo $product['mmr_savings']; ?></span><?php } ?>
              </div>
              <div class="price-buttons">
                <div class="buy-buttons">
                  <div class="btn-group">
                    <button data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary" type="button" <?php if ($this->config->get('mmr_common_addtocart_hide_enabled')&&$product['quantity']<1) { ?>disabled="disabled" <?php } ?>onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php if ($this->config->get('mmr_common_addtocart_hide_enabled')&&$product['quantity']<1) { ?><i class="fa fa-shopping-cart hidden-lg"></i> <span class="hidden-md hidden-sm"><?php echo $product['stock']; ?></span><?php } else { ?><i class="fa fa-shopping-cart"></i> <span class="hidden-md hidden-sm"><?php echo $button_cart; ?></span><?php } ?></button>
                    <?php if (!$this->config->get('mmr_common_btn_wishlist_hidden')) { ?><button class="btn btn-default" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button><?php } ?>
                    <?php if (!$this->config->get('mmr_common_btn_compare_hidden')) { ?><button class="btn btn-default" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><i class="fa fa-bar-chart-o"></i></button><?php } ?>
                  </div>
                </div>
                <?php if ($product['price']) { ?>
                <div class="price">
                  <div>
                    <span class="price-ldot">&bull;</span>
                    <?php if (!$product['special']) { ?>
                    <?php echo $product['price']; ?>
                    <?php } else { ?>
                    <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                    <?php } ?>
                    <span class="price-rdot">&bull;</span>
                  </div>
                </div>
                <?php } ?>
              </div>
              <?php if ($this->config->get('mmr_common_related_stock_enabled')||$this->config->get('mmr_common_related_product_code_enabled')||$product['description']||$product['attribute_groups']||$product['meta_description']) { ?>
              <div class="description">
                <?php if ($this->config->get('mmr_common_related_stock_enabled')||$this->config->get('mmr_common_related_product_code_enabled')) { ?>
                <div class="additional-fields">
                  <?php if ($this->config->get('mmr_common_related_stock_enabled')) { ?><span class="stock<?php if ($product['quantity']<=0) { ?> outofstock<?php } ?>"><?php if (!$this->config->get('mmr_common_stock_availability_hidden')) { ?><b><?php echo $this->language->get('text_stock'); ?></b> <?php } ?><?php echo $product['stock']; ?></span><br /><?php } ?>
                  <?php if ($this->config->get('mmr_common_related_product_code_enabled')) { ?><?php $mmr_common_product_code_caption = $this->config->get('mmr_common_product_code_caption'); ?><?php echo html_entity_decode($mmr_common_product_code_caption[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?> <?php $mmr_common_product_code_field=$this->config->get('mmr_common_product_code_field'); if ($product[$mmr_common_product_code_field]) { ?><?php echo $product[$mmr_common_product_code_field]; ?><?php } ?><?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['meta_description']) { ?><?php echo $product['meta_description']."<br />"; ?><?php } ?>
                <?php if ($product['description']) { ?><?php echo $product['description']."<br />"; ?><?php } ?>
                <?php if ($product['attribute_groups']) { ?>
                <?php $mmr_attributes=''; ?>
                <?php foreach($product['attribute_groups'] as $attribute_group) { ?>
                <?php foreach($attribute_group['attribute'] as $attribute) { ?>
                <?php if (strlen($mmr_attributes)>=$this->config->get('mmr_common_attributes_limit')) break 2; ?>
                <?php $mmr_attributes .= "<b>".$attribute['name']."</b> ".$attribute['text']."&nbsp;".html_entity_decode($this->config->get('mmr_common_attributes_delimiter'), ENT_QUOTES, 'UTF-8')." "; ?>
                <?php } ?>
                <?php } ?>
                <?php echo mb_substr($mmr_attributes, 0, -1-strlen(html_entity_decode($this->config->get('mmr_common_attributes_delimiter'), ENT_QUOTES, 'UTF-8'))); ?>
                <?php } ?>
              </div>
              <?php } ?>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>

<?php if ($mmr_qorder) { ?>
<div class="hidden">
  <div id="quickorder_form">
    <input id="product_title" type="hidden" value="<?php echo $heading_title; ?>">
    <input id="product_price" type="hidden" value="<?php echo ($special ? $special : $price); ?>">
    <input id="product_code" type="hidden" value="<?php if ($this->config->get('mmr_quickorder_product_code_field_enabled')) { $mmr_quickorder_product_code=$this->config->get('mmr_quickorder_product_code_field'); echo ${$mmr_quickorder_product_code}; } else { ?>0<?php } ?>">
    <input id="product_url" type="hidden" value='<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>'>
    <div class="col-sm-12 text-center">
      <?php if ($thumb) { ?><img src="<?php echo $thumb; ?>" class="img-responsive image-additional" alt="<?php echo $heading_title; ?>" /><?php } ?>
    </div>
    <div class="clearfix"></div>
    <div class="col-sm-12 form-group text-center">
      <h4><?php echo $heading_title; ?></h4>
    </div>
    <?php $mmr_quickorder_fields = $this->config->get('mmr_quickorder_fields'); ?>
    <?php foreach($mmr_quickorder_fields as $subKey => $subArray){ if($subArray['status'] != 1){ unset($mmr_quickorder_fields[$subKey]); } } ?>
    <?php $mmr_quickorder_fields = array_values($mmr_quickorder_fields); ?>
    <?php foreach ($mmr_quickorder_fields as $key => $mmr_quickorder_field) { ?>
      <div class="col-sm-<?php if ( ($key == count($mmr_quickorder_fields)-1) && ($key%2==0)) { ?>12<?php } else { ?>6<?php } ?> form-group <?php if ($mmr_quickorder_field['required']) { ?>required<?php } ?>">
        <label for="mmr_quickorder_field<?php echo $key; ?>" class="control-label"><?php echo isset($mmr_quickorder_field['label'][$this->config->get('config_language_id')]) ? $mmr_quickorder_field['label'][$this->config->get('config_language_id')] : ''; ?></label>
        <input type="text" class="form-control" id="mmr_quickorder_field<?php echo $key; ?>">
      </div>
    <?php } ?>
    <div class="clearfix"></div>
    <div class="col-sm-12 form-group" id="quickorder_result"></div>
    <div class="form-group text-center">
      <p>
        <button type="submit" class="btn btn-lg btn-primary"><i class="fa fa-flip-horizontal fa-reply-all"></i> <span><?php echo $this->language->get('text_mmr_quickorder_callback_button'); ?></span></button>
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
  $("input[name='quantities']").keyup(function(){
    document.getElementsByName("quantity")[0].value = $(this).val();
  });
  <?php if ($mmr_qorder) { ?>
  $('.btn-quickorder').colorbox({
    close: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-times'></i></button>",
    href:"#quickorder_form",
    inline: true,
    width:"550px",
    onComplete: function() { $('.btn-quickorder').tooltip('destroy'); $('#cboxLoadingOverlay').remove(); $('#cboxLoadingGraphic').remove(); if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
    onCleanup: function() { $('#quickorder_result').html(''); }
  });
  $("#quickorder_form .btn-primary").click(function(){
    $('#quickorder_result').html('<div class="alert alert-info"><i class="fa fa-spinner fa-spin"></i> <?php echo $this->language->get('text_mmr_quickorder_processing'); ?></div>');
    $('#quickorder_form').colorbox.resize()
    $.post("catalog/view/javascript/moneymaker_quickorder.php",
      { 'product_title': $('#product_title').val(),
        'product_price': $('#product_price').val(),
        'product_code': $('#product_code').val(),
        'product_url': $('#product_url').val(),
        'product_qty': document.getElementsByName('quantity')[0].value,
        'mmr_quickorder_fields[]': [<?php foreach ($mmr_quickorder_fields as $key => $mmr_quickorder_field) { ?>$('#mmr_quickorder_field<?php echo $key; ?>').val(), <?php } ?>],
        'mmr_quickorder_fields_label[]': [<?php foreach ($mmr_quickorder_fields as $mmr_quickorder_field) { ?><?php echo '"'.$mmr_quickorder_field['label'][$this->config->get('mmr_quickorder_mail_language')].'", '; ?><?php } ?>],
        'mmr_quickorder_fields_required[]': [<?php foreach ($mmr_quickorder_fields as $mmr_quickorder_field) { ?><?php echo $mmr_quickorder_field['required'].', '; ?><?php } ?>],
        'email': "<?php echo $this->config->get('config_email'); ?>",
        'email_subject': "<?php echo $this->config->get('config_name')." - ".$this->language->get('text_mmr_quickorder_email_subject')." (".date('Y.m.d H:i').")"; ?>",
        'email_order_received': "<?php echo $this->language->get('text_mmr_quickorder_email_order_received'); ?>",
        'email_order_detail': "<?php echo $this->language->get('text_mmr_quickorder_email_order_detail'); ?>",
        'email_url': "<?php echo $this->language->get('text_mmr_quickorder_email_url'); ?>",
      },
      function (data) {
        if (data == '0') {
          $('#quickorder_result').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $this->language->get('error_mmr_quickorder_fields'); ?></div>');
          $('#quickorder_form').colorbox.resize();
        }
        else {
          $('#quickorder_result').html('<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $this->language->get('text_mmr_quickorder_success'); ?></div>');
          $('#quickorder_form').colorbox.resize();
          $('#quickorder_form .btn-primary').attr('disabled','disabled');
        }
      });
  });
  <?php } ?>
  <?php if ($this->config->get('mmr_timer_enabled')&&$mmr_timer_date_end) { ?>
  $('.mmr_timer').countdown({
    image: 'catalog/view/javascript/jquery/mmr_timer/digits.png',
    digitWidth: 38,
    digitHeight: 55,
    startTime: '<?php echo ($mmr_timer_days < 10)? "0" . $mmr_timer_days : $mmr_timer_days; ?>:<?php echo ($mmr_timer_hours < 10)? "0" . $mmr_timer_hours : $mmr_timer_hours; ?>:<?php echo ($mmr_timer_mins < 10)? "0" . $mmr_timer_mins : $mmr_timer_mins; ?>:<?php echo ($mmr_timer_secs < 10)? "0" . $mmr_timer_secs : $mmr_timer_secs; ?>'
  });
  <?php } ?>
  $('.colorbox a').colorbox({
    next: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-chevron-right'></i></button>",
    previous: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-chevron-left'></i></button>",
    close: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-times'></i></button>",
    rel: "colorbox",
    onOpen: function() {
      $("#colorbox").prepend("<div id='image-appendix'><div class='title hidden-xs'><span><?php echo addslashes($heading_title); ?></span></div><div class='btn-group btn-group-lg hidden-xs additional-buttons'><?php if (!$mmr_buyhide) { ?><button class='btn btn-primary' type='button' title='<?php echo $button_cart; ?>' onclick='$(\"#image-appendix\").remove();$(\"#button-cart\").click();'><i class='fa fa-shopping-cart'></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <?php echo $button_cart; ?><?php } ?></button><input type='number' min='1' class='form-control input-lg' name='quantities' size='2' value='<?php echo $minimum; ?>' title='<?php echo $text_qty; ?>' /><?php if ($mmr_qorder&&$this->config->get('mmr_quickorder_popup_button_disabled')!=1) { ?><a class='btn btn-default' title='<?php echo $this->language->get('text_mmr_quickorder_button'); ?>' onclick='$(\"#image-appendix\").remove();$(\".btn-quickorder\").click();'><i class='fa fa-flip-horizontal fa-reply-all'></i><?php if (!$this->config->get('mmr_quickorder_buy_caption_hidden')) { ?> <span><?php echo $this->language->get('text_mmr_quickorder_button'); ?></span><?php } ?></a><?php } ?><?php } ?><?php if (!$this->config->get('mmr_common_btn_wishlist_hidden')) { ?><button type='button' class='btn btn-default' title='<?php echo $button_wishlist; ?>' onclick='addToWishList(<?php echo $product_id; ?>);'><i class='fa fa-heart'></i></button><?php } ?><?php if (!$this->config->get('mmr_common_btn_compare_hidden')) { ?><button type='button' class='btn btn-default' title='<?php echo $button_compare; ?>' onclick='addToCompare(<?php echo $product_id; ?>);'><i class='fa fa-bar-chart-o'></i></button><?php } ?></div></div>");
      $('input[name=\"quantities\"]').keyup(function(){document.getElementsByName('quantity')[0].value = $(this).val(); });
    },
    onComplete: function() { if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
    onClosed: function() {
      $("#image-appendix").remove()
    }
  });

  <?php if ($this->config->get('mmr_product_gallery_type')=='fancybox') { ?>
  $(".fancybox").fancybox({
    'padding'	:	20,
    'transitionIn'	:	'fade',
    'transitionOut'	:	'fade',
    'overlayOpacity' : 0.7,
    'overlayColor' : '#000',
    'opacity'		: true,
    'titleShow'		: false,
    onStart: function() { if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
    onComplete: function() {
      $("#fancybox-wrap").prepend("<div id='image-appendix'><div class='title hidden-xs'><span><?php echo addslashes($heading_title); ?></span></div><div class='btn-group btn-group-lg hidden-xs additional-buttons'><?php if (!$mmr_buyhide) { ?><button class='btn btn-primary' type='button' title='<?php echo $button_cart; ?>' onclick='$(\"#image-appendix\").remove();$(\"#button-cart\").click();$.fancybox.close()'><i class='fa fa-shopping-cart'></i><?php if (!$this->config->get('mmr_product_buy_caption_hidden')) { ?> <?php echo $button_cart; ?><?php } ?></button><input type='number' min='1' class='form-control input-lg' name='quantities' size='2' value='<?php echo $minimum; ?>' title='<?php echo $text_qty; ?>' /><?php if ($mmr_qorder&&$this->config->get('mmr_quickorder_popup_button_disabled')!=1) { ?><a class='btn btn-default' title='<?php echo $this->language->get('text_mmr_quickorder_button'); ?>' onclick='$(\"#image-appendix\").remove();$.fancybox.close();$(\".btn-quickorder\").click();'><i class='fa fa-flip-horizontal fa-reply-all'></i><?php if (!$this->config->get('mmr_quickorder_buy_caption_hidden')) { ?> <span><?php echo $this->language->get('text_mmr_quickorder_button'); ?></span><?php } ?></a><?php } ?><?php } ?><?php if (!$this->config->get('mmr_common_btn_wishlist_hidden')) { ?><button type='button' class='btn btn-default' title='<?php echo $button_wishlist; ?>' onclick='addToWishList(<?php echo $product_id; ?>);$.fancybox.close()'><i class='fa fa-heart'></i></button><?php } ?><?php if (!$this->config->get('mmr_common_btn_compare_hidden')) { ?><button type='button' class='btn btn-default' title='<?php echo $button_compare; ?>' onclick='addToCompare(<?php echo $product_id; ?>);$.fancybox.close()'><i class='fa fa-bar-chart-o'></i></button><?php } ?></div></div>");
      $('input[name=\"quantities\"]').keyup(function(){document.getElementsByName('quantity')[0].value = $(this).val(); });
    },
    onCleanup: function() {
      $("#image-appendix").remove()
    }
  });
  <?php } ?>

  <?php if ($this->config->get('mmr_product_gallery_type')=='photobox') { ?>
    $('.photobox').photobox('a',{ history:false });
  <?php } ?>

});
//--></script>

<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
    data: $('#product-controls input[type=\'text\'], #product-controls input[type=\'number\'], #product-controls input[type=\'date\'], #product-controls input[type=\'datetime-local\'], #product-controls input[type=\'time\'], #product-controls input[type=\'hidden\'], #product-controls input[type=\'radio\']:checked, #product-controls input[type=\'checkbox\']:checked, #product-controls select, #product-controls textarea'),
    dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information, .error').remove();

			if (json['error']) {
				if (json['error']['option']) {
          $.colorbox.close();
          <?php if ($this->config->get('mmr_product_gallery_type')=='fancybox') { ?>$.fancybox.close();<?php } ?>
          $('.options .collapse').show();
          $('.options .options-expand').hide();
          for (i in json['error']['option']) {
						$('#input-option' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			}
      if (json['success']) {
        $.colorbox({
          width: '550px',
          close: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-times'></i></button>",
          onComplete: function() { if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
          html: "<h4 class='col-xs-12 text-center'>" + json['success'] + "</h4><p class='text-center'><a href='<?php echo $this->url->link('checkout/checkout', '', 'SSL'); ?>' class='btn btn-lg btn-primary'><i class='fa fa-fw fa-share'></i> <span><?php echo $this->language->get('button_checkout'); ?></span></a></p><p class='text-center'><a onclick='$.colorbox.close()' class='btn btn-default'><?php echo $this->language->get('button_shopping'); ?></a></p>", title:"" });
        $('#cart').load('index.php?route=module/cart' + ' #cart > *');
      }

		}
	});
});
//--></script>

<script type="text/javascript"><!--
  $('button[id^=\'button-upload\']').on('click', function() {
    var node = this;
    $('#form-upload').remove();
    $('body').prepend('<form enctype="multipart/form-data" id="form-upload" class="hidden"><input type="file" name="file" /></form>');
    $('#form-upload input[name=\'file\']').trigger('click');
    $('#form-upload input[name=\'file\']').on('change', function() {
      $.ajax({
        url: 'index.php?route=product/product/upload',
        type: 'post',
        dataType: 'json',
        data: new FormData($(this).parent()[0]),
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {
          $(node).find('i').replaceWith('<i class="fa fa-spinner fa-spin"></i>');
          $(node).prop('disabled', true);
        },
        complete: function() {
          $(node).find('i').replaceWith('<i class="fa fa-upload"></i>');
          $(node).prop('disabled', false);
        },
        success: function(json) {
          if (json['error']) {
            $(node).parent().find('input[name^=\'option\']').after('<span class="error">' + json['error'] + '</span>');
          }
          if (json['success']) {
            alert(json['success']);
            $(node).parent().find('input[name^=\'option\']').attr('value', json['file']);
          }
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    });
  });
//--></script>

<script type="text/javascript"><!--
$('#review .pagination_buttons a').live('click', function() {
	$('#review').fadeOut('slow');
	$('#review').load(this.href);
	$('#review').fadeIn('slow');
	return false;
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
    <?php if ($recaptcha) { ?>
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'mmr_rating\']').val() ? $('input[name=\'mmr_rating\']').val() : '') + '&recaptcha_response_field=' + encodeURIComponent($('input[name=\'recaptcha_response_field\']').val()) + '&recaptcha_challenge_field=' + encodeURIComponent($('input[name=\'recaptcha_challenge_field\']').val()),
  <?php } else { ?>
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'mmr_rating\']').val() ? $('input[name=\'mmr_rating\']').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
  <?php } ?>
		beforeSend: function() {
			$('.alert-success, .alert-danger').remove();
			$('#button-review').attr('disabled', true);
			$('#button-review').parent().parent().before('<div class="alert alert-info"><i class="fa fa-spinner fa-spin"></i> <?php echo $text_wait; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.alert-info').remove();
		},
		success: function(data) {
			if (data['error']) {
        <?php if ($recaptcha) { ?>Recaptcha.reload();<?php } ?>
				$('#button-review').parent().parent().before('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + data['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
			}
			if (data['success']) {
				$('#button-review').parent().parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + data['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'mmr_rating\']').val('');
        <?php if ($recaptcha) { ?>$('input[name=\'recaptcha_response_field\']').val('');<?php } else { ?>$('input[name=\'captcha\']').val('');<?php } ?>
			}
		}
	});
});
//--></script>

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript"><!--
  $(document).ready(function() {
    if ($.browser.msie && $.browser.version == 6) {
      $('.date, .datetime, .time').bgIframe();
    }
    $('.date').datepicker({dateFormat: 'yy-mm-dd'});
    $('.datetime').datetimepicker({
      dateFormat: 'yy-mm-dd',
      timeFormat: 'h:m'
    });
    $('.time').timepicker({timeFormat: 'h:m'});
  });
  //--></script>

<?php echo $footer; ?>