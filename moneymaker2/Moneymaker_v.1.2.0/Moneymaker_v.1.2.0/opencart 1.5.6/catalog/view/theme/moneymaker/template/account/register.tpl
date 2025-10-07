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
                  <p><?php echo $text_account_already; ?></p>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <h3><?php echo $text_your_details; ?></h3>
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
                  <div class="form-group">
                    <label for="fax" class="col-sm-4 control-label"><?php echo $entry_fax; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="fax" name="fax" value="<?php echo $fax; ?>" />
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <h3><?php echo $text_your_address; ?></h3>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="company" class="col-sm-4 control-label"><?php echo $entry_company; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="company" name="company" value="<?php echo $company; ?>" />
                    </div>
                  </div>
                  <div class="form-group" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
                    <label class="col-sm-4 control-label"><?php echo $entry_customer_group; ?></label>
                    <div class="col-sm-8">
                      <?php foreach ($customer_groups as $customer_group) { ?>
                        <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                        <label>
                          <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                          <?php echo $customer_group['name']; ?>
                        </label><br />
                        <?php } else { ?>
                        <label>
                          <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
                          <?php echo $customer_group['name']; ?>
                        </label><br />
                        <?php } ?>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group" id="company-id-display">
                    <label for="company_id" class="col-sm-4 control-label"><?php echo $entry_company_id; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="company_id" name="company_id" value="<?php echo $company_id; ?>" />
                      <?php if ($error_company_id) { ?>
                      <span class="error"><?php echo $error_company_id; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required" id="tax-id-display">
                    <label for="tax_id" class="col-sm-4 control-label"><?php echo $entry_tax_id; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="tax_id" name="tax_id" value="<?php echo $tax_id; ?>" />
                      <?php if ($error_tax_id) { ?>
                      <span class="error"><?php echo $error_tax_id; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="address_1" class="col-sm-4 control-label"><?php echo $entry_address_1; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="address_1" name="address_1" value="<?php echo $address_1; ?>" />
                      <?php if ($error_address_1) { ?>
                      <span class="error"><?php echo $error_address_1; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="address_2" class="col-sm-4 control-label"><?php echo $entry_address_2; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="address_2" name="address_2" value="<?php echo $address_2; ?>" />
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="city" class="col-sm-4 control-label"><?php echo $entry_city; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="city" name="city" value="<?php echo $city; ?>" />
                      <?php if ($error_city) { ?>
                      <span class="error"><?php echo $error_city; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="postcode" class="col-sm-4 control-label"><?php echo $entry_postcode; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="postcode" name="postcode" value="<?php echo $postcode; ?>" />
                      <?php if ($error_postcode) { ?>
                      <span class="error"><?php echo $error_postcode; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="country_id" class="col-sm-4 control-label"><?php echo $entry_country; ?></label>
                    <div class="col-sm-8">
                      <select class="form-control" id="country_id" name="country_id">
                        <option value=""><?php echo $text_select; ?></option>
                        <?php foreach ($countries as $country) { ?>
                        <?php if ($country['country_id'] == $country_id) { ?>
                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                      <?php if ($error_country) { ?>
                      <span class="error"><?php echo $error_country; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="zone_id" class="col-sm-4 control-label"><?php echo $entry_zone; ?></label>
                    <div class="col-sm-8">
                      <select class="form-control" id="zone_id" name="zone_id">
                      </select>
                      <?php if ($error_zone) { ?>
                      <span class="error"><?php echo $error_zone; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <h3><?php echo $text_newsletter; ?></h3>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_newsletter; ?></label>
                    <div class="col-sm-8">
                      <?php if ($newsletter) { ?>
                      <label class="radio-inline">
                        <input type="radio" name="newsletter" value="1" checked="checked" /> <?php echo $text_yes; ?>
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="newsletter" value="0" /> <?php echo $text_no; ?>
                      </label>
                      <?php } else { ?>
                      <label class="radio-inline">
                        <input type="radio" name="newsletter" value="1" /> <?php echo $text_yes; ?>
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="newsletter" value="0" checked="checked" /> <?php echo $text_no; ?>
                      </label>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <h3><?php echo $text_your_password; ?></h3>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="password" class="col-sm-4 control-label"><?php echo $entry_password; ?></label>
                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="password" name="password" value="<?php echo $password; ?>" />
                      <?php if ($error_password) { ?>
                      <span class="error"><?php echo $error_password; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label for="confirm" class="col-sm-4 control-label"><?php echo $entry_confirm; ?></label>
                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="confirm" name="confirm" value="<?php echo $confirm; ?>" />
                      <?php if ($error_confirm) { ?>
                      <span class="error"><?php echo $error_confirm; ?></span>
                      <?php } ?>
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
$('input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
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
<?php echo $footer; ?>