<h2>Editing <span class='muted'>Chat</span></h2>
<br>

<?php echo render('chat/_form'); ?>
<p>
	<?php echo Html::anchor('chat/view/'.$chat->id, 'View'); ?> |
	<?php echo Html::anchor('chat', 'Back'); ?></p>
