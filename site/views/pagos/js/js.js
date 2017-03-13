$(document).ready(function(){

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
			html+="<span class='glyphicon glyphicon-trash'></span></a>";
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



});