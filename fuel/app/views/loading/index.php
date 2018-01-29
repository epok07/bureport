<h2>Listing <span class='muted'>Loadings</span></h2>
<br>
<?php if ($loadings): ?>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Company id</th>
			<th>User id</th>
			<th>Start date</th>
			<th>Item id</th>
			<th>Machenery id</th>
			<th>Silo id</th>
			<th>Weight</th>
			<th>Unit</th>
			<th>Vendor id</th>
			<th>Site id</th>
			<th>Canceled</th>
			<th>&nbsp;</th>
		</tr>
	</thead>
	<tbody>
<?php foreach ($loadings as $item): ?>		<tr>

			<td><?php echo $item->company_id; ?></td>
			<td><?php echo $item->user_id; ?></td>
			<td><?php echo $item->start_date; ?></td>
			<td><?php echo $item->item_id; ?></td>
			<td><?php echo $item->machenery_id; ?></td>
			<td><?php echo $item->silo_id; ?></td>
			<td><?php echo $item->weight; ?></td>
			<td><?php echo $item->unit; ?></td>
			<td><?php echo $item->vendor_id; ?></td>
			<td><?php echo $item->site_id; ?></td>
			<td><?php echo $item->canceled; ?></td>
			<td>
				<div class="btn-toolbar">
					<div class="btn-group">
						<?php echo Html::anchor('loading/view/'.$item->id, '<i class="icon-eye-open"></i> View', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('loading/edit/'.$item->id, '<i class="icon-wrench"></i> Edit', array('class' => 'btn btn-default btn-sm')); ?>						<?php echo Html::anchor('loading/delete/'.$item->id, '<i class="icon-trash icon-white"></i> Delete', array('class' => 'btn btn-sm btn-danger', 'onclick' => "return confirm('Are you sure?')")); ?>					</div>
				</div>

			</td>
		</tr>
<?php endforeach; ?>	</tbody>
</table>

<?php else: ?>
<p>No Loadings.</p>

<?php endif; ?><p>
	<?php echo Html::anchor('loading/create', 'Add new Loading', array('class' => 'btn btn-success')); ?>

</p>
