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
          <br />
          <?php if ($categories) { ?>
            <p><?php echo $text_index; ?>
              <?php foreach ($categories as $category) { ?>
              &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a>
              <?php } ?>
            </p>
            <?php foreach ($categories as $category) { ?>
            <h3 id="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></h3>
            <?php if ($category['manufacturer']) { ?>
            <?php foreach (array_chunk($category['manufacturer'], 3) as $manufacturers) { ?>
            <div class="row">
              <?php foreach ($manufacturers as $manufacturer) { ?>
              <div class="col-sm-4"><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></div>
              <?php } ?>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          <?php } else { ?>
          <div class="row">
            <div class="col-xs-12">
              <p>
                <?php echo $text_empty; ?>
              </p>
            </div>
          </div>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center">
              <p><a class="btn btn-lg btn-primary" href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a></p>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>