<h2>Viewing #<?php echo $employee->id; ?></h2>

<p>
	<strong>First name:</strong>
	<?php echo $employee->first_name; ?></p>
<p>
	<strong>Last name:</strong>
	<?php echo $employee->last_name; ?></p>
<p>
	<strong>User id:</strong>
	<?php echo $employee->user_id; ?></p>
<p>
	<strong>Role id:</strong>
	<?php echo $employee->role_id; ?></p>
<p>
	<strong>Jobtile id:</strong>
	<?php echo $employee->jobtile_id; ?></p>
<p>
	<strong>Tel:</strong>
	<?php echo $employee->tel; ?></p>
<p>
	<strong>Email:</strong>
	<?php echo $employee->email; ?></p>
<p>
	<strong>Address1:</strong>
	<?php echo $employee->address1; ?></p>
<p>
	<strong>Address2:</strong>
	<?php echo $employee->address2; ?></p>
<p>
	<strong>Avatar file:</strong>
	<?php echo $employee->avatar_file; ?></p>
<p>
	<strong>Notes:</strong>
	<?php echo $employee->notes; ?></p>

<?php echo Html::anchor('admin/employee/edit/'.$employee->id, 'Edit'); ?> |
<?php echo Html::anchor('admin/employee', 'Back'); ?>