<ul class="nav nav-pills">
	<li class='<?php echo Arr::get($subnav, "index" ); ?>'><?php echo Html::anchor('silo/index','Index');?></li>
	<li class='<?php echo Arr::get($subnav, "dashboard" ); ?>'><?php echo Html::anchor('silo/dashboard','Dashboard');?></li>
	<li class='<?php echo Arr::get($subnav, "stats" ); ?>'><?php echo Html::anchor('silo/stats','Stats');?></li>

</ul>
<p>Stats</p>