$(document).ready(function(){
var contador=0;
var array= new Array();
$("#tabla_partidas").hide();
$(document).on("keyup", "#pago", function(){
	nombre=$("#pago").val();
	mostrar_pagos(nombre);

});

function mostrar_pagos(nombre){
	$.post(base_url + 'pagos/buscar_pagos',{
		nombre: nombre
			},function(datos){
			var html=" <br><div class='panel panel-default'>";
			html+="<div class='panel-heading'>";
			html+=" <h3 class='panel-title'><center><b>RESULTADO - PAGOS</b></center></h3>";
			html+="</div>";
			html+="<div class='panel-body'>";
			html+="<div class='table-responsive'>";
			html+="<table class='table table-striped table-hover '><thead>";
			html+="<tr class='default'>";
			html+="<th>Nro de orden de pago</th>";
			html+="<th>Beneficiario</th>";
			html+="<th>Autorizado</th>";
			html+="<th>Monto</th>";
			html+="<th>Acciones</th>";
			html+="</tr>";
			html+="</thead>";
			html+="<tbody>";
		if(datos==""){
			
			html+="<tr><td colspan='5'> <b><center>No Se Encontraron Pagos</center></b></td></tr>";
			html+="</tbody> </table> </div> </div> </div>";
			$("#div_contenedor2").html("");
			$("#div_contenedor2").html(html);
			exit();
			}	
			for(var i = 0; i < datos.length; i++)
			{	
			html+="<tr><td>" + datos[i].nro_orden + "</td>";
			html+="<td>" + datos[i].nombre_beneficiario + "</td>";
			html+="<td>" + datos[i].nombre_autorizado + "</td>";
			html+="<td>" + datos[i].monto_orden + "</td>";
			html+="<td><a id='eliminar_pagos' data-toggle='tooltip' data-placement='bottom' title='Eliminar Pagos' data-id_pago='"+datos[i].id_pago+"'>";
			html+="<span class='glyphicon glyphicon-trash'></span></a>&nbsp;&nbsp;&nbsp;";
			html+="<a data-placement='bottom' id='pdf_pago' title='PDF Pagos' data-id_pago'"+datos[i].id_pago+"'";
			html+="<span class='glyphicon glyphicon-file'></span></a></td>";
			}
			
			html+="</tbody> </table> </div> </div> </div>";
			$("#div_contenedor2").html("");
			$("#div_contenedor2").html(html);
				
	           },"json");
};

$(document).on("click", "#eliminar_pagos", function(){
	id_pago=$(this).data("id_pago");
	decision=confirm("Desea realmente eliminarlo");
	if(decision==false){
		exit();
	}

	$.post(base_url + 'pagos/eliminar_pago',{
			id_pago: id_pago
				},function(datos){
				alert("Orden de pago eliminado");
				mostrar_pagos($("#pago").val());			
		           },"json");

});

function select_partidas(){
	$.get(base_url+"partida/get_all",{
				
					},function(datos){
						console.log(datos);
						for ( var i=0;  i < datos.length ;  i++) {
							
							$('#select_partidas').append('<option value="'+datos[i].id_partida+'">'+datos[i].partida+' -- '+datos[i].denominacion+'</option>');
						
					}


					},"json");
};

select_partidas();

$(document).on('click', '#guardar', function() {
	
		var nro_orden =$("#nro_orden").val();
		var monto_orden =$("#monto_orden").val();
		var nombre_beneficiario =$("#nombre_beneficiario").val();
		var id_beneficiario =$("#id_beneficiario").val();
		var nombre_autorizado =$("#nombre_autorizado").val();
		var id_autorizado =$("#id_autorizado").val();
		var cantidad_letras =$("#cantidad_letras").val();
		var concepto_pago =$("#concepto_pago").val();
		var entidad_bancaria =$("#entidad_bancaria").val();
		var nro_cheque =$("#nro_cheque").val();
		var nro_cuenta =$("#nro_cuenta").val();
		var newArray= new Array();
		for( var i = 0, j = array.length; i < j; i++ ){
	      	if ( array[ i ] ){
	        newArray.push( array[ i ] );
  			  }
  			}
  		array=newArray;

			$.post(base_url+"pagos/guardar_pagos",{

			"nro_orden" : nro_orden,
			"monto_orden" : monto_orden,
			"nombre_beneficiario" : nombre_beneficiario,
			"id_beneficiario" : id_beneficiario,
			"nombre_autorizado" : nombre_autorizado,
			"id_autorizado" : id_autorizado,
			"cantidad_letras" : cantidad_letras,
			"concepto_pago" : concepto_pago,
			"entidad_bancaria" : entidad_bancaria,
			"nro_cheque" : nro_cheque,
			"nro_cuenta" : nro_cuenta,
			"partidas" : array
			},function(datos){
					console.log(datos);
					location.href=base_url+"pdf/generar_orden/"+datos;

			});


	});

$(document).on('click', '#btn_agregar', function(){
	if(array.includes($("#select_partidas").val())==true){
		alert("No se puede cargar la partida dos veces")
		exit();
	}
	array[contador]=$("#select_partidas").val();
	var montar=$("#select_partidas option:selected").text();
	var html='<tr><td>'+montar+'</td>';
	html+='<td><a id="eliminar_partida" data-id_partida="'+array[contador]+'" data-placement="bottom" title="Eliminar Partida">';
	html+='<span class="glyphicon glyphicon-remove"></span></a></td></tr>';
	$('#previa tr:last').after(html);
	$("#tabla_partidas").show();
	contador=contador+1;
});

$(document).on('click', '#eliminar_partida', function(){
		var posicion=array.indexOf($(this).data("id_partida"));
		array.splice(posicion, 1);
		var newArray= new Array();
		for( var i = 0, j = array.length; i < j; i++ ){
	      	if ( array[ i ] ){
	        newArray.push( array[ i ] );
  			  }
  			}
  		array=newArray;
		$(this).closest('tr').remove();
		console.log(array);
});

});