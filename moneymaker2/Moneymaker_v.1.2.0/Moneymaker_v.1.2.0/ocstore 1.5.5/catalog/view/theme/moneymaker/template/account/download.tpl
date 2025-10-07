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
            <div class="table-responsive col-xs-12">
              <br />
              <table class="table table-hover">
                <thead>
                <tr>
                  <td class="text-right"><?php echo $text_order; ?></td>
                  <td><?php echo $text_date_added; ?></td>
                  <td><?php echo $text_name; ?></td>
                  <td class="text-right"><?php echo $text_size; ?></td>
                  <td class="text-right"><?php echo $text_remaining; ?></td>
                  <td></td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($downloads as $download) { ?>
                <tr>
                  <td class="text-right"><?php echo $download['order_id']; ?></td>
                  <td><?php echo $download['date_added']; ?></td>
                  <td><?php echo $download['name']; ?></td>
                  <td class="text-right"><?php echo $download['size']; ?></td>
                  <td class="text-right"><?php echo $download['remaining']; ?></td>
                  <td class="text-right">
                    <?php if ($download['remaining'] > 0) { ?>
                    <a href="<?php echo $download['href']; ?>" class="text-nowrap"><i class="fa fa-fw fa-download"></i><?php echo $button_download; ?></a>
                    <?php } ?>
                  </td>
                </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row pagination_buttons">
            <div class="col-xs-12 text-center"><?php echo $pagination; ?></div>
          </div>
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