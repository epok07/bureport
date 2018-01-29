<?php

namespace Fuel\Migrations;

class Create_operations
{
	public function up()
	{
		\DBUtil::create_table('operations', array(
			'id' => array('constraint' => 11, 'type' => 'int', 'auto_increment' => true, 'unsigned' => true),
			'item_id' => array('constraint' => 11, 'type' => 'int'),
			'loading_id' => array('constraint' => 11, 'type' => 'int'),
			'type' => array('constraint' => 1, 'type' => 'tinyint', "null" => true, "default" => 1),

		), array('id'));
	}

	public function down()
	{
		\DBUtil::drop_table('operations');
	}
}