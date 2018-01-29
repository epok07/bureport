<h2>Listing <span class='muted'>Silos</span></h2>
<br>
<?php if ($silos): ?>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Company id</th>
			<th>Title</th>
			<th>Capacity</th>
			<th>Unit</th>
			<th>Item id</th>
			<th>Site id</th>
			<th>Enabled</th>
			<th>&nbsp;</th>
		</tr>
	</thead>
	<tbody>
<?php foreach ($silos as $item): ?>		<tr>

			<td><?php echo $item->company_id; ?></td>
			<td><?php echo $item->title; ?></td>
			<td><?php echo $item->capacity; ?></td>
			<td><?php echo $item->unit; ?></td>
			<td><?php echo $item->item_id; ?></td>
			<td><?php echo $item->site_id; ?></td>
			<td><?php echo $item->enabled; ?></td>
			<td>
				<div class="btn-toolbar">
					<div class="btn-group">
						<?php echo Html::anchor('silo/view/'.$item->id, '<i class="icon-eye-open"></i> View', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('silo/edit/'.$item->id, '<i class="icon-wrench"></i> Edit', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('silo/delete/'.$item->id, '<i class="icon-trash icon-white"></i> Delete', array('class' => 'btn btn-sm btn-danger', 'onclick' => "return confirm('Are you sure?')")); ?>					</div>
				</div>

			</td>
		</tr>
<?php endforeach; ?>	</tbody>
</table>

<?php else: ?>
<p>No Silos.</p>

<?php endif; ?><p>
	<?php echo Html::anchor('silo/create', 'Add new Silo', array('class' => 'btn btn-success')); ?>

</p>
