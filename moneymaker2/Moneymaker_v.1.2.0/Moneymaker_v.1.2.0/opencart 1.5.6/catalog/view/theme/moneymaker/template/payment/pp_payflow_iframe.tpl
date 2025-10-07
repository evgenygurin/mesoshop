<?php if ($checkout_method == 'iframe') { ?>
  <iframe src="<?php echo $iframe_url ?>" scrolling="no" width="560px" height="540px" frameBorder="0"></iframe>
<?php } else { ?>

  <div class="row pagination_buttons">
    <div class="col-xs-12 text-center">
      <p><a href="<?php echo $iframe_url; ?>" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_confirm; ?></a></p>
    </div>
  </div>

<?php } ?>