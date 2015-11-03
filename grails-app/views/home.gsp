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
        <section class="rw-wrapper">
            <h2 class="rw-sentence">

                <div class="rw-words rw-words-1">
                    <span>Bienvenidos</span>
                    <span>Regístrate </span>
                    <span>Asegura </span>
                    <span>Pregunta por</span>
                    <span>Semáforo...</span>
                </div>
                <br /><br>
                <div class="rw-words rw-words-2">
                    <span>a Semáforo...</span>
                    <span>ahora...</span>
                    <span>tu Vehículo...</span>
                    <span>Nuestros Servicios...</span>
                    <span>tu mejor opción!</span>
                </div>
            </h2>
        </section>
        <br><br><br>
        <p><a class="btn btn-primary btn-lg pull-right" href="#" role="button">Ver más</a></p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <g:if test="${session.rol == "clienteApp"}">
            <div class="col-md-4">
                <h2><font size=5>Regístra tus Vehículos</font></h2>
                <g:link class="btn btn-primary btn-lg" controller="Vehiculo" action="createApp">Registrar</g:link>
            </div>
            <div class="col-md-4">
                <h2><font size=5>Vehículos Registrados</font></h2>
                <g:link class="btn btn-primary btn-lg" controller="Vehiculo" action="indexApp">Ver</g:link>
            </div>
        </g:if>
        <g:else>
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
        </g:else>
    </div>

    <hr>
</div> <!-- /container -->

<asset:stylesheet src="variacion.css"/>

</body></html>