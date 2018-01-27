<h2>Viewing <span class='muted'>#<?php echo $post->id; ?></span></h2>

<p>
	<strong>Created by:</strong>
	<?php echo $post->created_by; ?></p>
<p>
	<strong>Description:</strong>
	<?php echo $post->description; ?></p>
<p>
	<strong>Post id:</strong>
	<?php echo $post->post_id; ?></p>
<p>
	<strong>Share with:</strong>
	<?php echo $post->share_with; ?></p>
<p>
	<strong>Files:</strong>
	<?php echo $post->files; ?></p>

<?php echo Html::anchor('post/edit/'.$post->id, 'Edit'); ?> |
<?php echo Html::anchor('post', 'Back'); ?>