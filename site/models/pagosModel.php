<?php

class pagosModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
   
    public function guardar_pagos($datos)
    {
       
	   $sql="insert into pagos 
        values ('',
        '".$datos['nro_orden']."',
        '".$datos['monto_orden']."',
        UPPER('".$datos['nombre_beneficiario']."'),
        '".$datos['id_beneficiario']."',
        UPPER('".$datos['nombre_autorizado']."'),
        '".$datos['id_autorizado']."',
        UPPER('".$datos['cantidad_letras']."'),
        UPPER('".$datos['concepto_pago']."'),
        UPPER('".$datos['entidad_bancaria']."'),
        '".$datos['nro_cheque']."',
        '".$datos['nro_cuenta']."')";
        $this->_db->query($sql);
        $id=$this->_db->lastInsertId();
        for ($i=0; $i <count($datos['partidas']); $i++) { 
            $sql="insert into pagos_partidas values ('$id', '".$datos['partidas'][$i]."')";
            $this->_db->query($sql);
            }
       return $id;

		
        	
    }
    

    public function getPagos($nombre)
    {
        $nombre2=strtoupper($nombre);
        $sql="select * from pagos 
        WHERE pagos.nro_orden like '$nombre2%'
        or pagos.nombre_beneficiario like '$nombre2%'
        or pagos.nombre_autorizado like '$nombre2%'
        or pagos.monto_orden like '$nombre2%'";
        $datos = $this->_db->query($sql);
        return $datos->fetchall();
    }

    public function eliminar_pago($id)
    {
        $sql="delete from pagos 
        WHERE pagos.id_pago= '$id'";
        $this->_db->query($sql);
        return 0;
    }

    public function editar_pago($datos)
    {
        $sql="UPDATE proveedores 
        SET nombre_proveedor='".$datos['nombre_proveedor']."',
        direccion_proveedor='".$datos['direccion_proveedor']."',
        telefono_proveedor='".$datos['telefono_proveedor']."'
        WHERE id_proveedor='".$datos['id_proveedor']."'";
        $this->_db->query($sql);
        return 0; 
    }

    
 

            
                
    
    
        

}

?>


