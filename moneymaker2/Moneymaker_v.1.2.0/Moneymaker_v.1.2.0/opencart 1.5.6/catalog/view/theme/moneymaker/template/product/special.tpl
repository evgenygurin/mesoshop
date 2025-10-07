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
      <?php if ($this->config->get('mmr_advantages_enabled')&&$this->config->get('mmr_advantages')&&$this->config->get('mmr_advantages_display_special')) { ?>
        <div class="row advantages text-center pos-13">
          <?php $mmr_advantages = $this->config->get('mmr_advantages'); ?>
          <?php foreach ($mmr_advantages as $key => $mmr_advantage) { ?><?php if ($mmr_advantage['link_id']) { ?><a href="route=information/information&amp;information_id=<?php echo $mmr_advantage['link_id']; ?>" data-to="index.php?route=information/information/info&amp;information_id=<?php echo $mmr_advantage['link_id']; ?>" class="colorbox_popup thumbnail r<?php echo count($mmr_advantages); ?>"><?php } else { ?><div class="thumbnail r<?php echo count($mmr_advantages); ?>"><?php } ?><i class="fa fa-2x fa-<?php echo $mmr_advantage['icon']; ?>"></i><span><?php echo isset($mmr_advantage['text'][$this->config->get('config_language_id')]) ? $mmr_advantage['text'][$this->config->get('config_language_id')] : ''; ?></span><?php if ($mmr_advantage['link_id']) { ?></a><?php } else { ?></div><?php } ?><?php } ?>
        </div>
      <?php } ?>
      <div class="row">
        <div class="col-sm-12 pos-9">
          <h1><?php echo $heading_title; ?></h1>
          <?php if ($products) { ?>
          <div class="row limits">
            <?php if ($this->config->get('mmr_catalog_limits_classic')) { ?>
            <div class="col-xs-12">
              <div class="btn-group"><span><?php echo $text_sort; ?></span>
                <div class="sort">
                  <select class="form-control" onchange="location = this.value;">
                    <?php foreach ($sorts as $sorts) { ?>
                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="btn-group"><span><?php echo $text_limit; ?></span>
                <div class="limit">
                  <select class="form-control" onchange="location = this.value;">
                    <?php foreach ($limits as $limits) { ?>
                    <?php if ($limits['value'] == $limit) { ?>
                    <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="btn-group pull-right">
                <?php if ($this->config->get('mmr_catalog_layout_switcher_hidden')!=1) { ?>
                <button type="button" id="list-view" class="btn btn-default <?php if ($this->config->get('mmr_catalog_layout')) { ?>active<?php } ?> hidden-xxs" data-toggle="tooltip" title="<?php echo $text_list; ?>"><i class="fa fa-align-justify"></i></button>
                <button type="button" id="grid-view" class="btn btn-default <?php if (!$this->config->get('mmr_catalog_layout')) { ?>active<?php } ?> hidden-xxs" data-toggle="tooltip" title="<?php echo $text_grid; ?>"><i class="fa fa-th"></i></button>
                <?php } ?>
              </div>
            </div>
            <?php } else { ?>
            <div class="col-xs-12 text-right">
              <div class="btn-group text-left">
                <div class="btn-group">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <?php echo str_replace(":","",$text_sort); ?>
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    <?php foreach ($sorts as $sorts) { ?>
                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                    <li class="active"><a href="<?php echo $sorts['href']; ?>" rel="nofollow"><?php echo $sorts['text']; ?></a></li>
                    <?php } else { ?>
                    <li><a href="<?php echo $sorts['href']; ?>" rel="nofollow"><?php echo $sorts['text']; ?></a></li>
                    <?php } ?>
                    <?php } ?>
                  </ul>
                </div>
                <?php if ($this->config->get('mmr_catalog_layout_switcher_hidden')!=1) { ?>
                <button type="button" id="list-view" class="btn btn-default <?php if ($this->config->get('mmr_catalog_layout')) { ?>active<?php } ?> hidden-xxs" data-toggle="tooltip" title="<?php echo $text_list; ?>"><i class="fa fa-align-justify"></i></button>
                <button type="button" id="grid-view" class="btn btn-default <?php if (!$this->config->get('mmr_catalog_layout')) { ?>active<?php } ?> hidden-xxs" data-toggle="tooltip" title="<?php echo $text_grid; ?>"><i class="fa fa-th"></i></button>
                <?php } ?>
                <div class="btn-group limit-btn-group">
                  <ul class="dropdown-menu">
                    <?php foreach ($limits as $limits) { ?>
                    <?php if ($limits['value'] == $limit) { ?>
                    <li class="active"><a href="<?php echo $limits['href']; ?>" rel="nofollow"><?php echo $limits['text']; ?></a></li>
                    <?php $mmr_limit_active = $limits['text']; ?>
                    <?php } else { ?>
                    <li><a href="<?php echo $limits['href']; ?>" rel="nofollow"><?php echo $limits['text']; ?></a></li>
                    <?php } ?>
                    <?php } ?>
                  </ul>
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="<?php echo $text_limit;?>">
                    <i class="fa fa-arrows-v hidden-md hidden-lg"></i> <span class="hidden-xs hidden-sm"><?php echo $text_limit; ?> </span><?php echo isset($mmr_limit_active) ? $mmr_limit_active : $limits['text']; ?>
                    <span class="caret"></span>
                  </button>
                </div>
              </div>
            </div>
            <?php } ?>
          </div>
          <div class="row products product-<?php if ($this->config->get('mmr_catalog_layout')) { ?>list<?php } else { ?>grid<?php } ?>">
            <div>
              <?php foreach ($products as $product) { ?>
              <div class="product-layout">
                <div class="product-block <?php if ($this->config->get('mmr_catalog_grid_details')=='Always') { ?>product-block-detailed<?php } ?>">
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
                        <button class="btn btn-primary" type="button" <?php if ($this->config->get('mmr_common_addtocart_hide_enabled')&&$product['quantity']<1) { ?>disabled="disabled" <?php } ?>onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php if ($this->config->get('mmr_common_addtocart_hide_enabled')&&$product['quantity']<1) { ?><?php echo $product['stock']; ?><?php } else { ?><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?><?php } ?></button>
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
                        <?php if ($product['tax']) { ?>
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                        <?php } ?>
                        <span class="price-rdot">&bull;</span>
                      </div>
                    </div>
                    <?php } ?>
                  </div>
                  <div class="description">
                    <?php if ($this->config->get('mmr_common_catalog_stock_enabled')||$this->config->get('mmr_common_catalog_product_code_enabled')) { ?>
                    <div class="additional-fields">
                      <?php if ($this->config->get('mmr_common_catalog_stock_enabled')) { ?><span class="stock<?php if ($product['quantity']<=0) { ?> outofstock<?php } ?>"><?php if (!$this->config->get('mmr_common_stock_availability_hidden')) { ?><b><?php echo $this->language->get('text_stock'); ?></b> <?php } ?><?php echo $product['stock']; ?></span><br /><?php } ?>
                      <?php if ($this->config->get('mmr_common_catalog_product_code_enabled')) { ?><?php $mmr_common_product_code_caption = $this->config->get('mmr_common_product_code_caption'); ?><?php echo html_entity_decode($mmr_common_product_code_caption[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?> <?php $mmr_common_product_code_field=$this->config->get('mmr_common_product_code_field'); if ($product[$mmr_common_product_code_field]) { ?><?php echo $product[$mmr_common_product_code_field]; ?><?php } ?><?php } ?>
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
                </div>
              </div>
              <?php } ?>
            </div>
          </div>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center pagination"><?php echo $pagination; ?></div>
          </div>
          <?php } else { ?>
          <div class="row">
            <div class="col-xs-12">
              <p>
                <?php echo $text_empty; ?>
              </p>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
    <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>