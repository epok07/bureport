<!DOCTYPE html>
<html>
 
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php  echo "App Login"; ?></title>

    <?php echo Asset::css(array(
    	'bootstrap.min.css',
    	'font-awesome.css',

        // C3 lib theme
        //'plugins/c3/c3.min.css',
    	'animate.css',
    	'style.css',
    )); ?>

    <script src="https://js.pusher.com/4.1/pusher.min.js"></script>

    <?php echo Asset::js(array(
    //  Mainly scripts 
      'jquery-3.1.1.min.js',
    )); ?>

<script>

    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('3607fe1af3ddf0c619ad', {
      cluster: 'eu',
      encrypted: true
    });

    var channel = pusher.subscribe('lhcm-channel');
    channel.bind('prodreport', function(data) {
      
      console.log('PushNotification',data.message + ' '+data.name);
      //alert(data.message);
    });
  </script>
     

</head>
<body class="skin-1 fixed-navigation pace-done">


	 

	<?= $content ?>


	<?php echo Asset::js(array(
	//  Mainly scripts 
    //   'jquery-3.1.1.min.js',
    	'bootstrap.min.js',
    	
    	

    )); ?>

   
</body>

 
</html>
