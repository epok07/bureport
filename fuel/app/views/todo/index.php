<h2>Listing <span class='muted'>Todos</span></h2>
<br>
<?php if ($todos): ?>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Created by</th>
			<th>Title</th>
			<th>Description</th>
			<th>Labels</th>
			<th>Status</th>
			<th>Start date</th>
			<th>&nbsp;</th>
		</tr>
	</thead>
	<tbody>
<?php foreach ($todos as $item): ?>		<tr>

			<td><?php echo $item->created_by; ?></td>
			<td><?php echo $item->title; ?></td>
			<td><?php echo $item->description; ?></td>
			<td><?php echo $item->labels; ?></td>
			<td><?php echo $item->status; ?></td>
			<td><?php echo $item->start_date; ?></td>
			<td>
				<div class="btn-toolbar">
					<div class="btn-group">
						<?php echo Html::anchor('todo/view/'.$item->id, '<i class="icon-eye-open"></i> View', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('todo/edit/'.$item->id, '<i class="icon-wrench"></i> Edit', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('todo/delete/'.$item->id, '<i class="icon-trash icon-white"></i> Delete', array('class' => 'btn btn-sm btn-danger', 'onclick' => "return confirm('Are you sure?')")); ?>					</div>
				</div>

			</td>
		</tr>
<?php endforeach; ?>	</tbody>
</table>

<?php else: ?>
<p>No Todos.</p>

<?php endif; ?><p>
	<?php echo Html::anchor('todo/create', 'Add new Todo', array('class' => 'btn btn-success')); ?>

</p>
