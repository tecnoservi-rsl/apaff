<?php

class registroModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
   
    public function guardar_departamentos($datos)
    {
        

        $codigo=strtoupper($datos['codigo']);
        $nombre=strtoupper($datos['nombre_departamento']);
       $descripcion=strtoupper($datos['descripcion_departamento']);
    	       

        $sql="insert into usuario 
        values ('','2','$codigo','".Hash::getHash('sha1', $datos['pass'], HASH_KEY)."','1')";
        $this->_db->query($sql);
        $id=$this->_db->lastInsertId();
		$sql="insert into departamento values ('','$codigo','$nombre','$descripcion')";
        $this->_db->query($sql);
		
        	
    }
    

    public function getUsuario($id_usuario, $codigo)
    {
        $usuario = $this->_db->query(
                    "select * from usuario where id_usuario = $id_usuario and codigo = '$codigo'"
                    );
                    
        return $usuario->fetch();
    }
    
 

            
                
    
    
        

}

?>


