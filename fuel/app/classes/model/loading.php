<?php
use Orm\Model;

class Model_Loading extends Model
{
	protected static $_properties = array(
		'id',
		'company_id',
		'user_id',
		'start_date',
		'item_id',
		'machenery_id',
		'silo_id',
		'weight',
		'unit',
		'vendor_id',
		'site_id',
		'canceled',
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
		$val->add_field('company_id', 'Company Id', 'required|valid_string[numeric]');
		$val->add_field('user_id', 'User Id', 'required|valid_string[numeric]');
		$val->add_field('start_date', 'Start Date', 'required');
		$val->add_field('item_id', 'Item Id', 'required|valid_string[numeric]');
		$val->add_field('machenery_id', 'Machenery Id', 'required|valid_string[numeric]');
		$val->add_field('silo_id', 'Silo Id', 'required|valid_string[numeric]');
		$val->add_field('weight', 'Weight', 'required');
		$val->add_field('unit', 'Unit', 'required');
		$val->add_field('vendor_id', 'Vendor Id', 'required|valid_string[numeric]');
		$val->add_field('site_id', 'Site Id', 'required|valid_string[numeric]');
		$val->add_field('canceled', 'Canceled', 'required');

		return $val;
	}

}
