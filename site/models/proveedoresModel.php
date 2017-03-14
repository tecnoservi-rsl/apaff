<?php

class proveedoresModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
   
    public function guardar_proveedores($datos)
    {
        

        $nombre=strtoupper($datos['nombre_proveedor']);
        $direccion=strtoupper($datos['direccion_proveedor']);       
		$sql="insert into proveedores values ('','$nombre','$direccion','".$datos['telefono_proveedor']."')";
        $this->_db->query($sql);
		
        	
    }
    

    public function getProveedores($nombre)
    {
        $nombre2=strtoupper($nombre);
        $sql="select * from proveedores 
        WHERE proveedores.nombre_proveedor 
        like '$nombre2%'";
        $datos = $this->_db->query($sql);
        return $datos->fetchall();
    }

    public function eliminar_proveedor($id)
    {
        $sql="delete from proveedores 
        WHERE proveedores.id_proveedor= '$id'";
        $this->_db->query($sql);
        return 0;
    }

    public function editar_proveedor($datos)
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


