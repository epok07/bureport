<?php

//require_once APPPATH.'vendor/api.php';

/*$api = new PHP_CRUD_API(array(
			'dbengine'=>'MySQL',
			'hostname'=>'localhost',
			'username'=>'root',
			'password'=>'',
			'database'=>'lhbureportdb',
			'charset'=>'utf8'
		));
var_dump($api);die();
		$api->executeCommand();*/

class Controller_Apiv1 extends Controller_Rest
{
	public $format = 'json';

	public function action_index()
	{
		 /*$api = new PHP_CRUD_API(array(
			'dbengine'=>'MySQL',
			'hostname'=>'localhost',
			'username'=>'root',
			'password'=>'',
			'database'=>'lhbureportdb',
			'charset'=>'utf8'
		)); 
		//$api->executeCommand();*/
		return $this->response( json_encode([])  ) ;
		 
	}

}
