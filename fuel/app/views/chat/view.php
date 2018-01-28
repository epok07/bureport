<h2>Viewing <span class='muted'>#<?php echo $chat->id; ?></span></h2>

<p>
	<strong>Message:</strong>
	<?php echo $chat->message; ?></p>
<p>
	<strong>From user id:</strong>
	<?php echo $chat->from_user_id; ?></p>
<p>
	<strong>To user id:</strong>
	<?php echo $chat->to_user_id; ?></p>
<p>
	<strong>Status:</strong>
	<?php echo $chat->status; ?></p>
<p>
	<strong>Chat message id:</strong>
	<?php echo $chat->chat_message_id; ?></p>
<p>
	<strong>Private:</strong>
	<?php echo $chat->private; ?></p>

<?php echo Html::anchor('chat/edit/'.$chat->id, 'Edit'); ?> |
<?php echo Html::anchor('chat', 'Back'); ?>