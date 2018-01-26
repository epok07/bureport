<?php
/**
 * The test database settings. These get merged with the global settings.
 *
 * This environment is primarily used by unit tests, to run on a controlled environment.
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

