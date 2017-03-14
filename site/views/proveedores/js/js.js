$(document).ready(function(){

$(document).on("keyup", "#proveedor", function(){
	nombre_proveedor=$("#proveedor").val();
	mostrar_proveedores(nombre_proveedor);

});

function mostrar_proveedores(nombre_proveedor){
	$.post(base_url + 'proveedores/buscar_proveedores',{
		nombre_proveedor: nombre_proveedor
			},function(datos){
			var html=" <br><div class='panel panel-default'>";
			html+="<div class='panel-heading'>";
			html+=" <h3 class='panel-title'><center><b>RESULTADO - PROVEEDOR</b></center></h3>";
			html+="</div>";
			html+="<div class='panel-body'>";
			html+="<div class='table-responsive'>";
			html+="<table class='table table-striped table-hover '><thead>";
			html+="<tr class='default'>";
			html+="<th>Nombre</th>";
			html+="<th>Telefono</th>";
			html+="<th>Direccion</th>";
			html+="<th>Acciones</th>";
			html+="</tr>";
			html+="</thead>";
			html+="<tbody>";
		if(datos==""){
			
			html+="<tr><td colspan='5'> <b><center>No Se Encontraron Proveedores</center></b></td></tr>";
			html+="</tbody> </table> </div> </div> </div>";
			$("#div_contenedor2").html("");
			$("#div_contenedor2").html(html);
			exit();
			}	
			for(var i = 0; i < datos.length; i++)
			{	
			html+="<tr><td>" + datos[i].nombre_proveedor + "</td>";
			html+="<td>" + datos[i].telefono_proveedor + "</td>";
			html+="<td>" + datos[i].direccion_proveedor + "</td>";
			html+="<td><a id='eliminar_proveedores' data-toggle='tooltip' data-placement='bottom' title='Eliminar Proveedor' data-id_proveedor='"+datos[i].id_proveedor+"'><span class='glyphicon glyphicon-trash'></span></a>";
			html+="<a data-toggle='modal' id='cargar_datos' data-target='#modaleditar' data-placement='bottom' title='Editar Proveedor'"; 
			html+="data-id_proveedor='"+datos[i].id_proveedor+"' data-nombre_proveedor='"+datos[i].nombre_proveedor+"'";
			html+="data-telefono_proveedor='"+datos[i].telefono_proveedor+"' data-direccion_proveedor='"+datos[i].direccion_proveedor+"'>";
			html+="<span class='glyphicon glyphicon-user'></span></a></td>";
			}
			
			html+="</tbody> </table> </div> </div> </div>";
			$("#div_contenedor2").html("");
			$("#div_contenedor2").html(html);
				
	           },"json");
};

$(document).on("click", "#eliminar_proveedores", function(){
	id_proveedor=$(this).data("id_proveedor");
	decision=confirm("Desea realmente eliminarlo");
	if(decision==false){
		exit();
	}

	$.post(base_url + 'proveedores/eliminar_proveedor',{
			id_proveedor: id_proveedor
				},function(datos){
				alert("Proveedor eliminado");
				mostrar_proveedores($("#proveedor").val());			
		           },"json");

});

$(document).on("click", "#cargar_datos", function(){
	
	$("#id_proveedor_editar").val($(this).data("id_proveedor"));
	$("#nombre_proveedor").val($(this).data("nombre_proveedor"));
	$("#direccion_proveedor").val($(this).data("direccion_proveedor"));
	$("#telefono_proveedor").val($(this).data("telefono_proveedor"));

});

$(document).on("click", "#editar_proveedor", function(){
	
	id_proveedor_editar=$("#id_proveedor_editar").val();
	nombre_proveedor=$("#nombre_proveedor").val();
	direccion_proveedor=$("#direccion_proveedor").val();
	telefono_proveedor=$("#telefono_proveedor").val();

	$.post(base_url + 'proveedores/editar_proveedor',{
			id_proveedor:id_proveedor_editar,
			nombre_proveedor:nombre_proveedor,
			direccion_proveedor:direccion_proveedor,
			telefono_proveedor:telefono_proveedor
				},function(datos){
				alert("Proveedor editado");
				mostrar_proveedores($("#proveedor").val());			
		           },"json");

});

});