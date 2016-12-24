<?php

class partidaModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    


   public function get_partida_for_partida($id)
    {
        
       $sql = "SELECT * FROM partidas WHERE partida='$id'";
         $rs=$this->_db->query($sql);
         $rs->setFetchMode(PDO::FETCH_ASSOC);
            return $rs->fetch();
    } 
     public function get_all()
    {
        
       $sql = "SELECT * FROM partidas WHERE 1=1";
         $rs=$this->_db->query($sql);
         //$rs->setFetchMode(PDO::FETCH_ASSOC);
            return $rs->fetchall();
    } 

    public function get_operacion_for_partida($id)
    {
        
       $sql = "SELECT * FROM operacion WHERE id_partida='$id'";
         $rs=$this->_db->query($sql);
        $rs->setFetchMode(PDO::FETCH_ASSOC);
            return $rs->fetchall();
    } 
    
    public function guardar($datos)
    {
        
      $sql = "INSERT INTO `partidas` (`id_partida`, `partida`, `denominacion`) VALUES (NULL, '".$datos['partida']."', '".$datos["denominacion"]."')";
         $this->_db->query($sql);
         $id=$this->_db->lastInsertId();
         echo $sql = "INSERT INTO `aumento`  VALUES (NULL,$id,'".$datos["saldo"]."',now(),'Apertura de partida')";
         $this->_db->query($sql);
        
    } 
    public function actualizar($datos)
    {
        
 $sql = "UPDATE `partidas` SET `denominacion` = '".$datos["denominacion"]."' WHERE partida ='".$datos["partida"]."' ";
         $this->_db->query($sql);
        
    
        
    } 




}

?>
