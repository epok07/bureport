<?php

class Controller_Dashboard extends Controller_Admin
{
	public $template = "_layout/inspinia_dash2"; 

	public function action_index()
	{
		$data["subnav"] = array('index'=> 'active' );
		$this->template->title = 'Dashboard &raquo; Index';
		$this->template->content = View::forge('dashboard/index', $data);

		
	}

	public function action_day()
	{
		$data["subnav"] = array('day'=> 'active' );
		$this->template->title = 'Dashboard &raquo; Day';
		$this->template->content = View::forge('dashboard/day', $data);
	}

	public function action_week()
	{
		$data["subnav"] = array('week'=> 'active' );
		$this->template->title = 'Dashboard &raquo; Week';
		$this->template->content = View::forge('dashboard/week', $data);
	}

	public function action_month()
	{
		$data["subnav"] = array('month'=> 'active' );
		$this->template->title = 'Dashboard &raquo; Month';
		$this->template->content = View::forge('dashboard/month', $data);
	}

	public function action_year()
	{
		$data["subnav"] = array('year'=> 'active' );
		$this->template->title = 'Dashboard &raquo; Year';
		$this->template->content = View::forge('dashboard/year', $data);
	}

}
