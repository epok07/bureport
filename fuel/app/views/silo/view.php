<h2>Viewing <span class='muted'>#<?php echo $silo->id; ?></span></h2>

<p>
	<strong>Company id:</strong>
	<?php echo $silo->company_id; ?></p>
<p>
	<strong>Title:</strong>
	<?php echo $silo->title; ?></p>
<p>
	<strong>Capacity:</strong>
	<?php echo $silo->capacity; ?></p>
<p>
	<strong>Unit:</strong>
	<?php echo $silo->unit; ?></p>
<p>
	<strong>Item id:</strong>
	<?php echo $silo->item_id; ?></p>
<p>
	<strong>Site id:</strong>
	<?php echo $silo->site_id; ?></p>
<p>
	<strong>Enabled:</strong>
	<?php echo $silo->enabled; ?></p>

<?php echo Html::anchor('silo/edit/'.$silo->id, 'Edit'); ?> |
<?php echo Html::anchor('silo', 'Back'); ?>