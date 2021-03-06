<?php
// Bootstrap the framework DO NOT edit this
require COREPATH.'bootstrap.php';

\Autoloader::add_classes(array(
	// Add classes you want to override here
	// Example: 'View' => APPPATH.'classes/view.php',

	// Observers Hookup
	//'Observer_Request' => APPPATH .'classes/observer/request.php',
	'Orm\\Observer_Message' => APPPATH .'classes/observer/message.php',
	'Orm\\Observer_Chat' => APPPATH .'classes/observer/chat.php',
	'Orm\\Observer_Loading' => APPPATH .'classes/observer/loading.php',


    //    'Orm\\Observer_Account' => APPPATH .'classes/observer/account.php',

        'Validation' => APPPATH.'classes/validation/validation.php',
        'parseCSV' => APPPATH.'vendor/parsecsv/php-parsecsv/parsecsv.lib.php',

));

// Register the autoloader
\Autoloader::register();

/**
 * Your environment.  Can be set to any of the following:
 *
 * Fuel::DEVELOPMENT
 * Fuel::TEST
 * Fuel::STAGING
 * Fuel::PRODUCTION
 */
\Fuel::$env = \Arr::get($_SERVER, 'FUEL_ENV', \Arr::get($_ENV, 'FUEL_ENV', \Fuel::DEVELOPMENT));

// Initialize the framework with the config file.
\Fuel::init('config.php');
