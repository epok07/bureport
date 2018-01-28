<?php

class Controller_Silo extends Controller_Admin
{

	public $template = "_layout/inspinia";

	public function action_index()
	{
		$data["subnav"] = array('index'=> 'active' );
		$this->template->title = 'Silo &raquo; Index';
		$this->template->content = View::forge('silo/index', $data);
	}

	public function action_dashboard()
	{
		$data["subnav"] = array('dashboard'=> 'active' );
		$this->template->title = 'Silo &raquo; Dashboard';
		$this->template->content = View::forge('silo/dashboard', $data);
	}

	public function action_stats()
	{
		$data["subnav"] = array('stats'=> 'active' );
		$this->template->title = 'Silo &raquo; Stats';
		$this->template->content = View::forge('silo/stats', $data);
	}

}
