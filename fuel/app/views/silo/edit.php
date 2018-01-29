<h2>Editing <span class='muted'>Silo</span></h2>
<br>

<?php echo render('silo/_form'); ?>
<p>
	<?php echo Html::anchor('silo/view/'.$silo->id, 'View'); ?> |
	<?php echo Html::anchor('silo', 'Back'); ?></p>
