<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Famoso Nut Company</title>
    ${self.styles()}
    <link rel="SHORTCUT ICON" href="favicon.ico">
    <meta name="google-site-verification" content="zW-xjh9yX4n1E6zDQZvNhPfBtByf3E2g1koo_P-VKpU" />
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="pragma" content="no-cache"> 
</head>
<body class="styles">
<div id="container">
    <div id="header">
        <img src="img/logo.jpg" alt="Famoso" />
        <div id="slideshow">
            <img src="img/slideshow1.jpg" />
            <img src="img/slideshow2.jpg" />
            <img src="img/slideshow3.jpg" />
            <img src="img/slideshow4.jpg" />
        </div>
    </div>
    <div id="nav">
        <a href="/index.html"><div>Home</div></a>
        <a href="/about.html"><div>About Us</div></a>
        <a href="/grower.html"><div>Grower Services</div></a>
        <a href="/products.html"><div>Products</div></a>
        <a href="/safety.html"><div>Safety & Quality</div></a>
        <a href="/contacts.html"><div>Contacts</div></a>
    </div>
    <div id="mainContent">
        ${next.body()}
    </div>
</div>
<p class="Footer">Famoso Nut Company, LLC &#8226; 32331 Famoso Road McFarland, CA 93250 &#8226; (661)399-9697 </p>
${self.javascript()}
</body>
</html>

<%def name="styles()">
    <link href="/css/screen.css" media="screen, projection" rel="stylesheet" type="text/css" />
    <link href="/css/print.css" media="print" rel="stylesheet" type="text/css" />
    <!--[if IE]>
    <link href="/css/ie.css" media="screen, projection" rel="stylesheet" type="text/css" />
    <![endif]-->
</%def>

<%def name="javascript()">
    <script type="text/JavaScript" src="js/curvycorners.js"></script>
    <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
<script>
    $(document).ready(function() {
        var slides = [];
        $('#slideshow > img').each(function() { slides.push($(this)); });
        function next(i) {
            if (i == 0) {
                slides[0].delay(1000).fadeIn('slow').delay(3000).fadeOut('slow', function(){next(i+1)});
            }
            else if (i == 3) {
                slides[3].fadeIn('slow');
                return;
            }
            else slides[i].fadeIn('slow').delay(3000).fadeOut('slow', function(){next(i+1)});
        }
        next(0);
    });
</script>
</%def>
