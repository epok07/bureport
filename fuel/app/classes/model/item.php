<?php
use Orm\Model;

class Model_Item extends Model
{
	protected static $_properties = array(
		'id',
		'company_id',
		'title',
		'category_id',
		'enabled',
	);


	public static function validate($factory)
	{
		$val = Validation::forge($factory);
		$val->add_field('company_id', 'Company Id', 'required|valid_string[numeric]');
		$val->add_field('title', 'Title', 'required|max_length[255]');
		$val->add_field('category_id', 'Category Id', 'required|valid_string[numeric]');
		$val->add_field('enabled', 'Enabled', 'required');

		return $val;
	}

}
