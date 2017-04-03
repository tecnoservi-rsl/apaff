$(document).ready(function(){

$('#nro_orden').addClass('validate[required]');
$('#nombre_beneficiario').addClass('validate[required]');
$('#id_beneficiario').addClass('validate[required]');
$('#concepto_pago').addClass('validate[required]');
$('#entidad_bancaria').addClass('validate[required]');
$('#nro_cheque').addClass('validate[required]');
$('#nro_cuenta').addClass('validate[required]');




$('#form_registro').validationEngine();

//$('#form_registro').validationEngine('validate');
				
			

});