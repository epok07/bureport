<?php
use Orm\Model;

class Model_Silo extends Model
{
	protected static $_properties = array(
		'id',
		'company_id',
		'title',
		'capacity',
		'unit',
		'item_id',
		'site_id',
		'enabled',
	);


	public static function validate($factory)
	{
		$val = Validation::forge($factory);
		$val->add_field('company_id', 'Company Id', 'required|valid_string[numeric]');
		$val->add_field('title', 'Title', 'required|max_length[255]');
		$val->add_field('capacity', 'Capacity', 'required');
		$val->add_field('unit', 'Unit', 'required');
		$val->add_field('item_id', 'Item Id', 'required|valid_string[numeric]');
		$val->add_field('site_id', 'Site Id', 'required|valid_string[numeric]');
		$val->add_field('enabled', 'Enabled', 'required');

		return $val;
	}

}
