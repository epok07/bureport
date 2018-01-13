<?php echo Form::open(array("class"=>"form-horizontal")); ?>

	<fieldset>
		<div class="form-group">
			<?php echo Form::label('First name', 'first_name', array('class'=>'control-label')); ?>

				<?php echo Form::input('first_name', Input::post('first_name', isset($employee) ? $employee->first_name : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'First name')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Last name', 'last_name', array('class'=>'control-label')); ?>

				<?php echo Form::input('last_name', Input::post('last_name', isset($employee) ? $employee->last_name : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Last name')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('User id', 'user_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('user_id', Input::post('user_id', isset($employee) ? $employee->user_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'User id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Role id', 'role_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('role_id', Input::post('role_id', isset($employee) ? $employee->role_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Role id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Jobtile id', 'jobtile_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('jobtile_id', Input::post('jobtile_id', isset($employee) ? $employee->jobtile_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Jobtile id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Tel', 'tel', array('class'=>'control-label')); ?>

				<?php echo Form::input('tel', Input::post('tel', isset($employee) ? $employee->tel : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Tel')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Email', 'email', array('class'=>'control-label')); ?>

				<?php echo Form::input('email', Input::post('email', isset($employee) ? $employee->email : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Email')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Address1', 'address1', array('class'=>'control-label')); ?>

				<?php echo Form::input('address1', Input::post('address1', isset($employee) ? $employee->address1 : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Address1')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Address2', 'address2', array('class'=>'control-label')); ?>

				<?php echo Form::input('address2', Input::post('address2', isset($employee) ? $employee->address2 : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Address2')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Avatar file', 'avatar_file', array('class'=>'control-label')); ?>

				<?php echo Form::input('avatar_file', Input::post('avatar_file', isset($employee) ? $employee->avatar_file : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Avatar file')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Notes', 'notes', array('class'=>'control-label')); ?>

				<?php echo Form::textarea('notes', Input::post('notes', isset($employee) ? $employee->notes : ''), array('class' => 'col-md-8 form-control', 'rows' => 8, 'placeholder'=>'Notes')); ?>

		</div>
		<div class="form-group">
			<label class='control-label'>&nbsp;</label>
			<?php echo Form::submit('submit', 'Save', array('class' => 'btn btn-primary')); ?>		</div>
	</fieldset>
<?php echo Form::close(); ?>