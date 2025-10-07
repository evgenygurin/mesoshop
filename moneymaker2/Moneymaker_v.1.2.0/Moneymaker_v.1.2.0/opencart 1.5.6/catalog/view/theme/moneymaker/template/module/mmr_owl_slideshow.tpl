<div class="box">
  <div class="box-content">
    <!--[if IE 8]>
    <style type="text/css">
      /*i love ie8*/
      #mmr-owl<?php echo $module; ?> {width: <?php echo $items_desktop*$width;?>px}
      #progressBar<?php echo $module; ?> {display: none}
    </style>
    <![endif]-->
    <div id="mmr-owl<?php echo $module; ?>" class="owl-carousel">
      <?php foreach ($banners as $key => $banner) { ?>
      <?php if ($banner['link']) { ?>
      <div class="item"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a></div>
      <?php } else { ?>
      <div class="item"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></div>
      <?php } ?>
      <?php } ?>
    </div>
  </div>
</div>

<script type="text/javascript"><!--
$(document).ready(function() {
  var time = <?php echo $delay; ?>;
  var $progressBar,
      $bar,
      $elem,
      isPause,
      tick,
      percentTime;

  $("#mmr-owl<?php echo $module; ?>").owlCarousel({
    itemsCustom : [[0, <?php echo $items_mobile; ?>], [400, <?php echo $items_tablet_small; ?>], [700, <?php echo $items_tablet; ?>], [1000, <?php echo $items_desktop_small; ?>], [1200, <?php echo $items_desktop; ?>]],
    <?php if ($navigation) { ?>
      navigation : true,
      navigationText : ["<button class='btn btn-default' type='button'><i class='fa fa-fw fa-chevron-left'></i></button>","<button class='btn btn-default' type='button'><i class='fa fa-fw fa-chevron-right'></i></button>"],
    <?php } ?>
    <?php if (!$pagination) { ?>
      pagination : false,
    <?php } ?>
    slideSpeed : 800,
    <?php if ($css3_transitions) { ?>
      transitionStyle : "<?php echo $css3_transitions_type; ?>",
    <?php } ?>

    <?php if ($autoplay) { ?>
      afterInit : progressBar,
      afterMove : moved,
      startDragging : pauseOnDragging,
    <?php } ?>
  });

  <?php if ($autoplay) { ?>
  function progressBar(elem){
    $elem = elem;
    buildProgressBar();
    start();
  }

  function buildProgressBar(){
    $progressBar = $("<div>",{id:"progressBar<?php echo $module; ?>"});
    $progressBar.addClass("progressBar");
    $bar = $("<div>",{id:"bar"});
    <?php if ($progress) { ?>
      $progressBar.append($bar).appendTo($elem);
    <?php } ?>
  }

  function start() {
    percentTime = 0;
    isPause = false;
    tick = setInterval(interval, 10);
  };

  function interval() {
    if(isPause === false){
      percentTime += 1 / time;
      $bar.css({
        width: percentTime+"%"
      });
      if(percentTime >= 100){
        $elem.trigger('owl.next')
      }
    }
  }

  function pauseOnDragging(){
    isPause = true;
  }

  function moved(){
    clearTimeout(tick);
    start();
  }

   $elem.on('mouseover',function(){
     isPause = true;
   })
   $elem.on('mouseout',function(){
     isPause = false;
   })
   <?php } ?>

});
--></script>