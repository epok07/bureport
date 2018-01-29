<?php

class Controller_Silodemo extends Controller_Admin
{

	public $template = "_layout/inspinia";

	public function action_index()
	{
		$data["subnav"] = array('index'=> 'active' );
		$this->template->title = 'Silo &raquo; Index';
		$this->template->content = View::forge('silodemo/index', $data);
	}

	public function action_dashboard()
	{
		$data["subnav"] = array('dashboard'=> 'active' );
		$this->template->title = 'Silo &raquo; Dashboard';
		$this->template->content = View::forge('silodemo/dashboard', $data);
	}

	public function action_stats()
	{
		$data["subnav"] = array('stats'=> 'active' );
		$this->template->title = 'Silo &raquo; Stats';
		$this->template->content = View::forge('silodemo/stats', $data);
	}

}
