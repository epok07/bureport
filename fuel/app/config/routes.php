<?php
return array(
	'_root_'  => 'dashboard/index',  // The default route
	'_404_'   => 'welcome/404',    // The main 404 route

	'login'   => 'admin/login',    // The main 404 route
	'logout'   => 'admin/logout',    // The main 404 route
	'signin'   => 'admin/sigin',    // The main 404 route
	//'_404_'   => 'welcome/404',    // The main 404 route

	
	'hello(/:name)?' => array('welcome/hello', 'name' => 'hello'),


	'message/delete(/:id)?' => array('message/delete', 'id' => 0),
	'message/view(/:id)?' => array('message/view', 'id' => 0),


	



);
