$(document).ready(function(){

      $('#saldo').autoNumeric('init');    

function select_departamentos(){

				$.get(base_url+"partida/get_departamentos",{
					},function(datos){
						console.log(datos);
						for ( var i=0;  i < datos.length ;  i++) {
							
							$('#select_departamentos').append('<option value="'+datos[i].id_departamento+'">'+datos[i].codigo+' -- '+datos[i].nombre+'</option>');
						
					}


					},"json");
			}
select_departamentos();

	$(document).on('keyup', '#partida', function() {


		$.get(base_url+"partida/get_partida_for_partida",{

			"partida" : $("#partida").val()

		},function(datos){

			console.log(datos);

			if(datos.denominacion) {
				$("#select_departamentos").val(datos.id_departamentos);
				$("#denominacion").val(datos.denominacion);
				$("#saldo").val(datos.saldo.toFixed(2));
				$("#saldo").prop('disabled', true);
				$("#guardar").prop('disabled', true);
				$("#actualizar").prop('disabled', false);
				$("#limpiar").prop('disabled', false);
				$("#select_departamentos").prop('disabled',true);

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



	$(document).on('click', '#guardar', function() {

		

		$.get(base_url+"partida/guardar",{

			"partida" : $("#partida").val(),
			"departamento" : $("#select_departamentos").val(),
			"denominacion" : $("#denominacion").val(),
			"saldo" : tranformar_moneda_format($("#saldo").val())

		},function(){

			        location.reload(true);

		});
	});

	$(document).on('click', '#actualizar', function() {


		$.get(base_url+"partida/actualizar",{

			"partida" : $("#partida").val(),
			"departamento" : $("#select_departamentos").val(),
			"denominacion" : $("#denominacion").val()
			

		},function(){

			        location.reload(true);

		});
	});

	$(document).on('click', '#limpiar', function() {


			        location.reload(true);

		
	});


	




});