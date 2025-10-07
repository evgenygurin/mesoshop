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
          <?php if ($profiles) { ?>
            <div class="row">
              <div class="table-responsive col-xs-12">
                <table class="table">
                    <thead>
                    <tr>
                        <td class="left"><?php echo $column_profile_id; ?></td>
                        <td class="left"><?php echo $column_created; ?></td>
                        <td class="left"><?php echo $column_status; ?></td>
                        <td class="left"><?php echo $column_product; ?></td>
                        <td class="right"><?php echo $column_action; ?></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php if ($profiles) { ?>
                    <?php foreach ($profiles as $profile) { ?>
                    <tr>
                        <td class="left">#<?php echo $profile['id']; ?></td>
                        <td class="left"><?php echo $profile['created']; ?></td>
                        <td class="left"><?php echo $status_types[$profile['status']]; ?></td>
                        <td class="left"><?php echo $profile['name']; ?></td>
                        <td class="right"><a href="<?php echo $profile['href']; ?>" class="text-nowrap"><i class="fa fa-fw fa-file-text"></i><?php echo $button_view; ?></a></td>
                    </tr>
                    <?php } ?>
                    <?php } else { ?>
                    <tr>
                        <td class="center" colspan="5"><?php echo $text_empty; ?></td>
                    </tr>
                    <?php } ?>
                    </tbody>
                </table>
              </div>
            </div>
            <div class="row pagination_buttons">
              <div class="col-xs-12 text-center"><?php echo $pagination; ?></div>
            </div>
          <?php } else { ?>
            <div class="row">
              <div class="col-xs-12">
                <p>
                  <?php echo $text_empty; ?>
                </p>
              </div>
            </div>
          <?php } ?>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center">
              <p><a href="<?php echo $continue; ?>" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></a></p>
            </div>
          </div>
        </div>
      </div>
    <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>