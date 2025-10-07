<div class="row">
  <div class="form-horizontal col-sm-12">
    <div class="row">
      <div class="col-md-10 col-sm-12">
        <br />
        <div class="form-group required">
          <label for="firstname" class="col-sm-4 control-label"><?php echo $entry_firstname; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="firstname" name="firstname" value="<?php echo $firstname; ?>" />
          </div>
        </div>
        <div class="form-group required">
          <label for="lastname" class="col-sm-4 control-label"><?php echo $entry_lastname; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="lastname" name="lastname" value="<?php echo $lastname; ?>" />
          </div>
        </div>
        <div class="form-group">
          <label for="company" class="col-sm-4 control-label"><?php echo $entry_company; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="company" name="company" value="<?php echo $company; ?>" />
          </div>
        </div>
        <div class="form-group required">
          <label for="address_1" class="col-sm-4 control-label"><?php echo $entry_address_1; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="address_1" name="address_1" value="<?php echo $address_1; ?>" />
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
          </div>
        </div>
        <div class="form-group">
          <label for="postcode" class="col-sm-4 control-label"><span id="shipping-postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="postcode" name="postcode" value="<?php echo $postcode; ?>" />
          </div>
        </div>
        <div class="form-group required">
          <label for="country_id" class="col-sm-4 control-label"><?php echo $entry_country; ?></label>
          <div class="col-sm-8">
            <select class="form-control" id="country_id" name="country_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" data-iso2="<?php echo $country['iso_code_2']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>" data-iso2="<?php echo $country['iso_code_2']; ?>"><?php echo $country['name']; ?></option>
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
        <div class="row pagination_buttons">
          <div class="col-xs-12 text-center">
            <p><button class="btn btn-lg btn-primary" id="button-guest-shipping"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('#shipping-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#shipping-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/moneymaker/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#shipping-postcode-required').show();
			} else {
				$('#shipping-postcode-required').hide();
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
			
			$('#shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#shipping-address select[name=\'country_id\']').trigger('change');
//--></script>
<?php if ($init_geo_ip) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/geoip.ru.js"></script>
<?php } ?>