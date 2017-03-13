$(document).ready(function(){


$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})



$(document).on('click', '#detalles_requisicion', function(event) {
					


	$.get(base_url+'requisiciones/get_requisiciones_peticiones',{

		'requisicion' : this.dataset.requisicion

	}, function(data) {
		
		console.log(data);

		$('#myModal').modal('show');
		var total=0;		
		var html="";

		html += '<table class="table table-bordered">';
		html += '<tr><td colspan="4">'+data['0'].codigo_requisicion+' - '+data['0'].nombre_requisicion +'</td>';
		html+='<td>Departamento:<br>'+data['0'].nombre_departamento+'</td></tr>';
		html += '<tr>';
		html += '<td> Partida';
		html += '</td>';
		html += '<td> Descripcion';
		html += '</td>';
		html += '<td> Cantidad';
		html += '</td>';
		html += '<td> Costo Unitario';
		html += '</td>';
		html += '<td> Costo Total';
		html += '</td>';
		html += '</tr>';

		


		for (var i = 0 ; i < data.length; i++) {
			
		html += '<tr>';
		html += '<td> '+data[i].nombre_partida+' '+data[i].denominacion_partida;
		html += '</td>';
		html += '<td> '+data[i].descripcion;
		html += '</td>';
		html += '<td> '+data[i].cantidad;
		html += '</td>';
		html += '<td> '+data[i].precio;
		html += '</td>';
		total=total+parseInt(data[i].cantidad * data[i].precio);
		html += '<td> '+parseInt(data[i].cantidad) * parseInt(data[i].precio);
		html += '</td>';
		html += '</tr>';

		}
		html+='<tr><td colspan="5">Costo Total: '+total+' Bs</td></tr>';
		html+='<tr><td colspan="5">Estado: '+data['0'].estado_requisicion+'</td></tr>';
		html += '</table>';




		$("#tablaa").html(html);


	},"json");

});	


$(document).on('click', '#sumar', function(event) {
					
	console.log(this.dataset.id_partida);

	location.href=base_url+"partida/sumar/"+this.dataset.id_partida;
	

});			



});