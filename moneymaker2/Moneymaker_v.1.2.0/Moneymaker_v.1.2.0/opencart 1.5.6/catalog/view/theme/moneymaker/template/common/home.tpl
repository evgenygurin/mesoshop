<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="row">
    <div class="col-sm-12">
      <?php echo $content_top; ?>
      <?php if ($this->config->get('mmr_advantages_enabled')&&$this->config->get('mmr_advantages')&&$this->config->get('mmr_advantages_display_home')) { ?>
      <div class="row advantages text-center pos-13" style="margin-top: -5px;">
        <?php $mmr_advantages = $this->config->get('mmr_advantages'); ?>
        <?php foreach ($mmr_advantages as $key => $mmr_advantage) { ?><?php if ($mmr_advantage['link_id']) { ?><a href="route=information/information&amp;information_id=<?php echo $mmr_advantage['link_id']; ?>" data-to="index.php?route=information/information/info&amp;information_id=<?php echo $mmr_advantage['link_id']; ?>" class="colorbox_popup img-thumbnail-transparent r<?php echo count($mmr_advantages); ?>"><?php } else { ?><div class="img-thumbnail-transparent r<?php echo count($mmr_advantages); ?>"><?php } ?><i class="fa fa-2x fa-<?php echo $mmr_advantage['icon']; ?>"></i><span><?php echo isset($mmr_advantage['text'][$this->config->get('config_language_id')]) ? $mmr_advantage['text'][$this->config->get('config_language_id')] : ''; ?></span><?php if ($mmr_advantage['link_id']) { ?></a><?php } else { ?></div><?php } ?><?php } ?>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>