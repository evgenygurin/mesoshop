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
          <h1><?php echo $heading_title; ?></h1>
          <div class="row">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal col-sm-12" role="form">
              <div class="row">
                <div class="col-md-10 col-sm-12">
                  <br />
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
                  <div class="form-group">
                    <label for="company" class="col-sm-4 control-label"><?php echo $entry_company; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="company" name="company" value="<?php echo $company; ?>" />
                    </div>
                  </div>
                  <?php if ($company_id_display) { ?>
                  <div class="form-group">
                    <label for="company_id" class="col-sm-4 control-label"><?php echo $entry_company_id; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="company_id" name="company_id" value="<?php echo $company_id; ?>" />
                      <?php if ($error_company_id) { ?>
                      <span class="error"><?php echo $error_company_id; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <?php } ?>
                  <?php if ($tax_id_display) { ?>
                  <div class="form-group">
                    <label for="tax_id" class="col-sm-4 control-label"><?php echo $entry_tax_id; ?></label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="tax_id" name="tax_id" value="<?php echo $tax_id; ?>" />
                      <?php if ($error_tax_id) { ?>
                      <span class="error"><?php echo $error_tax_id; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <?php } ?>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <h2><?php echo $text_edit_address; ?></h2>
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
                    <label class="col-sm-4 control-label"><?php echo $entry_default; ?></label>
                    <div class="col-sm-8">
                      <?php if ($default) { ?>
                      <label class="radio-inline">
                        <input type="radio" name="default" value="1" checked="checked" /> <?php echo $text_yes; ?>
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="default" value="0" /> <?php echo $text_no; ?>
                      </label>
                      <?php } else { ?>
                      <label class="radio-inline">
                        <input type="radio" name="default" value="1" /> <?php echo $text_yes; ?>
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="default" value="0" checked="checked" /> <?php echo $text_no; ?>
                      </label>
                      <?php } ?>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row pagination_buttons">
                <div class="col-xs-12 text-center">
                  <p class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-lg btn-default"><i class="fa fa-chevron-circle-left"></i> <?php echo $button_back; ?></a></p>
                  <p class="pull-right"><button type="submit" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></p>
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
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/address/country&country_id=' + this.value,
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