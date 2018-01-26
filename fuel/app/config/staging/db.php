<?php
/**
 * The staging database settings. These get merged with the global settings.
 */

return array(
	'default' => array(
		'connection'  => array(
			'dsn'        => 'mysql:host=litelecsqlserver.database.windows.net;dbname=lhbureportdb',
			'username'   => 'phpappuser@litelecsqlserver',
			'password'   => 'MySQL@zure2018$',
			'sslmode' => FALSE,
		),
	),
);
