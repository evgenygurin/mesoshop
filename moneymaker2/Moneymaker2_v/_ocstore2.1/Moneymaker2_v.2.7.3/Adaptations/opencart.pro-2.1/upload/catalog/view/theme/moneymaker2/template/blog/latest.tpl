<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> showcase-list"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($articles) { ?>

      <div class="row limits">
        <div class="col-xs-12 text-center">
          <div class="btn-group text-left">
            <div class="btn-group btn-group-sm dropdown">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <?php echo str_replace(":","",$text_sort); ?><i class="fa fa-fw fa-angle-down"></i>
              </button>
              <ul class="dropdown-menu" id="input-sort">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <li class="active"><a href="<?php echo $sorts['href']; ?>" rel="nofollow"><?php echo $sorts['text']; ?></a></li>
                <?php } else { ?>
                <li><a href="<?php echo $sorts['href']; ?>" rel="nofollow"><?php echo $sorts['text']; ?></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
            </div>
            <div class="btn-group btn-group-sm limit-btn-group dropdown">
              <ul class="dropdown-menu pull-right" id="input-limit">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <li class="active"><a href="<?php echo $limits['href']; ?>" rel="nofollow"><small><?php echo $limits['text']; ?></small></a></li>
                <?php $mmr_limit_active = $limits['text']; ?>
                <?php } else { ?>
                <li><a href="<?php echo $limits['href']; ?>" rel="nofollow"><small><?php echo $limits['text']; ?></small></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-arrows-v hidden-md hidden-lg"></i> <span class="hidden-xs hidden-sm"><?php echo $text_limit; ?> </span><?php echo isset($mmr_limit_active) ? $mmr_limit_active : $limits['text']; ?><i class="fa fa-fw fa-angle-down"></i>
              </button>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <?php foreach ($articles as $article) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $article['href']; ?>"><img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h4>
              <p class="description"><?php echo $article['description']; ?></p>
              <?php if ($configblog_review_status) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($article['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
			  <?php } ?>
            </div>
            <div class="button-group">
				<button type="button" onclick="location.href = ('<?php echo $article['href']; ?>');"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_more; ?></span></button>
			<!--	<button type="button""><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><a class="button button-more" href="<?php echo $article['href']; ?>"><?php echo $button_more; ?></a></span></button>-->
				<button type="button" data-toggle="tooltip" title="<?php echo $article["date_added"];?>" "><i class="fa fa-clock-o"></i></button>
				<button type="button" data-toggle="tooltip" title="<?php echo $text_views; ?> <?php echo $article["viewed"];?>" "><i class="fa fa-eye"></i></button>
			</div>
          </div>
        </div>
        <?php } ?>
      </div>

          <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <!-- <div class="col-sm-6 text-right"><?php //echo $results; ?></div> -->
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>