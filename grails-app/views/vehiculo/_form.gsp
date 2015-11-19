<%@ page import="semaforo.Vehiculo" %>



<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'seguro', 'error')} ">
	<label for="seguro">
		<g:message code="vehiculo.seguro.label" default="Seguro" />
		
	</label>
	<g:select id="seguro" name="seguro.id" from="${semaforo.Seguro.list()}" optionKey="id" value="${vehiculoInstance?.seguro?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'placa', 'error')} required">
	<label for="placa">
		<g:message code="vehiculo.placa.label" default="Placa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placa" pattern="${vehiculoInstance.constraints.placa.matches}" required="" value="${vehiculoInstance?.placa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'marca', 'error')} required">
	<label for="marca">
		<g:message code="vehiculo.marca.label" default="Marca" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marca" required="" value="${vehiculoInstance?.marca}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'tipoVehiculo', 'error')} required">
	<label for="tipoVehiculo">
		<g:message code="vehiculo.tipoVehiculo.label" default="Tipo Vehiculo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoVehiculo" required="" value="${vehiculoInstance?.tipoVehiculo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'referencia1', 'error')} required">
	<label for="referencia1">
		<g:message code="vehiculo.referencia1.label" default="Referencia1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="referencia1" required="" value="${vehiculoInstance?.referencia1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'referencia2', 'error')} required">
	<label for="referencia2">
		<g:message code="vehiculo.referencia2.label" default="Referencia2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="referencia2" required="" value="${vehiculoInstance?.referencia2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'referencia3', 'error')} required">
	<label for="referencia3">
		<g:message code="vehiculo.referencia3.label" default="Referencia3" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="referencia3" required="" value="${vehiculoInstance?.referencia3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'modelo', 'error')} required">
	<label for="modelo">
		<g:message code="vehiculo.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modelo" required="" value="${vehiculoInstance?.modelo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="vehiculo.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: vehiculoInstance, field: 'valor')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="vehiculo.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${semaforo.Cliente.list()}" optionKey="id" required="" value="${vehiculoInstance?.cliente?.id}" class="many-to-one"/>

</div>

