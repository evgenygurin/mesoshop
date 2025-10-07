   <li class="dropdown">
    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-loading-text="<?php echo $text_blog; ?>" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-book fa-1x"></i> <span><?php echo $text_blog; ?></span> <i class="fa fa-angle-down"></i></a>
 	<ul class="dropdown-menu">
	<?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>    
				<?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><i class="fa fa-angle-right"></i> <?php echo $child['name']; ?></a></li>
				<?php } ?>
			<?php } ?>
		<?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
	<?php } ?>
	</ul>
