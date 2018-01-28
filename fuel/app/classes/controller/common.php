<?php
use Carbon\Carbon;

class Controller_Common extends Controller_Template
{
	public $template = "_layout/inspinia_login";

	public $nav;

	public $push_service;	

	public $current_employee;
	
	public $data_payload;

	public $directories = array();
	 
	public function before()
	{
		parent::before();

		if(!Auth::check()){
		 //$this->template = "_layout/inspinia_login";

		}

		// Pusher config
		$options = array(
		    'cluster' => 'eu',
		    'encrypted' => true
		  );
		$pusher = new \Pusher\Pusher(
		    '3607fe1af3ddf0c619ad',
		    'f6de443b98937cce6a49',
		    '456184',
		    $options
		  );

		$this->push_service = $pusher;

		$this->current_user = null;

		// Middleware processing
		$dt = new Carbon('5 hours ago');
		$this->data_payload['chats'] = Model_Chat::find('all', array('where' => array( 
													array('created_at','>=' , $dt->timestamp),
													)));
		$this->data_payload['messages'] = Model_Message::find('all');
		$this->data_payload['todos'] = Model_Todo::find('all');


		// Session processing
		$session = Session::instance();

		$this->current_session = $session;

		// Navigation processing 
 
		$endpoints = $this->findFiles('../fuel/app/classes/controller', ['php'], ['admin']);

		$temp_nav_uri = array();
		$iconset = array(
			'fa-bell-o',
			'fa-bullhorn',
			'fa-comments',
			'fa-th-large', 
			'fa-envelope',
			 'fa-feed',
			'fa-gears', 
			//'fa-bar-chart-o', 
			//'fa-flag-checkered'
			'fa-industry',
			'fa-check', 
			'fa-users', 
			'fa-mail', 
			'fa-star', 
			'fa-file-o', 
			'fa-gear', 'fa-gear', 'fa-gear', 
			);

		foreach ($endpoints['php'] as $key => $nav_uri) {
			$_curent_uri = str_replace('.php', '', $nav_uri);
			$temp_nav_uri[] = array(
				'title' => ucfirst($_curent_uri),
				'url'	=> $_curent_uri,
				'attrs' => '',
				'icon' => $iconset[$key],
				'submenu' => []
					);
		}
 
		
		// navigation
		$nav = array(
			array(
			'title' => "dasboard",
				'url'	=> 'dashboard',
				'attrs' => '',
				'icon' => 'fa-th-large',
				'submenu' => []
				),
					/*	array(
					'title' => "exams",
						'url'	=> 'exams',
						'attrs' => '',
						'icon' => '',
						'submenu' => []
						),
					array(
					'title' => "student",
						'url'	=> 'student',
						'attrs' => '',
						'icon' => 'fa-user',
						'submenu' => []
						),
					array(			
					'title' => "subject",
						'url'	=> 'subject',
						'attrs' => '',
						'icon' => 'fa-file-o',
						'submenu' => []
						),
					array(
					'title' => "teacher",
						'url'	=> 'teacher',
						'attrs' => '',
						'icon' => 'fa-users',
							'submenu' => []
							),
						array(
						'title' => "class",
							'url'	=> 'class',
							'attrs' => '',
							'icon' => 'fa-star',
						'submenu' => []
						),
					array(
					'title' => "school",
						'url'	=> 'educationcenter',
						'attrs' => '',
						'icon' => 'fa-building',
						'submenu' => []
						),
					array(
					'title' => "Grade",
						'url'	=> 'grade',
						'attrs' => '',
						'icon' => 'fa-bar-chart-o',
						'submenu' => []
						),
				*/	array(
					'title' => "settings",
						'url'	=> 'settings',
						'attrs' => '',
						'icon' => 'fa-gear',
						'submenu' => []
					),
		); 


		$this->nav = $temp_nav_uri; //$nav;

		$this->current_session->set("returning_visitor", Session::get("returning_visitor"));


		foreach (\Auth::verified() as $driver)
		{
			if (($id = $driver->get_user_id()) !== false)
			{
				$this->current_user = Model\Auth_User::find($id[1]);
				//$auth = \Auth::instance();
				//$auth->force_login(2);
				//Debug::dump($id[1]); die();
				$this->current_employee = Model_Employee::find('first', 
					/////array( 
						//"related" => array('employee', 
					//////		array(
					//////			"where" =>array(array("user_id", $id[1]))		
					/////		)
						//)
					/////), 
					array(
						
								"where" =>array(array("user_id", $id[1]))		
							));
							


			}
			break;
		}

		// Set a global variable so views can use it
		View::set_global('current_user', $this->current_user);
		View::set_global('current_employee', $this->current_employee);
		View::set_global('nav', $this->nav);
		View::set_global('push_service', $this->push_service);
		View::set_global('data_payload', $this->data_payload);
	}

	

	public function glob_recursive($directory, $projectsListIgnore = array(),$recursive_flag = TRUE , &$directories = array() ) {
	        foreach(glob($directory, GLOB_ONLYDIR | GLOB_NOSORT) as $folder) {
	        	if ( !in_array($folder,$projectsListIgnore)) 
				{
		            $this->directories[] = $folder;
		            if($recursive_flag) $this->glob_recursive("{$folder}/*", $this->directories);
		        }
		    }
	}

	public function findFiles($directory, $extensions = array(), $projectsListIgnore = array()) {
	   $this->directories = array();
	    $this->glob_recursive($directory, ['admin'], TRUE);
	    $files = array ();
		foreach($this->directories as $directory) {
			//Debug::dump($directory); die();
		   		if ( !in_array($directory,$projectsListIgnore)) 
				{
			        foreach($extensions as $extension) {
			            foreach(glob("{$directory}/*.{$extension}") as $file) {
			            	if (!preg_match('/test/', $file) 
			            		AND !preg_match('/welcome/', $file)
			            		AND !preg_match('/admin/', $file)
			            		AND !preg_match('/demo/', $file)
			            		AND !preg_match('/base/', $file)
			            		AND !preg_match('/demo/', $file)
			            		AND !preg_match('/common/', $file)
			            		AND !preg_match('/jobtitle/', $file)
			            		) {
			            	//Debug::dump($file); die();

			                	$files[$extension][] = str_replace($directory."/", '', $file);
			            	}
			            }
			        }
		    	}
		}
	    return $files;
	}

}
