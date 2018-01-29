<h2>Viewing <span class='muted'>#<?php echo $loading->id; ?></span></h2>

<p>
	<strong>Company id:</strong>
	<?php echo $loading->company_id; ?></p>
<p>
	<strong>User id:</strong>
	<?php echo $loading->user_id; ?></p>
<p>
	<strong>Start date:</strong>
	<?php echo $loading->start_date; ?></p>
<p>
	<strong>Item id:</strong>
	<?php echo $loading->item_id; ?></p>
<p>
	<strong>Machenery id:</strong>
	<?php echo $loading->machenery_id; ?></p>
<p>
	<strong>Silo id:</strong>
	<?php echo $loading->silo_id; ?></p>
<p>
	<strong>Weight:</strong>
	<?php echo $loading->weight; ?></p>
<p>
	<strong>Unit:</strong>
	<?php echo $loading->unit; ?></p>
<p>
	<strong>Vendor id:</strong>
	<?php echo $loading->vendor_id; ?></p>
<p>
	<strong>Site id:</strong>
	<?php echo $loading->site_id; ?></p>
<p>
	<strong>Canceled:</strong>
	<?php echo $loading->canceled; ?></p>

<?php echo Html::anchor('loading/edit/'.$loading->id, 'Edit'); ?> |
<?php echo Html::anchor('loading', 'Back'); ?>