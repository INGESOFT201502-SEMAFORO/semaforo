<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 08/11/2015
  Time: 06:38 PM
--%>

<%@ page import="semaforo.Cita" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
    <asset:stylesheet src="vehReqView.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="style3.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="columnas.css"/>
    <asset:stylesheet src="default.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <asset:stylesheet src="bootstrap-select.css"/>
    <asset:javascript src="bootstrap-select.js"/>

    <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<header>

    <div class="container">
        <h1 class="icon-semaforo">Semáforo</h1><!-- BARRA DE MENU (CONSOLIDADA) -->
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/')}">Inicio</a>
            <a href="${createLink(uri: '/whoWeAre')}">¿Quienes Somos?</a>
            <a href="${createLink(uri: '/equipo')}">Equipo</a>
            <g:if test="${session.cliente}" >
                <li><a href="#">${session.cliente.nombre}</a>
                    <ul>
                        <li><a href="">Mi perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="cliente" action ="logout">Salir</g:link></li>
                    </ul>
                </li>
            </g:if>

            <g:else>
                <a href="${createLink(uri: '/ingresar')}">Login</a>
            </g:else>
        </nav>

    </div>
</header>

<div id="list-cita" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <div class="container-fluid">
        <div>
            <table class="table">
            <tr>
                <td><strong>No.</strong></td>
                <td><strong>Fecha</strong></td>
                <td><strong>Lugar</strong></td>
                <td><strong>Estado</strong></td>
                <td><strong>Editar</strong></td>

                <g:each in="${citas}" var="cita" status="i">
                    <tr> <td>${i+1}</td>  <td>${cita.fecha}</td>  <td>${cita.lugar}</td> <td>${cita.estado}</td>
                        <td><g:link controller="cita" action="showApp" id="${cita.id}"> <asset:image src="skin/database_edit.png" alt="Grails"/></g:link></td>
                    <tr>
                </g:each>
            </table>
        </div>
    </div>

</div>
</body>
</html>