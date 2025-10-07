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
          <?php if ($attention) { ?>
          <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
          <?php } ?>
          <?php if ($success) { ?>
          <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
          <?php } ?>
          <?php if ($error_warning) { ?>
          <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
          <?php } ?>
          <div id="notification"></div>
          <h1><?php echo $heading_title; ?>
            <?php if ($weight) { ?>
            &nbsp;(<?php echo $weight; ?>)
            <?php } ?>
          </h1>
          <div class="row">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="col-sm-12" role="form">
              <div class="row">
                <div class="table-responsive col-xs-12">
                  <br />
                  <table class="table">
                    <thead>
                    <tr>
                      <td><?php echo $column_image; ?></td>
                      <td><?php echo $column_name; ?></td>
                      <td><?php echo $column_model; ?></td>
                      <td><?php echo $column_quantity; ?></td>
                      <td class="text-right text-nowrap"><?php echo $column_price; ?></td>
                      <td class="text-right text-nowrap"><?php echo $column_total; ?></td>
                      <td></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($products as $product) { ?>
                    <tr>
                      <td>
                        <?php if ($product['thumb']) { ?>
                        <a href="<?php echo $product['href']; ?>"><img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                        <?php } ?>
                      </td>
                      <td>
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                        <?php if (!$product['stock']) { ?>
                        <span class="text-danger">***</span>
                        <?php } ?>
                        <div>
                          <?php foreach ($product['option'] as $option) { ?>
                          - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                          <?php } ?>
                        </div>
                        <?php if ($product['reward']) { ?>
                        <small class="text-neutral"><?php echo $product['reward']; ?></small>
                        <?php } ?>
                      </td>
                      <td><?php echo $product['model']; ?></td>
                      <td>
                        <div class="input-group" style="width: 90px;">
                          <input type="text" class="form-control" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>">
                          <span class="input-group-btn">
                            <button class="btn btn-default" type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>"><i class="fa fa-refresh"></i></button>
                          </span>
                        </div>
                      </td>
                      <td class="text-right text-nowrap"><?php echo $product['price']; ?></td>
                      <td class="text-right text-nowrap"><?php echo $product['total']; ?></td>
                      <td class="text-right text-nowrap"><a class="text-danger" href="<?php echo $product['remove']; ?>"><i class="fa fa-fw fa-times"></i><?php echo $button_remove; ?></a></td>
                    </tr>
                    <?php } ?>
                    <?php foreach ($vouchers as $vouchers) { ?>
                    <tr>
                      <td></td>
                      <td><?php echo $vouchers['description']; ?></td>
                      <td></td>
                      <td><input type="text" class="form-control" style="width: 90px;" disabled="disabled" name="" value="1"></td>
                      <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                      <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                      <td class="text-right"><a class="text-nowrap text-danger" href="<?php echo $vouchers['remove']; ?>"><i class="fa fa-fw fa-times"></i><?php echo $button_remove; ?></a></td>
                    </tr>
                    <?php } ?>
                    <tr><td></td></tr>
                    <?php foreach ($totals as $total) { ?>
                    <tr>
                      <td></td>
                      <td></td>
                      <td colspan="3" class="text-right text-nowrap text-neutral"><?php echo $total['title']; ?></td>
                      <td class="text-right text-nowrap"><?php echo $total['text']; ?></td>
                      <td></td>
                    </tr>
                    <?php } ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </form>
          </div>
          <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
          <?php if ($this->config->get('mmr_catalog_cart_additional_coupon_hidden')!=1||$this->config->get('mmr_catalog_cart_additional_voucher_hidden')!=1||$this->config->get('mmr_catalog_cart_additional_reward_hidden')!=1||$this->config->get('mmr_catalog_cart_additional_shippingtaxes_hidden')!=1) { ?>
          <h3><?php echo $text_next; ?></h3>
          <div class="row">
            <div class="col-sm-12">
              <p><?php echo $text_next_choice; ?></p>
                <div class="panel-group" id="accordion_next">
                <?php if ($this->config->get('mmr_catalog_cart_additional_coupon_hidden')!=1) { ?>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion_next" href="#coupon">
                          <?php echo $text_use_coupon; ?>
                        </a>
                      </h4>
                    </div>
                    <div id="coupon" class="panel-collapse collapse in">
                      <div class="panel-body">
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal col-sm-12" role="form">
                          <div class="row">
                            <div class="col-sm-12">
                              <div class="form-group">
                                <label for="coupon_input" class="col-sm-4 control-label"><?php echo $entry_coupon; ?></label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="coupon_input" name="coupon" value="<?php echo $coupon; ?>" />
                                </div>
                              </div>
                              <div class="form-group text-center">
                                <button type="submit" class="btn btn-default"><i class="fa fa-check-circle"></i> <?php echo $button_coupon; ?></button>
                              </div>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                  <?php if ($this->config->get('mmr_catalog_cart_additional_voucher_hidden')!=1) { ?>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion_next" href="#voucher">
                          <?php echo $text_use_voucher; ?>
                        </a>
                      </h4>
                    </div>
                    <div id="voucher" class="panel-collapse collapse">
                      <div class="panel-body">
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal col-sm-12" role="form">
                          <div class="row">
                            <div class="col-sm-12">
                              <div class="form-group">
                                <label for="voucher_input" class="col-sm-4 control-label"><?php echo $entry_voucher; ?></label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="voucher_input" name="voucher" value="<?php echo $voucher; ?>" />
                                </div>
                              </div>
                              <div class="form-group text-center">
                                <button type="submit" class="btn btn-default"><i class="fa fa-check-circle"></i> <?php echo $button_voucher; ?></button>
                              </div>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                  <?php if ($this->config->get('mmr_catalog_cart_additional_reward_hidden')!=1) { ?>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion_next" href="#reward">
                          <?php echo $text_use_reward; ?>
                        </a>
                      </h4>
                    </div>
                    <div id="reward" class="panel-collapse collapse">
                      <div class="panel-body">
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal col-sm-12" role="form">
                          <div class="row">
                            <div class="col-sm-12">
                              <div class="form-group">
                                <label for="reward_input" class="col-sm-4 control-label"><?php echo $entry_reward; ?></label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="reward_input" name="reward" value="<?php echo $reward; ?>" />
                                </div>
                              </div>
                              <div class="form-group text-center">
                                <button type="submit" class="btn btn-default"><i class="fa fa-check-circle"></i> <?php echo $button_reward; ?></button>
                              </div>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                  <?php if ($this->config->get('mmr_catalog_cart_additional_shippingtaxes_hidden')!=1) { ?>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion_next" href="#shipping">
                          <?php echo $text_shipping_estimate; ?>
                        </a>
                      </h4>
                    </div>
                    <div id="shipping" class="panel-collapse collapse">
                      <div class="panel-body">
                        <div class="form-horizontal col-sm-12">
                          <p><?php echo $text_shipping_detail; ?></p>
                          <div class="row">
                            <div class="col-sm-12">
                              <div class="form-group required">
                                <label for="country_id" class="col-sm-4 control-label"><?php echo $entry_country; ?></label>
                                <div class="col-sm-8">
                                  <select class="form-control" id="country_id" name="country_id">
                                    <option value="false"><?php echo $text_select; ?></option>
                                    <?php foreach ($countries as $country) { ?>
                                    <?php if ($country['country_id'] == $country_id) { ?>
                                    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                  </select>
                                </div>
                              </div>
                              <div class="form-group required">
                                <label for="zone_id" class="col-sm-4 control-label"><?php echo $entry_zone; ?></label>
                                <div class="col-sm-8">
                                  <select class="form-control" id="zone_id" name="zone_id">
                                  </select>
                                </div>
                              </div>
                              <div class="form-group required">
                                <label for="postcode" class="col-sm-4 control-label"><?php echo $entry_postcode; ?></label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="postcode" name="postcode" value="<?php echo $postcode; ?>" />
                                </div>
                              </div>
                              <div class="form-group text-center">
                                <button type="submit" class="btn btn-default" id="button-quote"><i class="fa fa-check-circle"></i> <?php echo $button_quote; ?></button>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
            </div>
          </div>
          <?php } ?>
          <?php } ?>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center">
              <p class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-lg btn-default"><i class="fa fa-chevron-circle-left"></i> <?php echo $button_shopping; ?></a></p>
              <p class="pull-right"><a href="<?php echo $checkout; ?>" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_checkout; ?></a></p>
            </div>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/moneymaker/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="alert alert-warning"><i class="fa fa-exclamation-circle" style="display: none;"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
					$('.warning').fadeIn('slow');
					$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}
			}
			if (json['shipping_method']) {
        html  = '<h2><?php echo $text_shipping_method; ?></h2>';
        html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
        html += '  <br />';
        html += '  <div class="table-responsive">';
        html += '  <table class="table">';
        for (i in json['shipping_method']) {
          html += '<tbody>';
          html += '<tr>';
          html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
          html += '</tr>';
          if (!json['shipping_method'][i]['error']) {
            for (j in json['shipping_method'][i]['quote']) {
              html += '<tr>';

              if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
                html += '<td><div class="radio"><label><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></div></td>';
              } else {
                html += '<td><div class="radio"><label><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></div></td>';
              }
              html += '  <td class="text-right"><div class="radio">' + json['shipping_method'][i]['quote'][j]['text'] + '</div>';
              html += '</tr>';
              html += '</tbody>';
            }
          } else {
            html += '<tr>';
            html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
            html += '</tr>';
          }
        }
        html += '  </table>';
        html += '  </div>';
        html += '  <br />';
        html += '  <input type="hidden" name="next" value="shipping" />';
        <?php if ($shipping_method) { ?>
          html += '  <p class="text-center"><button type="submit" id="button-shipping" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_shipping; ?></button></p>';
        <?php } else { ?>
          html += '  <p class="text-center"><button type="submit" id="button-shipping" class="btn btn-lg btn-primary" disabled="disabled"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_shipping; ?></button></p>';
        <?php } ?>
        html += '</form>';
				$.colorbox({
          close: "<button class='btn btn-default' type='button'><i class='fa fa-fw fa-times'></i></button>",
          onComplete: function() { if(navigator.appVersion.indexOf("MSIE 8.")!=-1) {$("html, body").animate({scrollTop:0}, 'slow');}; },
					width: '550px',
					href: false,
					html: html
				});
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/moneymaker/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>
