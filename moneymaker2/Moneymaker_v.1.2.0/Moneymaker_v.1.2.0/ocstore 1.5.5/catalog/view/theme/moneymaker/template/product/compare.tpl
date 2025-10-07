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
          <?php if ($products) { ?>
          <div class="table-responsive">
            <table class="table">
              <tbody>
              <tr>
                <td></td>
                <?php foreach ($products as $product) { ?>
                <td class="text-center"><?php if ($products[$product['product_id']]['thumb']) { ?>
                  <img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" title="<?php echo $products[$product['product_id']]['name']; ?>" class="img-thumbnail" />
                  <?php } ?></td>
                <?php } ?>
              </tr>
              <tr>
                <td><?php echo $text_name; ?></td>
                <?php foreach ($products as $product) { ?>
                <td class="name n<?php echo count($products); ?> text-bigger text-center">
                  <p><a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a></p>
                  <div class="price">
                    <div>
                      <?php if ($products[$product['product_id']]['price']) { ?>
                      <?php if (!$products[$product['product_id']]['special']) { ?>
                      <span class="price-ldot">&bull;</span>
                      <?php echo $products[$product['product_id']]['price']; ?>
                      <span class="price-rdot">&bull;</span>
                      <?php } else { ?>
                      <span class="price-ldot">&bull;</span>
                      <span class="price-new"><?php echo $products[$product['product_id']]['special']; ?></span>
                      <span class="price-rdot">&bull;</span><br /><span class="price-old"><?php echo $products[$product['product_id']]['price']; ?></span>
                      <?php } ?>
                      <?php } ?>
                    </div>
                  </div>
                </td>
                <?php } ?>
              </tr>
              <tr class="stock">
                <td><?php echo $text_availability; ?></td>
                <?php foreach ($products as $product) { ?>
                <td class="text-center"><?php echo $products[$product['product_id']]['availability']; ?></td>
                <?php } ?>
              </tr>
              <?php if ($review_status) { ?>
              <tr>
                <td><?php echo $text_rating; ?></td>
                <?php foreach ($products as $product) { ?>
                <td class="text-center"><?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($products[$product['product_id']]['rating'] < $i) { ?>
                  <i class="fa fa-star-o"></i>
                  <?php } else { ?>
                  <i class="fa fa-star"></i>
                  <?php } ?>
                  <?php } ?>
                  <br />
                  <small><?php echo $products[$product['product_id']]['reviews']; ?></small></td>
                <?php } ?>
              </tr>
              <?php } ?>
              </tbody>
              <?php if ($this->config->get('mmr_catalog_compare_model_hidden')!=1||$this->config->get('mmr_catalog_compare_manufacturer_hidden')!=1||$this->config->get('mmr_catalog_compare_description_hidden')!=1||$this->config->get('mmr_catalog_compare_weight_hidden')!=1||$this->config->get('mmr_catalog_compare_dimension_hidden')!=1) { ?>
              <tbody>
              <tr>
                <th></th><th class="text-center" colspan="<?php echo count($products); ?>"><strong><?php echo $text_product; ?></strong></th>
              </tr>
              </tbody>
              <tbody>
              <?php if ($this->config->get('mmr_catalog_compare_model_hidden')!=1) { ?>
              <tr>
                <td><?php echo $text_model; ?></td>
                <?php foreach ($products as $product) { ?>
                <td class="text-center"><?php echo $products[$product['product_id']]['model']; ?></td>
                <?php } ?>
              </tr>
              <?php } ?>
              <?php if ($this->config->get('mmr_catalog_compare_manufacturer_hidden')!=1) { ?>
              <tr>
                <td><?php echo $text_manufacturer; ?></td>
                <?php foreach ($products as $product) { ?>
                <td class="text-center"><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
                <?php } ?>
              </tr>
              <?php } ?>
              <?php if ($this->config->get('mmr_catalog_compare_description_hidden')!=1) { ?>
              <tr>
                <td><?php echo $text_summary; ?></td>
                <?php foreach ($products as $product) { ?>
                <td class="description text-center"><small><?php echo $products[$product['product_id']]['description']; ?></small></td>
                <?php } ?>
              </tr>
              <?php } ?>
              <?php if ($this->config->get('mmr_catalog_compare_weight_hidden')!=1) { ?>
              <tr>
                <td><?php echo $text_weight; ?></td>
                <?php foreach ($products as $product) { ?>
                <td class="text-center"><?php echo $products[$product['product_id']]['weight']; ?></td>
                <?php } ?>
              </tr>
              <?php } ?>
              <?php if ($this->config->get('mmr_catalog_compare_dimension_hidden')!=1) { ?>
              <tr>
                <td><?php echo $text_dimension; ?></td>
                <?php foreach ($products as $product) { ?>
                <td class="text-center"><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
                <?php } ?>
              </tr>
              <?php } ?>
              </tbody>
              <?php } ?>
              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <tbody>
              <tr>
                <th></th><th class="text-center" colspan="<?php echo count($products); ?>"><strong><?php echo $attribute_group['name']; ?></strong></th>
              </tr>
              </tbody>
              <tbody>
              <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
              <tr>
                <td><?php echo $attribute['name']; ?></td>
                <?php foreach ($products as $product) { ?>
                <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
                <td class="text-center"><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
                <?php } else { ?>
                <td></td>
                <?php } ?>
                <?php } ?>
              </tr>
              <?php } ?>
              </tbody>
              <?php } ?>
              <tbody class="no-border">
              <tr><td>&nbsp;</td></tr>
              <tr>
                <td></td>
                <?php foreach ($products as $product) { ?>
                <td class="text-center"><p><a href="javascript:void(0);" class="btn btn-primary btn-lg" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a></p><p><a href="<?php echo $product['remove']; ?>" class="btn btn-default"><?php echo $button_remove; ?></a></p></td>
                <?php } ?>
              </tr>
              </tbody>
            </table>
          </div>
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
              <p><a href="<?php echo $continue; ?>" class="btn btn-lg btn-primary"><i class="fa fa-chevron-circle-right"></i> <?php echo $button_continue; ?></a></p>
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