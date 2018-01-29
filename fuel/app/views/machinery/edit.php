<h2>Editing <span class='muted'>Machinery</span></h2>
<br>

<?php echo render('machinery/_form'); ?>
<p>
	<?php echo Html::anchor('machinery/view/'.$machinery->id, 'View'); ?> |
	<?php echo Html::anchor('machinery', 'Back'); ?></p>
