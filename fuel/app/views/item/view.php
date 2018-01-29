<h2>Viewing <span class='muted'>#<?php echo $item->id; ?></span></h2>

<p>
	<strong>Company id:</strong>
	<?php echo $item->company_id; ?></p>
<p>
	<strong>Title:</strong>
	<?php echo $item->title; ?></p>
<p>
	<strong>Category id:</strong>
	<?php echo $item->category_id; ?></p>
<p>
	<strong>Enabled:</strong>
	<?php echo $item->enabled; ?></p>

<?php echo Html::anchor('item/edit/'.$item->id, 'Edit'); ?> |
<?php echo Html::anchor('item', 'Back'); ?>