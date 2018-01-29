<?php
use Orm\Model;

class Model_Company extends Model
{
	protected static $_properties = array(
		'id',
		'domain',
		'name',
		'enabled',
	);


	public static function validate($factory)
	{
		$val = Validation::forge($factory);
		$val->add_field('domain', 'Domain', 'required|max_length[255]');
		$val->add_field('name', 'Name', 'required|max_length[255]');
		$val->add_field('enabled', 'Enabled', 'required');

		return $val;
	}

}
