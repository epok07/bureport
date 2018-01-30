<?php echo Form::open(array("class"=>"form-horizontal")); ?>

	<fieldset>
		<div class="form-group">
			<?php echo Form::label('Company id', 'company_id', array('class'=>'control-label')); ?>

				<?php //echo Form::input('company_id', Input::post('company_id', isset($loading) ? $loading->company_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Company id')); ?>

				<?php echo Form::select('company_id', Input::post('company_id', isset($loading) ? $loading->company_id : '-'), Model_Company::get_dropdownlist(), array('class' => 'col-sm-10 form-control', 'placeholder'=>'Company id')); ?>

		</div>
		 <div class="form-group">
			<?php echo Form::label('User id', 'user_id', array('class'=>'control-label')); ?>

				<?php //echo Form::input('user_id', $current_user->id, array('class' => 'col-md-4 form-control', 'placeholder'=>'User id')); ?>

				<?php echo Form::select('user_id', $current_user->id, Model_Employee::get_dropdownlist(), array('class' => 'col-sm-10 form-control', 'placeholder'=>'Item id', 'disabled'=>'disabled')); ?>

				<?php echo Form::hidden('user_id',  $current_user->id ); ?>

		</div> 
		<div class="form-group">
			<?php echo Form::label('Start date', 'start_date', array('class'=>'control-label')); ?>

				<?php echo Form::input('start_date', Input::post('start_date', isset($loading) ? $loading->start_date : ''), array('class' => 'col-md-4 form-control datetimepicker', 'placeholder'=>'Start date')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Item id', 'item_id', array('class'=>'control-label')); ?>

				<?php //echo Form::input('item_id', Input::post('item_id', isset($loading) ? $loading->item_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Item id')); ?>

				<?php echo Form::select('item_id', Input::post('item_id', isset($loading) ? $loading->item_id : '-'), Model_Item::get_dropdownlist(), array('class' => 'col-sm-10 form-control', 'placeholder'=>'Item id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Machenery id', 'machenery_id', array('class'=>'control-label')); ?>

				<?php //echo Form::input('machenery_id', Input::post('machenery_id', isset($loading) ? $loading->machenery_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Machenery id')); ?>

				<?php echo Form::select('machenery_id', Input::post('machenery_id', isset($loading) ? $loading->machenery_id : '-'), Model_Machinery::get_dropdownlist(), array('class' => 'col-sm-10 form-control', 'placeholder'=>'Item id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Silo id', 'silo_id', array('class'=>'control-label')); ?>

				<?php //echo Form::input('silo_id', Input::post('silo_id', isset($loading) ? $loading->silo_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Silo id')); ?>

				<?php echo Form::select('silo_id', Input::post('silo_id', isset($loading) ? $loading->silo_id : '-'), Model_Silo::get_dropdownlist(), array('class' => 'col-sm-10 form-control', 'placeholder'=>'silo_id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Weight', 'weight', array('class'=>'control-label')); ?>

				<?php echo Form::input('weight', Input::post('weight', isset($loading) ? $loading->weight : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Weight')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Unit', 'unit', array('class'=>'control-label')); ?>

				<?php //echo Form::input('unit', Input::post('unit', isset($loading) ? $loading->unit : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Unit')); ?>

				<?php echo Form::select('unit', Input::post('unit', isset($loading) ? $loading->unit : 't'), ['-' => "Please select ...", 'kt'=>"Kilo tons", 't'=> "tons", 'kg' => "kilo gramms", 'm3'=> 'Cubic meter' ], array('class' => 'col-sm-10 form-control', 'placeholder'=>'unit')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Vendor id', 'vendor_id', array('class'=>'control-label')); ?>

				<?php // echo Form::input('vendor_id', Input::post('vendor_id', isset($loading) ? $loading->vendor_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Vendor id')); ?>

				<?php echo Form::select('vendor_id', Input::post('vendor_id', isset($loading) ? $loading->vendor_id : '-'), Model_Vendor::get_dropdownlist(), array('class' => 'col-sm-10 form-control', 'placeholder'=>'Site Id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Site id', 'site_id', array('class'=>'control-label')); ?>

				<?php //echo Form::input('site_id', Input::post('site_id', isset($loading) ? $loading->site_id : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Site id')); ?>

				<?php echo Form::select('site_id', Input::post('site_id', isset($loading) ? $loading->site_id : '-'), Model_Site::get_dropdownlist(), array('class' => 'col-sm-10 form-control', 'placeholder'=>'Site Id')); ?>

		</div>
		<div class="form-group">
			<?php echo Form::label('Canceled', 'canceled', array('class'=>'control-label')); ?>

				<?php //echo Form::input('canceled', Input::post('canceled', isset($loading) ? $loading->canceled : ''), array('class' => 'col-md-4 form-control', 'placeholder'=>'Canceled')); ?>

				<?php echo Form::select('canceled', Input::post('canceled', isset($loading) ? $loading->canceled : 0), ['-' => "Please select ...", '0'=>"valid", '1'=> "Cancelled" ], array('class' => 'col-sm-10 form-control', 'placeholder'=>'canceled')); ?>

		</div>
		<div class="form-group">
			<label class='control-label'>&nbsp;</label>
			<?php echo Form::submit('submit', 'Save', array('class' => 'btn btn-primary')); ?>		</div>
	</fieldset>
<?php echo Form::close(); ?>