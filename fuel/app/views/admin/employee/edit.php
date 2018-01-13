<h2>Editing Employee</h2>
<br>

<?php echo render('admin/employee/_form'); ?>
<p>
	<?php echo Html::anchor('admin/employee/view/'.$employee->id, 'View'); ?> |
	<?php echo Html::anchor('admin/employee', 'Back'); ?></p>
