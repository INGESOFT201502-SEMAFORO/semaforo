<%--
  Created by IntelliJ IDEA.
  User: esteban
  Date: 1/11/15
  Time: 01:33 PM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName", value="${message(code: 'vendedor.label', default: 'Vendedor')}" />
    <title><g:message code="default.create.label", args="[entityName]" /></title>
</head>
<body>
<div id="create-vendedor" class="content scaffold-create" role="main">
    <g:if test="${session.vendedor}">
        <g:if test="${flash.message}">
            <div class="alert alert-danger" role="alert">
                <div class="message" role="status">${flash.message}</div>
            </div>
        </g:if>
        <g:hasErrors bean="${vendedorInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${vendedorInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/> </li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <a class="btn btn-default" href="${createLink(uri: '/home')}">Volver</a>
    </g:if>
    <g:else>
        <h1>Formulario de Registro Vendedores</h1>
        <g:form url="[resource: vendedorInstance, action:'registerLogin']" >
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="btn btn-success" value="Registrarse"/>
            </fieldset>
        </g:form>
    </g:else>
</div>
</body>
</html>