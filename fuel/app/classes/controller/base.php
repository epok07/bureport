<?php

class Controller_Base extends Controller_Template
{
	public $template = "_layout/inspinia_main";

	public $nav;

	public function before()
	{
		parent::before();

		$this->current_user = null;

		$session = Session::instance();

		$this->current_session = $session;
		
		// navigation
		$nav = array(
			array(
			'title' => "dasboard",
				'url'	=> 'dashboard',
				'attrs' => '',
				'icon' => 'fa-th-large',
				'submenu' => []
				),
			array(
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
			array(
			'title' => "settings",
				'url'	=> 'settings',
				'attrs' => '',
				'icon' => 'fa-gear',
				'submenu' => []
			),
		); 


		$this->nav = $nav;


		

		$this->current_session->set("returning_visitor", Session::get("returning_visitor"));


		foreach (\Auth::verified() as $driver)
		{
			if (($id = $driver->get_user_id()) !== false)
			{
				$this->current_user = Model\Auth_User::find($id[1]);
			}
			break;
		}

		// Set a global variable so views can use it
		View::set_global('current_user', $this->current_user);
		View::set_global('nav', $this->nav);
	}

}
