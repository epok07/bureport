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

	protected static $_belongs_to = array(
		"company" => array(
		        'key_from' => 'company_id',
		        'model_to' => 'Model_Company',
		        'key_to' => 'id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		    ),

		"operator" => array(
		        'key_from' => 'user_id',
		        'model_to' => 'Model_User',
		        'key_to' => 'id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		    ),
		"machinery"=> array(
		        'key_from' => 'machenery_id',
		        'model_to' => 'Model_Machinery',
		        'key_to' => 'id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		    ),
		"vendor","site","silo"  
	);

	protected static $_many_many = array( 
		"items" => array(
		        'key_from' => 'id',
		        'key_through_from' => 'loading_id', // column 1 from the table in between, should match a items.id
		        'table_through' => 'items_loadings', // both models plural without prefix in alphabetical order
		        'key_through_to' => 'item_id', // column 2 from the table in between, should match a loadings.id
		        'model_to' => 'Model_Item',
		        'key_to' => 'id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		    )
		);

	protected static $_conditions = array(
        'order_by' => array('created_at' => 'desc'),
         'where' => array(
        //    array('publish_date', '>', 1370721177),
            array('canceled', '=', 0),
         ),
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
		'Orm\Observer_Loading' => array(
       	    'events' => array('after_insert', 'after_delete', 'before_insert'),
       	     'mysql_timestamp' => false,
       	 ),
	);

	public static function validate($factory)
	{
		$cur_capacity = Model_silo::get_current_capacity(\Input::post('silo_id'));
		$silo = Model_silo::find(\Input::post('silo_id'));
		$vol_max = $silo->capacity - $cur_capacity;
		//die($vol_max);
		$val = Validation::forge($factory);
		$val->add_field('company_id', 'Company Id', 'required|valid_string[numeric]');
		$val->add_field('user_id', 'User Id', 'required|valid_string[numeric]');
		$val->add_field('start_date', 'Start Date', 'required');
		$val->add_field('item_id', 'Item Id', 'required|valid_string[numeric]');
		$val->add_field('machenery_id', 'Machenery Id', 'required|valid_string[numeric]');
		$val->add_field('silo_id', 'Silo Id', 'required|valid_string[numeric]');
		$val->add_field('weight', 'Weight', 'required|numeric_max['.$vol_max.']');
		$val->add_field('unit', 'Unit', 'required');
		$val->add_field('vendor_id', 'Vendor Id', 'required|valid_string[numeric]');
		$val->add_field('site_id', 'Site Id', 'required|valid_string[numeric]');
		$val->add_field('canceled', 'Canceled', 'required');

		return $val;
	}

}
