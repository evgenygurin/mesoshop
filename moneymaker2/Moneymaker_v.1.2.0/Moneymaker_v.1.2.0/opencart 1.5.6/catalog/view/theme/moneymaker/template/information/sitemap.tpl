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
          <div class="row">
            <div class="col-sm-6">
              <ul class="list-unstyled">
                <?php foreach ($categories as $category_1) { ?>
                <li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
                  <?php if ($category_1['children']) { ?>
                  <ul>
                    <?php foreach ($category_1['children'] as $category_2) { ?>
                    <li class="list-unstyled"><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                      <?php if ($category_2['children']) { ?>
                      <ul>
                        <?php foreach ($category_2['children'] as $category_3) { ?>
                        <li class="list-unstyled"><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                        <?php } ?>
                      </ul>
                      <?php } ?>
                    </li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
            </div>
            <div class="col-sm-6">
              <ul class="list-unstyled">
                <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                  <ul>
                    <li class="list-unstyled"><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                    <li class="list-unstyled"><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                    <li class="list-unstyled"><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                    <li class="list-unstyled"><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
                    <li class="list-unstyled"><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                  </ul>
                </li>
                <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
                <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
                <li class="text-neutral"><?php echo $text_information; ?>
                  <ul>
                    <?php foreach ($informations as $information) { ?>
                    <li class="list-unstyled"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                    <li class="list-unstyled"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>