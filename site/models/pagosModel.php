<?php

class pagosModel extends Model
{

    public $nro_orden;
    public $monto_orden;
    public $nombre_beneficiario;
    public $id_beneficiario;
    public $nombre_autorizado;
    public $id_autorizado;
    public $cantidad_letras ;
    public $concepto_pago ;
    public $entidad_bancaria ;
    public $nro_cheque ;
    public $nro_cuenta ;




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

    public function load_pago($id)
    {
     
        $sql="select * from pagos 
        WHERE pagos.id_pago = $id";
        $datos = $this->_db->query($sql);
        $datos->setFetchMode(PDO::FETCH_ASSOC);
        $rs=$datos->fetch();
        $this->cargar($rs);
        
        $sql="select * from pagos_partidas 
        WHERE id_pago = $id";
        $datos = $this->_db->query($sql);
        $datos->setFetchMode(PDO::FETCH_ASSOC);
        $rs=$datos->fetchall();

        $this->partidas=$rs;
     
        for ($i=0; $i < count($this->partidas) ; $i++) { 
            
        $sql="select * from partidas WHERE id_partida = ".$this->partidas[$i]['id_partida'];
        $datos = $this->_db->query($sql);
        $datos->setFetchMode(PDO::FETCH_ASSOC);
        $rs=$datos->fetch(); 
        $this->partidas[$i]['datos'] = $rs;

        }
              
       


    }

        public function cargar($rs)
    {
     
      

            
            $this->nro_orden = ($rs['nro_orden']!="") ? $rs['nro_orden'] : '' ;
            $this->monto_orden = ($rs['monto_orden']!="") ? $rs['monto_orden'] : '' ;
            $this->nombre_beneficiario = ($rs['nombre_beneficiario']!="") ? $rs['nombre_beneficiario'] : '' ;
            $this->id_beneficiario = ($rs['id_beneficiario']!="") ? $rs['id_beneficiario'] : '' ;
            $this->nombre_autorizado = ($rs['nombre_autorizado']!="") ? $rs['nombre_autorizado'] : '' ;
            $this->id_autorizado = ($rs['id_autorizado']!="") ? $rs['id_autorizado'] : '' ;
            $this->cantidad_letras = ($rs['cantidad_letras']!="") ? $rs['cantidad_letras'] : '' ;
            $this->concepto_pago = ($rs['concepto_pago']!="") ? $rs['concepto_pago'] : '' ;
            $this->entidad_bancaria = ($rs['entidad_bancaria']!="") ? $rs['entidad_bancaria'] : '' ;
            $this->nro_cheque = ($rs['nro_cheque']!="") ? $rs['nro_cheque'] : '' ;
            $this->nro_cuenta = ($rs['nro_cuenta']!="") ? $rs['nro_cuenta'] : '' ;

 


    }

    public function eliminar_pago($id)
    {
        $sql="delete from pagos 
        WHERE pagos.id_pago= '$id'";
        $this->_db->query($sql);
        return 0;
    }


        

}

?>


