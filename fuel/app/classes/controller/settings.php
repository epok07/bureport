<?php

class Controller_Settings extends Controller_Admin
{
	//public $template = "_layout/inspinia";
	public $template = "_layout/inspinia_dash2";

	public function action_index()
	{
		$data["subnav"] = array('index'=> 'active' );
		$this->template->title = 'Settings &raquo; Index';
		$this->template->content = View::forge('settings/index', $data);
	}

	public function action_general()
	{
		$data["subnav"] = array('general'=> 'active' );
		$this->template->title = 'Settings &raquo; General';
		$this->template->content = View::forge('settings/general', $data);
	}

	public function action_company()
	{
		$data["subnav"] = array('company'=> 'active' );
		$this->template->title = 'Settings &raquo; Company';
		$this->template->content = View::forge('settings/company', $data);
	}

	public function action_roles()
	{
		$data["subnav"] = array('roles'=> 'active' );
		$this->template->title = 'Settings &raquo; Roles';
		$this->template->content = View::forge('settings/roles', $data);
	}

	public function action_notifications()
	{
		$data["subnav"] = array('notifications'=> 'active' );
		$this->template->title = 'Settings &raquo; Notifications';
		$this->template->content = View::forge('settings/notifications', $data);
	}

	public function action_emailing()
	{
		$data["subnav"] = array('emailing'=> 'active' );
		$this->template->title = 'Settings &raquo; Emailing';
		$this->template->content = View::forge('settings/emailing', $data);
	}

	public function action_modules()
	{
		$data["subnav"] = array('modules'=> 'active' );
		$this->template->title = 'Settings &raquo; Modules';
		$this->template->content = View::forge('settings/modules', $data);
	}

	public function action_users()
	{
		$data["subnav"] = array('users'=> 'active' );

		$data['jobtitles'] = Model_Jobtitle::find('all');
		$data['users'] = Model_User::find('all');
		$data['employees'] = Model_Employee::find('all');

		//$this->template->title = "Jobtitles";
		//$this->template->content = View::forge('jobtitle/index', $data);

		$this->template->title = 'Settings &raquo; Users';
		$this->template->content = View::forge('settings/users', $data);
	}

}
