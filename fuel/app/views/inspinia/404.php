<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>PR+ | 404 Error</title>

 
     <?php echo Asset::css(array(
        'bootstrap.min.css',
        'font-awesome.css',
        'animate.css',
        'style.css',
       
        
    )); ?>

</head>

<body class="gray-bg">


    <div class="middle-box text-center animated fadeInDown">
        <h1>404</h1>
        <h3 class="font-bold"> <?php echo $title; ?> </h3>

        <div class="error-desc">
            Sorry, but the page you are looking for has note been found. Try checking the URL for error, then hit the refresh button on your browser or try found something else in our app.
            <form class="form-inline m-t" role="form">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search for page">
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>

    <!-- Mainly scripts -->
     
    <?php echo Asset::js(array(
    //  Mainly scripts 
      'jquery-3.1.1.min.js',
      'bootstrap.min.js',
    )); ?>

</body>

</html>