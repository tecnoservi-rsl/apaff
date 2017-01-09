//var base_url = 'http://americas89.no-ip.info:8080/didactico/';
//var base_url = 'http://192.168.0.5/didactico/';
var base_url = 'http://localhost/apaff/';





/*
--------------------\
			  \
funciones globales  \
			  \
--------------------\
*/


/*
--------------------------\
			 	  \
txt moneda a decimal-sql  \
			  	  \
--------------------------\
*/


function tranformar_moneda_format (cant) {

cantt =cant.replace(/^\s+|\s+|\s+$/,"");
nework="";

    for (x=0;x<cantt.length;x++){
      if(cantt[x]!="B" && cantt[x]!="." && cantt[x]!="s" ){
    		nework+=cantt[x];	
    	}  		
    }
var num="";

    for (x=0;x<nework.length;x++){
      if(nework[x]==","){
        num+="."; 
      }else{
        num+=nework[x];
      }
    }
return num;
	
}



var formatNumber = {
 separador: ".", // separador para los miles
 sepDecimal: ',', // separador para los decimales
 formatear:function (num){
  num +='';
  var splitStr = num.split('.');
  var splitLeft = splitStr[0];
  var splitRight = splitStr.length > 1 ? this.sepDecimal + splitStr[1] : '';
  var regx = /(\d+)(\d{3})/;
  while (regx.test(splitLeft)) {
  splitLeft = splitLeft.replace(regx, '$1' + this.separador + '$2');
  }
  return this.simbol + splitLeft  +splitRight;
 },
 new:function(num, simbol){
  this.simbol = simbol ||'';
  return this.formatear(num);
 }
}

