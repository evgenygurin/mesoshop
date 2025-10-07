<div class="form-horizontal">
  <br />
  <?php if ($addresses) { ?>
  <div class="radio">
    <label>
      <input type="radio" name="payment_address" value="existing" checked="checked">
      <p><?php echo $text_address_existing; ?></p>
    </label>
  </div>
  <div id="payment-existing">
    <select name="address_id" class="form-control">
      <?php foreach ($addresses as $address) { ?>
      <?php if ($address['address_id'] == $address_id) { ?>
      <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
      <?php } ?>
      <?php } ?>
    </select>
  </div>
  <div class="radio">
    <label>
      <input type="radio" name="payment_address" value="new">
      <p><?php echo $text_address_new; ?></p>
    </label>
  </div>
  <br />
  <?php } ?>
  <div id="payment-new" style="display: <?php echo ($addresses ? 'none' : 'block'); ?>;">
    <div class="form-group required">
      <label for="firstname" class="col-sm-3 control-label"><?php echo $entry_firstname; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="firstname" name="firstname" value="" />
      </div>
    </div>
    <div class="form-group required">
      <label for="lastname" class="col-sm-3 control-label"><?php echo $entry_lastname; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="lastname" name="lastname" value="" />
      </div>
    </div>
    <div class="form-group">
      <label for="company" class="col-sm-3 control-label"><?php echo $entry_company; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="company" name="company" value="" />
      </div>
    </div>
    <?php if ($company_id_display) { ?>
    <div class="form-group <?php if ($company_id_required) { ?>required<?php } ?>">
      <label for="company_id" class="col-sm-3 control-label"><?php echo $entry_company_id; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="company_id" name="company_id" value="" />
      </div>
    </div>
    <?php } ?>
    <?php if ($tax_id_display) { ?>
    <div class="form-group <?php if ($tax_id_required) { ?>required<?php } ?>">
      <label for="tax_id" class="col-sm-3 control-label"><?php echo $entry_tax_id; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="tax_id" name="tax_id" value="" />
      </div>
    </div>
    <?php } ?>
    <div class="form-group required">
      <label for="address_1" class="col-sm-3 control-label"><?php echo $entry_address_1; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="address_1" name="address_1" value="" />
      </div>
    </div>
    <div class="form-group">
      <label for="address_2" class="col-sm-3 control-label"><?php echo $entry_address_2; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="address_2" name="address_2" value="" />
      </div>
    </div>
    <div class="form-group required">
      <label for="city" class="col-sm-3 control-label"><?php echo $entry_city; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="city" name="city" value="" />
      </div>
    </div>
    <div class="form-group">
      <label for="postcode" class="col-sm-3 control-label"><span id="payment-postcode-required" class="error">*</span> <?php echo $entry_postcode; ?></label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="postcode" name="postcode" value="" />
      </div>
    </div>
    <div class="form-group required">
      <label for="country_id" class="col-sm-3 control-label"><?php echo $entry_country; ?></label>
      <div class="col-sm-9">
        <select class="form-control" id="country_id" name="country_id">
          <option value="false"><?php echo $text_select; ?></option>
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
      <label for="zone_id" class="col-sm-3 control-label"><?php echo $entry_zone; ?></label>
      <div class="col-sm-9">
        <select class="form-control" id="zone_id" name="zone_id">
        </select>
      </div>
    </div>
  </div>
  <div class="row pagination_buttons">
    <div class="form-group text-center">
      <p><button id="button-payment-address" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></p>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('#payment-address input[name=\'payment_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#payment-existing').hide();
		$('#payment-new').show();
	} else {
		$('#payment-existing').show();
		$('#payment-new').hide();
	}
});
//--></script>
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/moneymaker/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#payment-postcode-required').show();
			} else {
				$('#payment-postcode-required').hide();
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

			$('#payment-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#payment-address select[name=\'country_id\']').trigger('change');
//--></script>
<?php if ($init_geo_ip) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/geoip.ru.js"></script>
<?php } ?>