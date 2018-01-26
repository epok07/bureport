<?php

class Model_Employee extends \Orm\Model_Soft
{
	protected static $_properties = array(
		'id',
		'first_name',
		'last_name',
		'user_id',
		'role_id',
		'jobtile_id',
		'tel',
		'email',
		'address1',
		'address2',
		'avatar_file',
		'notes',
		'deleted_at',
		'created_at',
		'updated_at',
	);

	protected static $_belongs_to = array(
		"user" => array(
		        'key_from' => 'user_id',
		        'model_to' => 'Model_User',
		        'key_to' => 'id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		    ), 

		"jobtitle" =>  array(
		        'key_from' => 'jobtile_id',
		        'model_to' => 'Model_Jobtitle',
		        'key_to' => 'id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		    ),     


		);



	public static function validate($factory)
	{
		$val = Validation::forge($factory);
		$val->add_field('first_name', 'Firstname', 'required|max_length[255]');
		$val->add_field('last_name', 'Lastname', 'required|max_length[255]');
		$val->add_field('email', 'Email', 'required|valid_email|max_length[255]');
		$val->add_field('user_id', 'User Id', 'required|numeric');
		$val->add_field('role_id', 'Role id', 'required|numeric');
		$val->add_field('address1', 'Address 1', 'required|max_length[255]');
		$val->add_field('jobtile_id', 'Job title', 'required|numeric');
		


		return $val;
	}


	protected static $_observers = array(
		'Orm\Observer_CreatedAt' => array(
			'events' => array('before_insert'),
			'mysql_timestamp' => false,
		),
		'Orm\Observer_UpdatedAt' => array(
			'events' => array('before_update'),
			'mysql_timestamp' => false,
		),
	);

	protected static $_soft_delete = array(
		'mysql_timestamp' => false,
	);

	protected static $_table_name = 'employees';

}
