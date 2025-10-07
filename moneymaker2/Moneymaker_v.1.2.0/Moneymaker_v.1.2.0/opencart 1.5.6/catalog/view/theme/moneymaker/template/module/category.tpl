<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <ul class="box-category">
      <?php foreach ($categories as $category) { ?>
        <?php if ($category['category_id'] == $category_id) { ?>
          <li><a <?php if ($child_id==0) { ?>class="active" <?php } ?>href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php if ($category['children']) { ?>
            <li><ul class="list-unstyled">
            <?php foreach ($category['children'] as $child) { ?>
              <li><a <?php if ($child['category_id'] == $child_id) { ?>class="active" <?php } ?>href="<?php echo $child['href']; ?>"><small>-&nbsp;<?php echo $child['name']; ?></small></a></li>
            <?php } ?>
            </ul></li>
          <?php } ?>
        <?php } else { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
      <?php } ?>
    </ul>
  </div>
</div>