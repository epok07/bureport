<?php

class Controller_Activitystream extends Controller_Admin
{

	public $template = "_layout/inspinia";

	public function action_index()
	{
		$data["activitylogs"] = Model_Activitylog::find('all');

		$data["label_class"] = array(
			'created'=> 'label-primary',
			'updated'=> 'label-secondary', 
			'deleted'=> 'label-danger', 
			'cancelled'=> 'label-warning', 
			);

		$data["label_action"] = array(
			'created'=> 'Add',
			'updated'=> 'Update', 
			'deleted'=> 'Delete', 
			'cancelled'=> 'Cancel', 
			);


		$data["subnav"] = array('index'=> 'active' );
		$this->template->title = 'Activitystream &raquo; Index';
		$this->template->content = View::forge('activitystream/index', $data);
	}

}
