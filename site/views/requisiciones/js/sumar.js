$(document).ready(function(){

      $('#saldo_d').autoNumeric('init');    

	


	


	$(document).on('click', '#guardar', function() {

		console.log(tranformar_moneda_format($("#saldo_d").val()));

		$.get(base_url+"partida/guardar_operacion",{

			"partida" : $("#partida").val(),
			"descripcion" : $("#descripcion").val(),
			"monto" : tranformar_moneda_format($("#saldo_d").val()),
			"tipo":"aum"

		},function(){

			       location.reload(true);

		});
	});


	




});