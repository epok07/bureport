<?php
use Orm\Model;

class Model_Vendor extends Model
{
	protected static $_properties = array(
		'id',
		'company_id',
		'user_id',
		'phone',
		'email',
		'website',
		'title',
		'enabled',
	);


	public static function validate($factory)
	{
		$val = Validation::forge($factory);
		$val->add_field('company_id', 'Company Id', 'required|valid_string[numeric]');
		$val->add_field('user_id', 'User Id', 'required|valid_string[numeric]');
		$val->add_field('phone', 'Phone', 'required|max_length[255]');
		$val->add_field('email', 'Email', 'required|valid_email|max_length[255]');
		$val->add_field('website', 'Website', 'required|max_length[255]');
		$val->add_field('title', 'Title', 'required|max_length[255]');
		$val->add_field('enabled', 'Enabled', 'required');

		return $val;
	}

}
