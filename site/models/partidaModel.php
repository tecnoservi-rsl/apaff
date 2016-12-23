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

    public function get_aumentos_for_partida($id)
    {
        
       $sql = "SELECT * FROM aumento WHERE id_partida='$id'";
         $rs=$this->_db->query($sql);
        $rs->setFetchMode(PDO::FETCH_ASSOC);
            return $rs->fetchall();
    } 
    public function get_descuentos_for_partida($id)
    {
        
       $sql = "SELECT * FROM descuento WHERE id_partida='$id'";
         $rs=$this->_db->query($sql);
         $rs->setFetchMode(PDO::FETCH_ASSOC);
            return $rs->fetchall();
    } 
    public function guardar($datos)
    {
        
      $sql = "INSERT INTO `partidas` (`id_partida`, `partida`, `denominacion`) VALUES (NULL, '".$datos['partida']."', '".$datos["denominacion"]."')";
         $this->_db->query($sql);
         $id=$this->_db->lastInsertId();
         $sql = "INSERT INTO `aumento` (`id_aumento`, `id_partida`, `cantidad`) VALUES (NULL,$id,'".$datos["saldo"]."')";
         $this->_db->query($sql);
        
    } 
    public function actualizar($datos)
    {
        
 $sql = "UPDATE `partidas` SET `denominacion` = '".$datos["denominacion"]."' WHERE partida ='".$datos["partida"]."' ";
         $this->_db->query($sql);
        
    
        
    } 




}

?>
