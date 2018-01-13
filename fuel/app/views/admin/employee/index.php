<h2>Listing Employees</h2>
<br>
<?php if ($employees): ?>
<table class="table table-striped">
	<thead>
		<tr>
			<th>First name</th>
			<th>Last name</th>
			<th>User id</th>
			<th>Role id</th>
			<th>Jobtile id</th>
			<th>Tel</th>
			<th>Email</th>
			<th>Address1</th>
			<th>Address2</th>
			<th>Avatar file</th>
			<th>Notes</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
<?php foreach ($employees as $item): ?>		<tr>

			<td><?php echo $item->first_name; ?></td>
			<td><?php echo $item->last_name; ?></td>
			<td><?php echo $item->user_id; ?></td>
			<td><?php echo $item->role_id; ?></td>
			<td><?php echo $item->jobtile_id; ?></td>
			<td><?php echo $item->tel; ?></td>
			<td><?php echo $item->email; ?></td>
			<td><?php echo $item->address1; ?></td>
			<td><?php echo $item->address2; ?></td>
			<td><?php echo $item->avatar_file; ?></td>
			<td><?php echo $item->notes; ?></td>
			<td>
				<?php echo Html::anchor('admin/employee/view/'.$item->id, 'View'); ?> |
				<?php echo Html::anchor('admin/employee/edit/'.$item->id, 'Edit'); ?> |
				<?php echo Html::anchor('admin/employee/delete/'.$item->id, 'Delete', array('onclick' => "return confirm('Are you sure?')")); ?>

			</td>
		</tr>
<?php endforeach; ?>	</tbody>
</table>

<?php else: ?>
<p>No Employees.</p>

<?php endif; ?><p>
	<?php echo Html::anchor('admin/employee/create', 'Add new Employee', array('class' => 'btn btn-success')); ?>

</p>
