<!DOCTYPE html>
<html lang="$ContentLocale">
    <head>
        <% base_tag %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        $MetaTags(false)
        <link rel="shortcut icon" href="favicon.ico">

        <title>Centers for Birth Defects Research and Prevention</title>

        <link href="$ThemeDir/css/bootstrap.min.css" rel="stylesheet">
        <link href="$ThemeDir/js/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link href="$ThemeDir/js/owl-carousel/owl.theme.css" rel="stylesheet">
        <link href="$ThemeDir/css/base.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <script type="text/javascript">
        	var _gaq = _gaq || [];
        	_gaq.push(['_setAccount', 'UA-53869623-1']);
        	_gaq.push(['_setDomainName', 'bdsteps.org']);
        	_gaq.push(['_trackPageview']);

        	(function() {
        		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        	})();
    </script>

    </head>

    <body>
        <div class="container">
            <header>
                <% include Header %>
            </header>
            $Layout
        </div><!-- /.container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="$ThemeDir/js/jquery.min.js"></script>
        <script src="$ThemeDir/js/owl-carousel/owl.carousel.min.js"></script>
        <script src="$ThemeDir/js/base.js"></script>
        <script src="$ThemeDir/js/bootstrap.min.js"></script>
    </body>
</html>