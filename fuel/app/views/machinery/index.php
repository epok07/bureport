<h2>Listing <span class='muted'>Machineries</span></h2>
<br>
<?php if ($machineries): ?>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Company id</th>
			<th>Title</th>
			<th>Site id</th>
			<th>Enabled</th>
			<th>&nbsp;</th>
		</tr>
	</thead>
	<tbody>
<?php foreach ($machineries as $item): ?>		<tr>

			<td><?php echo $item->company_id; ?></td>
			<td><?php echo $item->title; ?></td>
			<td><?php echo $item->site_id; ?></td>
			<td><?php echo $item->enabled; ?></td>
			<td>
				<div class="btn-toolbar">
					<div class="btn-group">
						<?php echo Html::anchor('machinery/view/'.$item->id, '<i class="icon-eye-open"></i> View', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('machinery/edit/'.$item->id, '<i class="icon-wrench"></i> Edit', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('machinery/delete/'.$item->id, '<i class="icon-trash icon-white"></i> Delete', array('class' => 'btn btn-sm btn-danger', 'onclick' => "return confirm('Are you sure?')")); ?>					</div>
				</div>

			</td>
		</tr>
<?php endforeach; ?>	</tbody>
</table>

<?php else: ?>
<p>No Machineries.</p>

<?php endif; ?><p>
	<?php echo Html::anchor('machinery/create', 'Add new Machinery', array('class' => 'btn btn-success')); ?>

</p>
