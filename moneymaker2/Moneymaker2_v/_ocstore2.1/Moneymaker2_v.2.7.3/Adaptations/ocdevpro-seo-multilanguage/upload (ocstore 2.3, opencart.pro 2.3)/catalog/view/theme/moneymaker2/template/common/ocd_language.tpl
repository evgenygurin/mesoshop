<?php if (count($languages) > 1) { ?>
<?php if (!isset($moneymaker2_header_strip_language)) $moneymaker2_header_strip_language = 3; ?>
<?php if (!isset($moneymaker2_header_strip_language_class)) $moneymaker2_header_strip_language_class = "hidden-lg hidden-md hidden-sm visible-xlg"; ?>
<?php if ($moneymaker2_header_strip_language>1) { ?>
<li class="dropdown" id="language-dropdown">
    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-globe"></i> <span class="<?php echo $moneymaker2_header_strip_language_class; ?>"><?php echo $text_language; ?> <i class="fa fa-angle-down"></i></span></a>
    <ul class="dropdown-menu keep-open" id="ocd_multilang">
        <?php foreach ($languages as $language) { ?>
        <li <?php if ($language['code'] == $code) { ?>class="active"<?php } ?>><a data-href="<?php echo $language['href_lang']; ?>" class="language-select" href="<?php echo $language['href']; ?>"><span><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>"></span>&nbsp; <?php echo $language['name']; ?></a></li>
        <?php } ?>
    </ul>
</li>
<?php } else { ?>
<li>
    <ul class="dropdown-menu" id="ocd_multilang">
        <li class="dropdown-header"><?php echo $text_language; ?></li>
        <?php foreach ($languages as $language) { ?>
        <li <?php if ($language['code'] == $code) { ?>class="active"<?php } ?>><a data-href="<?php echo $language['href_lang']; ?>" class="language-select" href="<?php echo $language['href']; ?>"><span><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>"></span>&nbsp; <?php echo $language['name']; ?></a></li>
        <?php } ?>
    </ul>
</li>
<li role="separator" class="divider clearfix"></li>
<?php } ?>
<script>
    $('#ocd_multilang a').each(function (e) {
        $(this).attr('href', $(this).attr('data-href'));
    });
</script>
<?php } ?>