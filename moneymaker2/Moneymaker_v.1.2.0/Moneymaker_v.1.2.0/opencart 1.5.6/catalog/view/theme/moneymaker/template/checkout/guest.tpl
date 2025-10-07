<div class="row">
  <div class="form-horizontal col-sm-12">
    <div class="row">
      <div class="col-md-10 col-sm-12">
        <br />
        <div class="form-group">
          <div class="col-sm-12">
            <h3><?php echo $text_your_details; ?></h3>
          </div>
        </div>
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
        <div class="form-group required">
          <label for="email" class="col-sm-4 control-label"><?php echo $entry_email; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="email" name="email" value="<?php echo $email; ?>" />
          </div>
        </div>
        <div class="form-group required">
          <label for="telephone" class="col-sm-4 control-label"><?php echo $entry_telephone; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="telephone" name="telephone" value="<?php echo $telephone; ?>" />
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
          <label for="company_id" class="col-sm-4 control-label"><span id="company-id-required" class="error">*</span> <?php echo $entry_company_id; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="company_id" name="company_id" value="<?php echo $company_id; ?>" />
          </div>
        </div>
        <div class="form-group required" id="tax-id-display">
          <label for="tax_id" class="col-sm-4 control-label"><span id="tax-id-required" class="error">*</span> <?php echo $entry_tax_id; ?></label>
          <div class="col-sm-8">
            <input type="text" class="form-control" id="tax_id" name="tax_id" value="<?php echo $tax_id; ?>" />
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
          <label for="postcode" class="col-sm-4 control-label"><span id="payment-postcode-required" class="error">*</span> <?php echo $entry_postcode; ?></label>
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
        <?php if ($shipping_required) { ?>
        <div class="form-group">
          <div class="col-sm-offset-4 col-sm-8">
            <div class="checkbox">
              <label>
                <input type="checkbox" name="shipping_address" value="1" id="shipping" <?php if ($shipping_address) { ?>checked="checked"<?php } ?> />
                <?php echo $entry_shipping; ?>
              </label>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
    </div>
    <div class="row pagination_buttons">
      <div class="col-xs-12 text-center">
        <p><button class="btn btn-lg btn-primary" id="button-guest"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></p>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript"><!--
$('#payment-address input[name=\'customer_group_id\']:checked').live('change', function() {
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

$('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
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