$(document).ready(function(){
	var bandera=0;
	var id_requisicion=0;
	$("#oculto").hide();
	$("#guardar").hide();
	$("#actualizar").hide();
	$("#atras2").hide();
	$("#finalizar").hide();
	

    $('#saldo').autoNumeric('init');    

function select_departamentos(){

				$.get(base_url+"partida/get_departamentos",{
					},function(datos){
						for ( var i=0;  i < datos.length ;  i++) {
							
							$('#select_departamentos').append('<option value="'+datos[i].id_departamento+'">'+datos[i].codigo+' -- '+datos[i].nombre+'</option>');
						
					}


					},"json");
			}
select_departamentos();

$(document).on('change', '#select_departamentos', function(){
	$.get(base_url+"partida/get_partidas_for_departamento",{
				"id":$("#select_departamentos").val()
					},function(datos){
						console.log(datos);
						for ( var i=0;  i < datos.length ;  i++) {
							
							$('#select_partidas').append('<option value="'+datos[i].id_partida+'">'+datos[i].partida+' -- '+datos[i].denominacion+'</option>');
						
					}


					},"json");
});

	$(document).on('keyup', '#partida', function() {


		$.get(base_url+"partida/get_partida_for_partida",{

			"partida" : $("#partida").val()

		},function(datos){

			console.log(datos);

			if(datos.denominacion) {

				$("#denominacion").val(datos.denominacion);
				$("#saldo").val(datos.saldo.toFixed(2));
				$("#saldo").prop('disabled', true);
				$("#guardar").prop('disabled', true);
				$("#actualizar").prop('disabled', false);
				$("#limpiar").prop('disabled', false);

			}else{
				$("#denominacion").val("");
				$("#saldo").val("");
				$("#saldo").prop('disabled', false);
				$("#guardar").prop('disabled', false);
				$("#actualizar").prop('disabled', true);
				$("#limpiar").prop('disabled', true);

			}
			
			
			

		},"json");
	});


$(document).on('click', '#continuar', function() {

if (($("#nombre_requisicion").val()=='')||($("#codigo_requisicion").val()=='')){
	alert("Para poder continuar debe colocar el nombre y el codigo de la requisicion");
	exit();

}
		$("#nombre_requisicion").attr('disabled', 'disabled');
		$("#codigo_requisicion").attr('disabled', 'disabled');
		$("#select_departamentos").attr('disabled', 'disabled');
		$("#oculto").show(100);
		$("#guardar").show(100);
		$("#actualizar").show(100);
		$("#atras2").show(100);
		$("#finalizar").show(100);
		$("#atras").hide();
		$("#continuar").hide();

		
	});

	$(document).on('click', '#atras2', function() {
		$("#oculto").hide();
		$("#guardar").hide();
		$("#actualizar").hide();
		$("#atras2").hide();
		$("#finalizar").hide();
		$("#atras").show();
		$("#continuar").show();
		$("#nombre_requisicion").removeAttr('disabled');
		$("#codigo_requisicion").removeAttr('disabled');
		$("#select_departamentos").removeAttr('disabled');;

		});

	$(document).on('click', '#guardar', function() {
	
		if(bandera==0){

			$.get(base_url+"requisiciones/guardar_requisicion",{

				"id" : $("#codigo_requisicion").val(),
				"nombre" : $("#nombre_requisicion").val(),
				"departamento" : $("#select_departamentos").val()
			},function(datos){
				console.log(datos);
				id_requisicion=datos;
				bandera=1;
			});
		}

		var descripcion= $("#descripcion").val();
		var partida= $("#select_partidas").val();
		var nombre_partida=$("#select_partidas option:selected").text();
		var cantidad= $("#cantidad").val();
		var precio= $("#precio").val();

			$.get(base_url+"requisiciones/guardar_requisicion_detalles",{

				"id" : id_requisicion,
				"descripcion" :descripcion,
				"partida" : partida,
				"cantidad" : cantidad,
				"precio" : precio
			},function(){
						var html='<tr><td>'+nombre_partida+'</td>';
						html+='<td>'+descripcion+'</td>';
						html+='<td>'+cantidad+'</td>';
						html+='<td>'+precio+'</td>';
						html+='<td>'+(parseInt(precio)*parseInt(cantidad))+'</td>';
						html+='</tr>';
					$('#previa tr:last').after(html);

			});


	});

	$(document).on('click', '#actualizar', function() {


		$.get(base_url+"partida/actualizar",{

			"partida" : $("#partida").val(),
			"denominacion" : $("#denominacion").val()
			

		},function(){

			        location.reload(true);

		});
	});

	$(document).on('click', '#limpiar', function() {


			        location.reload(true);

		
	});


	$(document).on('click', '#finalizar', function() {


			        history.back();

		
	});




});