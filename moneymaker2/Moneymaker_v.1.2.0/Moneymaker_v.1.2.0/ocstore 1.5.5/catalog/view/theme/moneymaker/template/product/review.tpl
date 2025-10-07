<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="panel <?php if ($this->config->get('mmr_product_review_visualization')!=1) { if ($review['rating'] >= 4) { ?>panel-success<?php } else if ($review['rating'] == 3) { ?>panel-warning<?php } else { ?>panel-danger<?php } } else { ?>panel-default<?php } ?> ">
  <div class="panel-heading">
    <div class="pull-left">
      <?php echo $review['author']; ?>
    </div>
    <div class="text-right">
      <?php for ($i = 1; $i <= 5; $i++) { ?>
      <?php if ($review['rating'] < $i) { ?>
      <i class="fa fa-star-o"></i>
      <?php } else { ?>
      <i class="fa fa-star"></i>
      <?php } ?>
      <?php } ?>
    </div>
  </div>
  <div class="panel-body">
    <div>
      <?php echo $review['text']; ?>
    </div>
    <div class="text-right text-neutral"><br />
      <span><?php echo $review['date_added']; ?></span>
    </div>
  </div>
</div>
<?php } ?>
<div class="pagination_buttons"><div class="col-xs-12 text-center"><?php echo $pagination; ?></div></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>