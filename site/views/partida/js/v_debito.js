$(document).ready(function(){

      $('#saldo_d').autoNumeric('init');    

	$(document).on('change', '#partida', function() {
		$.get(base_url+"partida/get_partida_for_partida",{
			"partida" : $("#partida").val()
		},function(datos){
			if(datos.denominacion) {
				$("#denominacion").val(datos.denominacion);
				$("#saldo_t").val(formatNumber.new(datos.saldo, "Bs"));
			}else{
				$("#denominacion").val("");
				$("#saldo_t").val("");
			}
		},"json");
	});


	$(document).on('keyup', '#saldo_d', function() {
	if(parseFloat(tranformar_moneda_format(this.value))>parseFloat(tranformar_moneda_format($("#saldo_t").val()))){
		$("#saldo_d").val($("#saldo_t").val());
	}});


	$(document).on('click', '#guardar', function() {

		console.log(tranformar_moneda_format($("#saldo_d").val()));

		$.get(base_url+"partida/guardar_operacion",{

			"partida" : $("#partida").val(),
			"descripcion" : $("#descripcion").val(),
			"monto" : tranformar_moneda_format($("#saldo_d").val()),
			"tipo":"desc"

		},function(){

			       location.reload(true);

		});
	});


	




});