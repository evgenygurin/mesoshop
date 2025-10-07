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
                  <div class="form-group">
                    <label class="radio-inline">
                      <?php echo $entry_newsletter; ?>
                    </label>
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
<?php echo $footer; ?>