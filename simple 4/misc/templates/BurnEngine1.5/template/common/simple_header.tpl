<?php $tbData->slotStartHeader(); ?>
<?php echo $header; ?>
<?php $tbData->slotStopHeader(); ?>


<?php // Breadcrumbs -------------------------------------------------- ?>

<?php $tbData->slotStart(($simple_page == 'simplecheckout' ? 'checkout/' : 'account/').$simple_page.'.breadcrumbs'); ?>
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php $tbData->slotStop(); ?>

<?php // Page title --------------------------------------------------- ?>

<?php $tbData->slotStart(($simple_page == 'simplecheckout' ? 'checkout/' : 'account/').$simple_page.'.page_title'); ?>
<h1><?php echo $heading_title; ?></h1>
<?php $tbData->slotStop(); ?>

<?php // Page content ------------------------------------------------- ?>

<?php $tbData->slotStart(($simple_page == 'simplecheckout' ? 'checkout/' : 'account/').$simple_page.'.page_content'); ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>