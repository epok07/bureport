<?php
use Orm\Model;

class Model_Todo extends Model
{
	protected static $_properties = array(
		'id',
		'created_by',
		'title',
		'description',
		'labels',
		'status',
		'start_date',
		'created_at',
		'updated_at',
	);

	protected static $_observers = array(
		'Orm\Observer_CreatedAt' => array(
			'events' => array('before_insert'),
			'mysql_timestamp' => false,
		),
		'Orm\Observer_UpdatedAt' => array(
			'events' => array('before_save'),
			'mysql_timestamp' => false,
		),
	);

	public static function validate($factory)
	{
		$val = Validation::forge($factory);
		$val->add_field('created_by', 'Created By', 'required|valid_string[numeric]');
		$val->add_field('title', 'Title', 'required');
		//$val->add_field('description', 'Description', 'required');
		//$val->add_field('labels', 'Labels', 'required');
		$val->add_field('status', 'Status', 'required');
		$val->add_field('start_date', 'Start Date', 'required');

		return $val;
	}

}
