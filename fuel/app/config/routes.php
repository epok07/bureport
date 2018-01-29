<?php
return array(
	'_root_'  => 'dashboard/index',  // The default route
	//'_404_'   => 'welcome/404',    // The main 404 route

	'login'   => 'admin/login',    // The main login/signin route
	'logout'   => 'admin/logout',    // The logout/signout route
	'signin'   => 'admin/sigin',    // The main registration route
	'_404_'   => 'inspinia/404',    // The main 404 route
	//'_500_'   => 'inspinia/500',    // The main 500 route

	
	'hello(/:name)?' => array('welcome/hello', 'name' => 'hello'),


	'message/delete(/:id)?' => array('message/delete', 'id' => 0),
	//'chat/delete(/:id)?' => array('chat/delete', 'id' => 0),

	'message/view(/:id)?' => array('message/view', 'id' => 0),


	



);
