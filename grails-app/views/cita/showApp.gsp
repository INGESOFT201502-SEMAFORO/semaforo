<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 08/11/2015
  Time: 04:11 PM
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
    <title><g:message code="default.show.label" args="[entityName]" /></title>
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

<br><br><br><br>

    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <h3>Cita de Revisión</h3>

                    <g:if test="${citaInstance?.fecha}">
                        <li class="fieldcontain">
                            <span id="fecha-label" class="property-label"><g:message code="cita.fecha.label" default="Fecha" /></span>

                            <span class="property-value" aria-labelledby="fecha-label"><g:formatDate format="d MMM yyyy hh:mm a " date="${citaInstance?.fecha}" /></span>

                        </li>
                    </g:if>

                    <g:if test="${citaInstance?.lugar}">
                        <li class="fieldcontain">
                            <span id="lugar-label" class="property-label"><g:message code="cita.lugar.label" default="Lugar" /></span>

                            <span class="property-value" aria-labelledby="lugar-label"><g:fieldValue bean="${citaInstance}" field="lugar"/></span>

                        </li>
                    </g:if>

                    <g:if test="${citaInstance?.estado}">
                        <li class="fieldcontain">
                            <span id="estado-label" class="property-label"><g:message code="cita.estado.label" default="Estado" /></span>

                            <span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${citaInstance}" field="estado"/></span>

                        </li>
                    </g:if>

                    <div class="hidden">
                        <g:if test="${citaInstance?.seguro}">
                            <li class="fieldcontain">
                                <span id="seguro-label" class="property-label"><g:message code="cita.seguro.label" default="Seguro" /></span>

                                <span class="property-value" aria-labelledby="seguro-label"><g:link controller="seguro" action="show" id="${citaInstance?.seguro?.id}">${citaInstance?.seguro?.encodeAsHTML()}</g:link></span>

                            </li>
                        </g:if>

                        <g:if test="${citaInstance?.vehiculo}">
                            <li class="fieldcontain">
                                <span id="vehiculo-label" class="property-label"><g:message code="cita.vehiculo.label" default="Vehiculo" /></span>

                                <span class="property-value" aria-labelledby="vehiculo-label"><g:link controller="vehiculo" action="show" id="${citaInstance?.vehiculo?.id}">${citaInstance?.vehiculo?.encodeAsHTML()}</g:link></span>

                            </li>
                        </g:if>
                    </div>

                <g:form url="[resource:citaInstance, action:'delete']" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="btn btn-primary" action="edit" resource="${citaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="btn btn-danger" action="delete" value="cancelar" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>

</body>
</html>
