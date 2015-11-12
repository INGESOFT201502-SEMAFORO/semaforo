<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="navBarAndLogin">
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    	<table>
    		<tr>
    			<th>Tipo de vehículo</th>
    			<td id="tipo_vehiculo"></td>
    		</tr>
    		<tr id="tr_marca" class="hidden">
    			<th>Marca</th>
    			<td id="marca"></td>
    		</tr>
    		<tr id="tr_referencia1" class="hidden">
    			<th>Referencia 1</th>
    			<td id="referencia1"></td>
    		</tr>
    		<tr id="tr_referencia2" class="hidden">
    			<th>Referencia 2</th>
    			<td id="referencia2"></td>
    		</tr>
    		<tr id="tr_referencia3" class="hidden">
    			<th>Referencia 3</th>
     			<td id="referencia3"></td>
    		</tr>
    	</table>
    	<script>
		$.ajax({
			url : '${request.contextPath}/vehiculo/getTipoVehiculo',
			success : function(datos){
				var $tipo_vehiculo = $('<select>');
				$tipo_vehiculo.append($('<option value="-1">').text('Seleccione tipo de vehículo'));

				datos.forEach(function(tipo){
					$tipo_vehiculo.append($('<option>').text(tipo));
				});

				$("#tipo_vehiculo").html($tipo_vehiculo);

				$tipo_vehiculo.change(function(){
					$("#tr_marca").addClass('hidden');
					$("#tr_referencia1").addClass('hidden');
					$("#tr_referencia2").addClass('hidden');	
					$("#tr_referencia3").addClass('hidden');
					$.ajax({
						url : '${request.contextPath}/vehiculo/getMarcas?tipo='+ $tipo_vehiculo.val(),
						success : function(datos){
							$("#tr_marca").removeClass();
							var $marca = $('<select>');
							$marca.append($('<option value="-1">').text('Seleccione una marca'));

							datos.forEach(function(tipo){
								$marca.append($('<option>').text(tipo));
							});

							$("#marca").html($marca);

							$marca.change(function(){
								$("#tr_referencia1").addClass('hidden');
								$("#tr_referencia2").addClass('hidden');	
								$("#tr_referencia3").addClass('hidden');
								$.ajax({
									url : '${request.contextPath}/vehiculo/getReferencia1?marca='+ $marca.val(),
									success : function(datos){
										$("#tr_referencia1").removeClass();
										var $referencia1 = $('<select>');
										$referencia1.append($('<option value="-1">').text('Seleccione una referencia'));

										datos.forEach(function(tipo){
											$referencia1.append($('<option>').text(tipo));
										});

										$("#referencia1").html($referencia1);

										$referencia1.change(function(){
											$("#tr_referencia2").addClass('hidden');	
											$("#tr_referencia3").addClass('hidden');
											$.ajax({
												url : '${request.contextPath}/vehiculo/getReferencia2?marca='+ $marca.val() + '&referencia1='+ $referencia1.val(),
												success : function(datos){
													$("#tr_referencia2").removeClass();
													var $referencia2 = $('<select>');
													$referencia2.append($('<option value="-1">').text('Seleccione una referencia'));

													datos.forEach(function(tipo){
														$referencia2.append($('<option>').text(tipo));
													});

													$("#referencia2").html($referencia2);

													$referencia2.change(function(){
														$("#tr_referencia3").addClass('hidden');
														$.ajax({
															url : '${request.contextPath}/vehiculo/getReferencia3?marca='+ $marca.val() + '&referencia1='+ $referencia1.val() +'&referencia2='+ $referencia2.val(),
															success : function(datos){
																$("#tr_referencia3").removeClass();
																var $referencia3 = $('<select>');
																$referencia3.append($('<option value="-1">').text('Seleccione una referencia'));

																datos.forEach(function(row){
																	$referencia3.append($('<option value="'+row.codigo+'">').text(row.referencia3));
																});

																$("#referencia3").html($referencia3);

																$referencia3.change(function(){
																	alert("El código del vehículo es: "+$referencia3.val());
																	
																});
															}
														});
													});
												}
											});
										});
									}
								});
							});
						}
					});
				});
			}
		});
    	</script>
	</body>
</html>