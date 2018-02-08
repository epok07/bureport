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

	public function action_index($entity='')
	{
		//$entity = $entity ?? "";
		 /*$api = new PHP_CRUD_API(array(
			'dbengine'=>'MySQL',
			'hostname'=>'localhost',
			'username'=>'root',
			'password'=>'',
			'database'=>'lhbureportdb',
			'charset'=>'utf8'
		)); 
		//$api->executeCommand();*/
		//return $this->response( json_encode([])  ) ;

		// create a Request_Curl object
		$curl = Request::forge(Uri::base().'/api.php/' . $entity, 'curl');
		//$curl = Request::forge('http://localhost/LHprodreport/public/api.php/todos', 'curl');
		// pass an authentication token to the backend server
		$curl->set_header('auth-token', 'WV4YaeV8QeWVVVOE');
		$curl->set_header('secret', 'WV4YaeV8QeWVVVOE');

		//$curl->set_mime_type('json');

		//$curl->set_auto_format(true);
		// assume some parameters and options were set, and execute
		$curl->execute();
		// fetch the resulting Response object
		$result = $curl->response();
		header("Content-Type: application/json");
		echo $dump =  ($result->body) ;  exit();

		$this->response->status =  200 ;

		 return $this->response(   ( $result->body )   )  ;

 


		 
	}

}
