<?php
use Orm\Model;

class Model_Site extends Model
{
	protected static $_properties = array(
		'id',
		'company_id',
		'category_id',
		'title',
		'enabled',
	);


	public static function validate($factory)
	{
		$val = Validation::forge($factory);
		$val->add_field('company_id', 'Company Id', 'required|valid_string[numeric]');
		$val->add_field('category_id', 'Company Id', 'required|valid_string[numeric]');
		$val->add_field('title', 'Title', 'required|max_length[255]');
		$val->add_field('enabled', 'Enabled', 'required');

		return $val;
	}

}
