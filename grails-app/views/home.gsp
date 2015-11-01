<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 30/10/2015
  Time: 11:01 AM
--%>

<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/carousel/# -->
<html lang="en">
<head>
    <meta name="layout" content="navBarAndLogin"/>
</head>

<body>
<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1>Hello, world!</h1>
        <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>Registrarse como cliente</h2>
            <p>puedes registrarte en nuestra apliacion y empezar a disfrutar de nuestros servicios </p>
            <g:link class="btn btn-primary" controller="cliente" action="register">Registrarse</g:link>
        </div>
        <div class="col-md-4">
            <h2>Registrarse como vendedor</h2>
            <p>puedes registrarte en nuestra aplicacion para ofrecer tus servicios </p>
            <g:link class="btn btn-primary" controller="vendedor" action="register">Registrarse</g:link>
            %{--<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>--}%
        </div>
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
    </div>

    <hr>

</div> <!-- /container -->

</body></html>