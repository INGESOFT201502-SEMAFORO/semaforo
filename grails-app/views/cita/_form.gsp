<%@ page import="semaforo.Cita" %>



<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="cita.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${citaInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'lugar', 'error')} required">
	<label for="lugar">
		<g:message code="cita.lugar.label" default="Lugar" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lugar" required="" value="${citaInstance?.lugar}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="cita.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${citaInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'seguro', 'error')} required">
	<label for="seguro">
		<g:message code="cita.seguro.label" default="Seguro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="seguro" name="seguro.id" from="${semaforo.Seguro.list()}" optionKey="id" required="" value="${citaInstance?.seguro?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'vehiculo', 'error')} required">
	<label for="vehiculo">
		<g:message code="cita.vehiculo.label" default="Vehiculo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="vehiculo" name="vehiculo.id" from="${semaforo.Vehiculo.list()}" optionKey="id" required="" value="${citaInstance?.vehiculo?.id}" class="many-to-one"/>

</div>

