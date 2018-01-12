<ul class="nav nav-pills">
	<li class='<?php echo Arr::get($subnav, "index" ); ?>'><?php echo Html::anchor('dashboard/index','Index');?></li>
	<li class='<?php echo Arr::get($subnav, "day" ); ?>'><?php echo Html::anchor('dashboard/day','Day');?></li>
	<li class='<?php echo Arr::get($subnav, "week" ); ?>'><?php echo Html::anchor('dashboard/week','Week');?></li>
	<li class='<?php echo Arr::get($subnav, "month" ); ?>'><?php echo Html::anchor('dashboard/month','Month');?></li>
	<li class='<?php echo Arr::get($subnav, "year" ); ?>'><?php echo Html::anchor('dashboard/year','Year');?></li>

</ul>
<p>Year</p>