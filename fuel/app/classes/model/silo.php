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

	protected static $_has_many = array(

 			"loadings" => array(
		        'key_from' => 'id',
		        'model_to' => 'Model_Loading',
		        'key_to' => 'silo_id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		    ),

		    "deliveries" => array(
		        'key_from' => 'id',
		        'model_to' => 'Model_Operation',
		        'key_to' => 'silo_id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		        'conditions' => array(
		           // 'order_by' => array(
		           //      'posts_users.status' => 'ASC'	// define custom through table ordering
		           //  ),
		        	'where' => array(
		        		array('type' => 1)
		        		),
		        ),
		    ),

		    "productions" => array(
		        'key_from' => 'id',
		        'model_to' => 'Model_Operation',
		        'key_to' => 'silo_id',
		        'cascade_save' => true,
		        'cascade_delete' => false,
		        'conditions' => array(
		           // 'order_by' => array(
		           //      'posts_users.status' => 'ASC'	// define custom through table ordering
		           //  ),
		        	'where' => array(
		        		array('type' => 0)
		        		),
		        ),
		    ),
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


	public static function get_current_capacity($silo_id)
	{
		if(is_null($silo_id))  return null;

		$silo = \Model_Silo::find($silo_id, array(
                    'related' => array(
                        'loadings'=> array(
                            'where' => array(
                                array('silo_id' => $silo_id),
                                array('canceled' => 0 ),
                                //array('deleted_at' => null )
                                ) 
                            )
                        )
                
            ));
		if(isset($silo->loadings)){
			 $loads = $silo->loadings ;
			   $volume = 0;
	        foreach ($loads as $key => $load) {
	            $volume +=  $load->weight;
	        }
	        return $volume;
		}else{
			 return 0;
		}
       
       
    }

    public static function get_current_capacity_rate($silo_id)
	{
		if(is_null($silo_id))  return null;

		$silo = self::find($silo_id);
		$current_capacity = self::get_current_capacity($silo_id);

		 $rate = 100 - (($silo->capacity - $current_capacity) / $silo->capacity ) * 100 ;
		return floor($rate);
	}

	public static function get_dropdownlist($exclude = array() ){
		$dlist = []; 
		$empty= ['-' => "Please select ..."];
		$dlist['-']= "Please select ..."; 
		$entry = Model_Silo::find('all', array(
			array('select' => array( 'title')),
			array('where' => array(
					array('company_id' => 1)
				)
			)));
		foreach ($entry as $key => $row) {
				if(isset($exclude) && !in_array($row->id, $exclude)){

					$dlist[$row->id] =  "$row->title" ;
				}
			}
		
		return $dlist;
	}


}
