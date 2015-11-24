<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 19/11/2015
  Time: 03:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
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
    <asset:stylesheet src="tablas.css"/>
    <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<body>
<header>

    <div class="container">
        <h1 class="icon-semaforo">Semáforo</h1><!-- BARRA DE MENU (CONSOLIDADA) -->
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/home')}">Inicio</a>
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
        <div class="col-md-4">
            <h3>Datos de Vehículo</h3>
            <g:form url="[resource:vehiculoInstance, action:'saveApp']" >
                <fieldset class="form">

                    <div class="form-group ${hasErrors(bean: vehiculoInstance, field: 'placa', 'error')} required">
                        <label for="placa">
                            <g:message code="vehiculo.placa.label" default="Placa" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField class="form-control" placeholder="XXX-111" name="placa" pattern="${vehiculoInstance.constraints.placa.matches}" required="" value="${vehiculoInstance?.placa}"/>

                    </div>


                    <div class="form-group fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'color', 'error')} required">
                        <label for="color">
                            <g:message code="vehiculo.color.label" default="Color" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField class="form-control" name="color" required="" value="${vehiculoInstance?.color}"/>

                    </div>

                    <div class="form-group fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'motor', 'error')} required">
                        <label for="motor">
                            <g:message code="vehiculo.motor.label" default="Motor" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField class="form-control" name="motor" required="" value="${vehiculoInstance?.motor}"/>

                    </div>

                    <div class="form-group fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'chasis', 'error')} required">
                        <label for="chasis">
                            <g:message code="vehiculo.chasis.label" default="Chasis" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField class="form-control" name="chasis" required="" value="${vehiculoInstance?.chasis}"/>

                    </div>

                    <div class="hidden">
                        <div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'coberturaParcial', 'error')} required">
                            <label for="coberturaParcial">
                                <g:message code="vehiculo.coberturaParcial.label" default="Cobertura Parcial" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:field name="coberturaParcial" value="${semaforo.Seguro.get(params.segId).coberturaParcial.toLong()}" required="" readonly=""/>

                        </div>

                        <div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'coberturaTotal', 'error')} required">
                            <label for="coberturaTotal">
                                <g:message code="vehiculo.coberturaTotal.label" default="Cobertura Total" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:field name="coberturaTotal" value="${semaforo.Seguro.get(params.segId).coberturaTotal.toLong()}" required="" readonly=""/>

                        </div>
                    </div>

                    <div class="form-group fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'valor', 'error')} required">
                        <label for="valor">
                            <g:message code="vehiculo.valor.label" default="Valor" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:field class="form-control" name="valor" value="${semaforo.Seguro.get(params.segId).valorModelo.valor.toLong()}" required="" readonly=""/>

                    </div>

                    <div class="hidden">
                        <div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'cliente', 'error')} required">
                            <label for="cliente">
                                <g:message code="vehiculo.cliente.label" default="Cliente" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:select id="cliente" name="cliente.id" from="${semaforo.Cliente.get(session.cliente.id)}" optionKey="id" required="" value="${vehiculoInstance?.cliente?.id}" class="many-to-one"/>
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'seguro', 'error')}">
                            <label for="seguro">
                                <g:message code="vehiculo.seguro.label" default="Seguro" />

                            </label>
                            <g:select id="seguro" name="seguro.id" from="${semaforo.Seguro.get(params.segId)}" optionKey="id" value="${vehiculoInstance?.seguro?.id}" class="many-to-one" />
                        </div>
                    </div>

                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" value="Continuar" class="btn btn-primary"/>
                </fieldset>
            </g:form>

        </div>
        <div class="col-md-8">
            <h3>Resumen del Seguro</h3>

                <table border=2 class="table" id="cotizacion">
                    <tr>
                        <th>Características</th>
                        <th>${semaforo.Seguro.get(params.segId).empresa.nombre}</th>
                    </tr>

                    <tr>
                        <td>Valor</td>
                        <td>${semaforo.Seguro.get(params.segId).valor.toLong()}</td>
                    </tr>
                    <tr>
                        <td>Cobertura total</td>
                        <td>${semaforo.Seguro.get(params.segId).coberturaTotal.toLong()}</td>
                    </tr>
                    <tr>
                        <td>Deducible total</td>
                        <td>${semaforo.Seguro.get(params.segId).deducibleTotal}</td>
                    </tr>
                    <tr>
                        <td>Cobertura parcial</td>
                        <td>${semaforo.Seguro.get(params.segId).coberturaParcial.toLong()}</td>
                    </tr>
                    <tr>
                        <td>Deducible parcial</td>
                        <td>${semaforo.Seguro.get(params.segId).deducibleParcial}</td>
                    </tr>
                    <tr>
                        <td>Deducible total</td>
                        <td>${semaforo.Seguro.get(params.segId).deducibleTotal}</td>
                    </tr>
                    <tr>
                        <td>Asistencia Jurídica</td>
                        <g:if test="${semaforo.Seguro.get(params.segId).abogado}">
                            <td><img src="${request.contextPath}/assets/true.png"/></td>
                        </g:if>
                        <g:else>
                            <td><img src="${request.contextPath}/assets/false.png"/></td>
                        </g:else>
                    </tr>
                    <tr>
                        <td>Vehículo de reemplazo</td>
                        <g:if test="${semaforo.Seguro.get(params.segId).vehiculoRemplazo}">
                            <td><img src="${request.contextPath}/assets/true.png"/></td>
                        </g:if>
                        <g:else>
                            <td><img src="${request.contextPath}/assets/false.png"/></td>
                        </g:else>
                    </tr>
                    <tr>
                        <td>Gastos de transporte</td>
                        <g:if test="${semaforo.Seguro.get(params.segId).gastosTransporte}">
                            <td><img src="${request.contextPath}/assets/true.png"/></td>
                        </g:if>
                        <g:else>
                            <td><img src="${request.contextPath}/assets/false.png"/></td>
                        </g:else>
                    </tr>
                    <tr>
                        <td>Grúa</td>
                        <g:if test="${semaforo.Seguro.get(params.segId).grua}">
                            <td><img src="${request.contextPath}/assets/true.png"/></td>
                        </g:if>
                        <g:else>
                            <td><img src="${request.contextPath}/assets/false.png"/></td>
                        </g:else>
                    </tr>
                    <tr>
                        <td>Chofer</td>
                        <g:if test="${semaforo.Seguro.get(params.segId).chofer}">
                            <td><img src="${request.contextPath}/assets/true.png"/></td>
                        </g:if>
                        <g:else>
                            <td><img src="${request.contextPath}/assets/false.png"/></td>
                        </g:else>
                    </tr>
                    <tr>
                        <td>Responsabilidad Civil</td>
                        <td>${semaforo.Seguro.get(params.segId).responsabilidadCivil.toLong()}</td>
                    </tr>
                </table>

        </div>

    </div>

</div>



</body>
</html>