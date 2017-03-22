<?php

class requisicionesModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
    public function guardar_requisicion($datos){
     $sql="insert into requisicion 
        values ('', '".$datos['id']."', '".$datos['nombre']."', 'Recibido', '".$datos['departamento']."')";
        $this->_db->query($sql);
        $id=$this->_db->lastInsertId();
        return $id;
    }

    public function guardar_requisicion_detalles($datos){
       $sql="insert into requisicion_partidas 
        values (".$datos['id'].", 
        '".$datos['partida']."', 
        '".$datos['cantidad']."', 
        '".$datos['descripcion']."', 
        '".$datos['precio']."')";
        $this->_db->query($sql);
        return 0;
    }

    public function get_requisiciones_departamentos(){
         $sql = "SELECT requisicion.*, departamento.nombre as nombre_departamento
                 FROM requisicion, departamento 
                 WHERE requisicion.id_departamento=departamento.id_departamento";
         $rs=$this->_db->query($sql);
         return $rs->fetchall();
    }

    public function get_requisiciones_peticiones($id){
         $sql = "SELECT requisicion_partidas.*, departamento.nombre as nombre_departamento,
                        requisicion.codigo_requisicion as codigo_requisicion,
                        requisicion.nombre_requisicion as nombre_requisicion,
                        requisicion.estado_requisicion as estado_requisicion,
                        partidas.partida as nombre_partida,
                        partidas.denominacion as denominacion_partida
                 FROM requisicion_partidas, requisicion, departamento, partidas 
                 WHERE requisicion.id_departamento=departamento.id_departamento
                 and requisicion.id_requisicion=requisicion_partidas.id_requisicion
                 and requisicion_partidas.id_partidas=partidas.id_partida
                 and requisicion_partidas.id_requisicion='$id'";
         $rs=$this->_db->query($sql);
         return $rs->fetchall();
    }

}

?>
