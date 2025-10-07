<?php $styles = ''; ?>
<?php if ($this->config->get('mmr_stickers_enabled')) { ?>
<?php $styles .= '.product-block .sticker .fa-stack {'; ?>
<?php $styles .= 'width: '.$this->config->get('mmr_stickers_size_small').'em;'; ?>
<?php $styles .= 'height: '.$this->config->get('mmr_stickers_size_small').'em;'; ?>
<?php $styles .= 'line-height: '.$this->config->get('mmr_stickers_size_small').'em;'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.product-block .sticker .fa-stack-2x {'; ?>
<?php $styles .= 'font-size: '.$this->config->get('mmr_stickers_size_small').'em;'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.thumbnails .sticker .fa-stack {'; ?>
<?php $styles .= 'width: '.$this->config->get('mmr_stickers_size_large').'em;'; ?>
<?php $styles .= 'height: '.$this->config->get('mmr_stickers_size_large').'em;'; ?>
<?php $styles .= 'line-height: '.$this->config->get('mmr_stickers_size_large').'em;'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.thumbnails .sticker .fa-stack-2x {'; ?>
<?php $styles .= 'font-size: '.$this->config->get('mmr_stickers_size_large').'em;'; ?>
<?php $styles .= '}'; ?>
<?php $mmr_stickers = $this->config->get('mmr_stickers'); ?>
<?php for ($i = 1; $i <= 9; $i++) { ?>
<?php if ($mmr_stickers[$i]['enabled']) { ?>
<?php $styles .= '.sticker.sticker-'.$i.' .fa-stack-2x {'; ?>
<?php $styles .= 'color: '.$mmr_stickers[$i]['icon_color'].';'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.sticker.sticker-'.$i.' .fa-stack-1x {'; ?>
<?php $styles .= 'color: '.$mmr_stickers[$i]['title_color'].';'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.sticker.sticker-'.$i.' .sticker-caption {'; ?>
<?php $styles .= 'color: '.$mmr_stickers[$i]['caption_color'].';'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.sticker.sticker-'.$i.' .sticker-caption-bottom {'; ?>
<?php $styles .= 'color: '.$mmr_stickers[$i]['icon_color'].';'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.product-block .sticker.sticker-'.$i.' .fa-stack-1x {'; ?>
<?php $styles .= 'font-size: '.$mmr_stickers[$i]['title_size_small'].'px;'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.product-block .sticker.sticker-'.$i.' .sticker-caption {'; ?>
<?php $styles .= 'font-size: '.$mmr_stickers[$i]['caption_size_small'].'px;'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.thumbnails .sticker.sticker-'.$i.' .fa-stack-1x {'; ?>
<?php $styles .= 'font-size: '.$mmr_stickers[$i]['title_size_large'].'px;'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.thumbnails .sticker.sticker-'.$i.' .sticker-caption {'; ?>
<?php $styles .= 'font-size: '.$mmr_stickers[$i]['caption_size_large'].'px;'; ?>
<?php $styles .= '}'; ?>
<?php } ?>
<?php } ?>
<?php } ?>
<?php if ($this->config->get('mmr_advantages_enabled')) { ?>
<?php $styles .= '.advantages .fa-2x {'; ?>
<?php $styles .= 'font-size: '.$this->config->get('mmr_advantages_icons_size').'em;'; ?>
<?php $styles .= 'color: '.$this->config->get('mmr_advantages_icons_color').';'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '.advantages > a span, .advantages > div span {'; ?>
<?php $styles .= 'font-size: '.$this->config->get('mmr_advantages_font_size').'px;'; ?>
<?php $styles .= 'color: '.$this->config->get('mmr_advantages_font_color').';'; ?>
<?php $styles .= '}'; ?>
<?php } ?>
<?php if ($this->config->get('mmr_product_description_font_customized')) { ?>
<?php $styles .= '#tab-description {'; ?>
<?php $styles .= 'font-size: '.$this->config->get('mmr_product_description_font_size').'px;'; ?>
<?php $styles .= 'color: '.$this->config->get('mmr_product_description_font_color').';'; ?>
<?php $styles .= '}'; ?>
<?php } ?>
<?php if ($this->config->get('mmr_product_specification_font_customized')) { ?>
<?php $styles .= '#tab-specification {'; ?>
<?php $styles .= 'font-size: '.$this->config->get('mmr_product_specification_font_size').'px;'; ?>
<?php $styles .= 'color: '.$this->config->get('mmr_product_specification_font_color').';'; ?>
<?php $styles .= '}'; ?>
<?php } ?>
<?php if ($this->config->get('mmr_product_review_font_customized')) { ?>
<?php $styles .= '#tab-review, #review {'; ?>
<?php $styles .= 'font-size: '.$this->config->get('mmr_product_review_font_size').'px;'; ?>
<?php $styles .= 'color: '.$this->config->get('mmr_product_review_font_color').';'; ?>
<?php $styles .= '}'; ?>
<?php } ?>
<?php if ($this->config->get('mmr_product_tabs_additional')) { ?>
<?php $mmr_product_tabs_additional = $this->config->get('mmr_product_tabs_additional'); ?>
<?php foreach ($mmr_product_tabs_additional as $key => $mmr_product_tab_additional) { ?>
<?php if ($mmr_product_tab_additional['status']==1&&$mmr_product_tab_additional['font_customized']) { ?>
<?php $styles .= '#tab-additional-'.$key.' {'; ?>
<?php $styles .= 'font-size: '.$mmr_product_tab_additional['font_size'].'px;'; ?>
<?php $styles .= 'color: '.$mmr_product_tab_additional['font_color'].';'; ?>
<?php $styles .= '}'; ?>
<?php } ?>
<?php } ?>
<?php } ?>
<?php if ($this->config->get('mmr_savings_enabled')) { ?>
<?php $styles .= '.row-product .savings, .products .savings {'; ?>
<?php $styles .= 'color: '.$this->config->get('mmr_savings_text_color').';'; ?>
<?php $styles .= '}'; ?>
<?php } ?>
<?php if ($this->config->get('mmr_common_stock_visualization_enabled')) { ?>
<?php $styles .= '#product-controls .stock-price-buttons .stock, .additional-fields .stock {'; ?>
<?php $styles .= 'color: '.$this->config->get('mmr_common_stock_available_color').';'; ?>
<?php $styles .= '}'; ?>
<?php $styles .= '#product-controls .stock-price-buttons .stock.outofstock, .additional-fields .stock.outofstock {'; ?>
<?php $styles .= 'color: '.$this->config->get('mmr_common_stock_unavailable_color').';'; ?>
<?php $styles .= '}'; ?>
<?php } ?>
<?php if ($this->config->get('mmr_themes_rounded_disabled')) { ?>
<?php $styles .= '.btn, .btn-lg, .btn-group-lg > .btn, select.form-control, textarea.form-control, input.form-control, .nav-pills > li > a, .nav-tabs.nav-justified > li > a, .input-group-addon, .breadcrumb, .alert, #product-controls .stock-price-buttons .price, .product-list .product-block .price, .product-grid .product-block .price > div, .table-responsive .price > div, .box .box-heading, a.button, input.button, #recaptcha_image img, #recaptcha_response_field, #image-appendix .title span, .pagination_buttons > div .links > *:first-child, .pagination_buttons > div .links > *:last-child, .pagination .links > *:first-child, .pagination .links > *:last-child {border-radius: 0px;}'; ?>
<?php } ?>
<?php if ($this->config->get('mmr_themes_transparent_disabled')) { ?>
<?php $styles .= '.img-thumbnail-transparent {opacity: 1;filter: alpha(opacity=100);}'; ?>
<?php } ?>
<?php if ($this->config->get('mmr_common_header_fixed')) { ?>
<?php $styles .= 'body { padding-top: 52px; }'; ?>
<?php } ?>
<?php return($styles); ?>