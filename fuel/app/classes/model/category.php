<?php
use Orm\Model;

class Model_Category extends Model
{
	protected static $_properties = array(
		'id',
		'company_id',
		'title',
		'type',
		'color',
		'enabled',
	);


	public static function validate($factory)
	{
		$val = Validation::forge($factory);
		$val->add_field('company_id', 'Company Id', 'required|valid_string[numeric]');
		$val->add_field('title', 'Title', 'required|max_length[255]');
		$val->add_field('type', 'Type', 'required|max_length[255]');
		$val->add_field('color', 'Color', 'required|max_length[10]');
		$val->add_field('enabled', 'Enabled', 'required');

		return $val;
	}

}
