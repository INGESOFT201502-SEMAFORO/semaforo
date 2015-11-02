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
<div class="jumbotron jumbotronBack">
    <div class="container">
        <h1>Bienvenido a Semaforo</h1>
        <p>Registra tu vehículo y adquiere tu seguro ahora!</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Ver más</a></p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2><font size=5>Regístrate como Cliente</font></h2>
            <p>puedes registrarte y empezar a disfrutar de nuestros servicios </p>
            <g:link class="btn btn-primary" controller="cliente" action="register">Registrarse</g:link>
        </div>
        <div class="col-md-4">
            <h2><font size=5>Regístrate como Asesor</font></h2>
            <p>puedes registrarte y ofrecer tus servicios </p><br>
            <g:link class="btn btn-primary" controller="vendedor" action="register">Registrarse</g:link>
        </div>
        <div class="col-md-4">
            <h2><font size=5>Registra tu taller</font></h2>
            <p>
            <p>Registra tu taller y ofrece tus servicios de mantenimiento para vehículos</p>
            <g:link class="btn btn-primary" controller="taller" action="register">Registrarse</g:link>
        </div>
    </div>

    <hr>

</div> <!-- /container -->

</body></html>