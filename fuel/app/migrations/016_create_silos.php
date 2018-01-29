<?php

namespace Fuel\Migrations;

class Create_silos
{
	public function up()
	{
		\DBUtil::create_table('silos', array(
			'id' => array('constraint' => 11, 'type' => 'int', 'auto_increment' => true, 'unsigned' => true),
			'company_id' => array('constraint' => 11, 'type' => 'int'),
			'title' => array('constraint' => 255, 'type' => 'varchar'),
			'capacity' => array('constraint' => '10,3', 'type' => 'decimal'),
			'unit' => array('constraint' => '"kt","t","kg","m3"', 'type' => 'enum'),
			'item_id' => array('constraint' => 11, 'type' => 'int'),
			'site_id' => array('constraint' => 11, 'type' => 'int'),
			'enabled' => array('constraint' => 1, 'type' => 'tinyint'),

		), array('id'));
	}

	public function down()
	{
		\DBUtil::drop_table('silos');
	}
}