<?php

namespace Fuel\Migrations;

class Create_machineries
{
	public function up()
	{
		\DBUtil::create_table('machineries', array(
			'id' => array('constraint' => 11, 'type' => 'int', 'auto_increment' => true, 'unsigned' => true),
			'company_id' => array('constraint' => 11, 'type' => 'int'),
			'title' => array('constraint' => 255, 'type' => 'varchar'),
			'site_id' => array('constraint' => 11, 'type' => 'int'),
			'enabled' => array('constraint' => 1, 'type' => 'tinyint'),

		), array('id'));
	}

	public function down()
	{
		\DBUtil::drop_table('machineries');
	}
}