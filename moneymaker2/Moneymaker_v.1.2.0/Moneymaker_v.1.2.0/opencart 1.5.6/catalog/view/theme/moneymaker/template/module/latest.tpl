<?php $this->language->load('product/category'); ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
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
                <button class="btn btn-primary" type="button" <?php if ($this->config->get('mmr_common_addtocart_hide_enabled')&&$product['quantity']<1) { ?>disabled="disabled" <?php } ?>onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php if ($this->config->get('mmr_common_addtocart_hide_enabled')&&$product['quantity']<1) { ?><i class="fa fa-shopping-cart hidden-lg"></i> <span class="hidden-md hidden-sm"><?php echo $product['stock']; ?></span><?php } else { ?><i class="fa fa-shopping-cart"></i> <span class="hidden-md hidden-sm"><?php echo $button_cart; ?></span><?php } ?></button>
                <?php if (!$this->config->get('mmr_common_btn_wishlist_hidden')) { ?><button class="btn btn-default" type="button" data-toggle="tooltip" title="<?php echo $this->language->get('button_wishlist'); ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button><?php } ?>
                <?php if (!$this->config->get('mmr_common_btn_compare_hidden')) { ?><button class="btn btn-default" type="button" data-toggle="tooltip" title="<?php echo $this->language->get('button_compare'); ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><i class="fa fa-bar-chart-o"></i></button><?php } ?>
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
          <?php if ($this->config->get('mmr_common_latest_stock_enabled')||$this->config->get('mmr_common_latest_product_code_enabled')||$product['description']||$product['attribute_groups']||$product['meta_description']) { ?>
          <div class="description">
            <?php if ($this->config->get('mmr_common_latest_stock_enabled')||$this->config->get('mmr_common_latest_product_code_enabled')) { ?>
            <div class="additional-fields">
              <?php if ($this->config->get('mmr_common_latest_stock_enabled')) { ?><span class="stock<?php if ($product['quantity']<=0) { ?> outofstock<?php } ?>"><?php if (!$this->config->get('mmr_common_stock_availability_hidden')) { ?><b><?php echo $this->language->get('text_stock'); ?></b> <?php } ?><?php echo $product['stock']; ?></span><br /><?php } ?>
              <?php if ($this->config->get('mmr_common_latest_product_code_enabled')) { ?><?php $mmr_common_product_code_caption = $this->config->get('mmr_common_product_code_caption'); ?><?php echo html_entity_decode($mmr_common_product_code_caption[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8'); ?> <?php $mmr_common_product_code_field=$this->config->get('mmr_common_product_code_field'); if ($product[$mmr_common_product_code_field]) { ?><?php echo $product[$mmr_common_product_code_field]; ?><?php } ?><?php } ?>
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
</div>
</div>