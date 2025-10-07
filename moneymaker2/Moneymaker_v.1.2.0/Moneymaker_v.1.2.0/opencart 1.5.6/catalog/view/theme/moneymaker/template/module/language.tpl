<?php if (count($languages) > 1) { ?>
<li class="dropdown" id="language">
  <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><?php echo $text_language; ?> <span class="caret"></span></a>
  <form id="language_form" class="hidden" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </form>
  <ul class="dropdown-menu">
    <?php foreach ($languages as $language) { ?>
    <li <?php if ($language['code'] == $language_code) { ?>class="active"<?php } ?>><a href="javascript:void(0);" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();"><span><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" /></span>&nbsp;&nbsp; <?php echo $language['name']; ?></a></li>
    <?php } ?>
  </ul>
</li>
<?php } ?>