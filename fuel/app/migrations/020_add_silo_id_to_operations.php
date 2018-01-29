<?php

namespace Fuel\Migrations;

class Add_silo_id_to_operations
{
	public function up()
	{
		\DBUtil::add_fields('operations', array(
			'silo_id' => array('constraint' => 11, 'type' => 'int'),

		));
	}

	public function down()
	{
		\DBUtil::drop_fields('operations', array(
			'silo_id'

		));
	}
}