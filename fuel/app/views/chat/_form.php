<?php echo Form::open(array("class"=>"form-horizontal")); ?>

<?php echo Form::hidden('from_user_id', $this->current_user->id, array('class' => 'col-sm-10 form-control', 'placeholder'=>'Form User Id')); ?>

	<fieldset>
		<div class="form-group">
			<?php echo Form::label('Message', 'message', array('class'=>'control-label')); ?>

				<?php echo Form::input('message', Input::post('message', isset($chat) ? $chat->message : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Message')); ?>

		</div>
		 
		<div class="form-group">
			<?php echo Form::label('To user id', 'to_user_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('to_user_id', Input::post('to_user_id', isset($chat) ? $chat->to_user_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'To user id')); ?>

		</div>
		 
		<div class="form-group">
			<?php echo Form::label('Chat message id', 'chat_message_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('chat_message_id', Input::post('chat_message_id', isset($chat) ? $chat->chat_message_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Chat message id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Private', 'private', array('class'=>'control-label')); ?>

				<?php echo Form::input('private', Input::post('private', isset($chat) ? $chat->private : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Private')); ?>

		</div>
		<div class="form-group">
			<label class='control-label'>&nbsp;</label>
			<?php echo Form::submit('submit', 'Save', array('class' => 'btn btn-primary')); ?>		</div>
	</fieldset>
<?php echo Form::close(); ?>

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae voluptate corporis facere adipisci, sint architecto voluptatibus, modi itaque vel sunt, delectus cum fugit quod fuga, ad distinctio! Magnam odio, ex quisquam rerum porro molestias explicabo quaerat eum voluptatibus sequi quo, quis at nulla doloremque sint.