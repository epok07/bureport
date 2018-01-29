<?php echo Form::open(array("class"=>"form-horizontal")); ?>

	<fieldset>
		<div class="form-group">
			<?php echo Form::label('Company id', 'company_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('company_id', Input::post('company_id', isset($silo) ? $silo->company_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Company id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Title', 'title', array('class'=>'control-label')); ?>

				<?php echo Form::input('title', Input::post('title', isset($silo) ? $silo->title : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Title')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Capacity', 'capacity', array('class'=>'control-label')); ?>

				<?php echo Form::input('capacity', Input::post('capacity', isset($silo) ? $silo->capacity : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Capacity')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Unit', 'unit', array('class'=>'control-label')); ?>

				<?php echo Form::input('unit', Input::post('unit', isset($silo) ? $silo->unit : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Unit')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Item id', 'item_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('item_id', Input::post('item_id', isset($silo) ? $silo->item_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Item id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Site id', 'site_id', array('class'=>'control-label')); ?>

				<?php echo Form::input('site_id', Input::post('site_id', isset($silo) ? $silo->site_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Site id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Enabled', 'enabled', array('class'=>'control-label')); ?>

				<?php echo Form::input('enabled', Input::post('enabled', isset($silo) ? $silo->enabled : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Enabled')); ?>

		</div>
		<div class="form-group">
			<label class='control-label'>&nbsp;</label>
			<?php echo Form::submit('submit', 'Save', array('class' => 'btn btn-primary')); ?>		</div>
	</fieldset>
<?php echo Form::close(); ?>