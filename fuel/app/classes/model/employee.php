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


		);

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
