<?php
use Carbon\Carbon;

class Controller_Activitystream extends Controller_Admin
{
	public $dt;

	public $template = "_layout/inspinia";

	public function action_index()
	{
		$this->dt = new Carbon('12 hours ago');
		$data["activitylogs"] = Model_Activitylog::find('all', array('where' => array( 
													array('created_at','>=' , $this->dt->timestamp),
													)));

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
