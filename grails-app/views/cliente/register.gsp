<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 31/10/2015
  Time: 10:57 AM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<div id="create-cliente" class="content scaffold-create" role="main">
    <g:if test="${session.cliente}">
        <g:if test="${flash.message}">
            <div class="alert alert-danger" role="alert">
            <div class="message" role="status">${flash.message}</div>
            </div>
        </g:if>
        <g:hasErrors bean="${clienteInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${clienteInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <a class="btn btn-default" href="${createLink(uri: '/home')}">Volver</a>
    </g:if>
    <g:else>
        <h1>Formulario de registro</h1>
        <g:form  url="[resource:clienteInstance, action:'registerLogin']" >
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </g:form>
    </g:else>
</div>
</body>
</html>