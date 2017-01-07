$(document).ready(function(){


$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})



$(document).on('click', '#infor_partida', function(event) {
					
	console.log(this.dataset.partida);

	$.get(base_url+'partida/get_partida_all',{

		'partida' : this.dataset.partida

	}, function(data) {
		
		

		$('#myModal').modal('show');
		var total1=0;
		var total2=0;
		var html="";

		html += '<table class="table table-bordered">';
		html += '<tr><td colspan="5">'+data.partida+' ('+data.denominacion+')</td></tr>';
		html += '<tr>';
		html += '<td> nro de operacion';
		html += '</td>';
		html += '<td> comentario';
		html += '</td>';
		html += '<td> fecha';
		html += '</td>';
		html += '<td> debito';
		html += '</td>';
		html += '<td> credito';
		html += '</td>';
		html += '</tr>';

		console.log(data.operacion.length);


		for (var i = 0 ; i < data.operacion.length; i++) {
			
		html += '<tr>';
		html += '<td> '+i;
		html += '</td>';
		html += '<td> '+data.operacion[i].comentario;
		html += '</td>';

		if (data.operacion[i].tipo=="aum") {

		html += '<td> '+data.operacion[i].fecha;
		html += '</td>';
		html += '<td> ';
		html += '</td>';
		html += '<td> '+formatNumber.new(data.operacion[i].cantidad, "Bs");
		total1+=parseFloat(data.operacion[i].cantidad);
		html += '</td>';
		


		}else{
		html += '<td> '+data.operacion[i].fecha;
		html += '</td>';	
		html += '<td> '+formatNumber.new(data.operacion[i].cantidad, "Bs");
		total2+=parseFloat(data.operacion[i].cantidad);
		html += '</td>';
		html += '<td> ';
		html += '</td>';	



		}

		
		html += '</tr>';

		}

		html += '<tr><td colspan="3">SUB TOTALES</td><td>'+formatNumber.new(total2.toFixed(2), "Bs")+'</td> <td>'+formatNumber.new(total1.toFixed(2), "Bs")+'</td> </tr>';
		html += '<tr><td colspan="4">TOTAL</td><td>'+formatNumber.new((total1-total2).toFixed(2), "Bs")+'</td> </tr>';
		html += '</table>';




		$("#tablaa").html(html);


	},"json");

});				



});