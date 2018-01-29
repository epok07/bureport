<h2>Viewing <span class='muted'>#<?php echo $machinery->id; ?></span></h2>

<p>
	<strong>Company id:</strong>
	<?php echo $machinery->company_id; ?></p>
<p>
	<strong>Title:</strong>
	<?php echo $machinery->title; ?></p>
<p>
	<strong>Site id:</strong>
	<?php echo $machinery->site_id; ?></p>
<p>
	<strong>Enabled:</strong>
	<?php echo $machinery->enabled; ?></p>

<?php echo Html::anchor('machinery/edit/'.$machinery->id, 'Edit'); ?> |
<?php echo Html::anchor('machinery', 'Back'); ?>