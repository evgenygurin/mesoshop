<div class="row">
  <div class="col-sm-6">
    <h4><?php echo $text_new_customer; ?></h4>
    <div class="row">
      <div class="col-xs-12">
        <p><?php echo $text_register_account; ?></p>
        <h4><?php echo $text_checkout; ?></h4>
        <div class="radio">
          <label>
            <input type="radio" name="account" value="register" <?php if ($account == 'register') { ?>checked="checked"<?php } ?>>
            <?php echo $text_register; ?>
          </label>
        </div>
        <?php if ($guest_checkout) { ?>
        <div class="radio">
          <label>
            <input type="radio" name="account" value="guest" <?php if ($account == 'guest') { ?>checked="checked"<?php } ?>>
            <?php echo $text_guest; ?>
          </label>
        </div>
        <?php } ?>
      </div>
    </div>
    <div class="row pagination_buttons">
      <div class="col-xs-12 text-center">
        <p><button class="btn btn-lg btn-primary" id="button-account"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></button></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6" id="login">
    <h4><?php echo $text_returning_customer; ?></h4>
    <div class="row">
      <div class="col-sm-12">
        <div class="form-group">
          <label for="email"><?php echo $entry_email; ?></label>
            <input type="text" class="form-control" id="email" name="email" value="" />
        </div>
        <div class="form-group">
          <label for="password"><?php echo $entry_password; ?></label>
            <input type="password" class="form-control" id="password" name="password" value="" />
            <a href="<?php echo $forgotten; ?>"><small><?php echo $text_forgotten; ?></small></a>
        </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-lg btn-default" id="button-login"><i class="fa fa-sign-in"></i> <?php echo $button_login; ?></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

