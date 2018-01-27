<?php echo Form::open(array("class"=>"form-horizontal")); ?>

	<fieldset>
		<div class="form-group">
			<?php echo Form::label('Created by', 'created_by', array('class'=>'control-label')); ?>

				<?php echo Form::input('created_by', Input::post('created_by', isset($post) ? $post->created_by : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Created by')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Description', 'description', array('class'=>'control-label')); ?>

				<?php echo Form::input('description', Input::post('description', isset($post) ? $post->description : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Description')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Post id', 'post_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('post_id', Input::post('post_id', isset($post) ? $post->post_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Post id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Share with', 'share_with', array('class'=>'control-label')); ?>

				<?php echo Form::textarea('share_with', Input::post('share_with', isset($post) ? $post->share_with : ''), array('class' => 'col-md-8 form-control', 'rows' => 8, 'placeholder'=>'Share with')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Files', 'files', array('class'=>'control-label')); ?>

				<?php echo Form::input('files', Input::post('files', isset($post) ? $post->files : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Files')); ?>

		</div>
		<div class="form-group">
			<label class='control-label'>&nbsp;</label>
			<?php echo Form::submit('submit', 'Save', array('class' => 'btn btn-primary')); ?>		</div>
	</fieldset>
<?php echo Form::close(); ?>