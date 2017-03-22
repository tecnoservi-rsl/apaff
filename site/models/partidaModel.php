<?php

class partidaModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    

   public function get_partida_for_id($id)
    {
        

         $sql = "SELECT * FROM partidas WHERE id_partida='$id'  ORDER BY `partidas`.`partida` ASC ";
         $rs=$this->_db->query($sql);
         $rs->setFetchMode(PDO::FETCH_ASSOC);
            return $rs->fetch();
    } 
    public function get_ISR($partida)
    {
        

         $sql = "SELECT * FROM partidas WHERE partida='$partida' ";
         $rs=$this->_db->query($sql);
         $rs->setFetchMode(PDO::FETCH_ASSOC);
            return $rs->fetch();
    } 

   public function get_partida_for_partida($id)
    {
        
       $sql = "SELECT * FROM partidas WHERE partida='$id'";
         $rs=$this->_db->query($sql);
         $rs->setFetchMode(PDO::FETCH_ASSOC);
            return $rs->fetch();
    } 

    public function get_partidas_for_departamento($id)
    {
        
        $sql = "SELECT * FROM partidas WHERE id_departamentos='$id'";
            $rs=$this->_db->query($sql);        
                return $rs->fetchall();
    }

     public function get_all()
    {
        
       $sql = "SELECT * FROM partidas WHERE 1=1  ORDER BY `partidas`.`partida` ASC";
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
        
    echo  $sql = "INSERT INTO `partidas` (`id_partida`, `partida`, `denominacion`, `id_departamentos`) VALUES (NULL, '".$datos['partida']."', '".$datos["denominacion"]."', '".$datos["departamento"]."')";
         $this->_db->query($sql);
         $id=$this->_db->lastInsertId();
         echo $sql = "INSERT INTO operacion  VALUES (NULL,$id,'".$datos["saldo"]."',now(),'Apertura de partida','aum')";
         $this->_db->query($sql);
        
    } 
     public function guardar_operacion($datos)
    {
        
      echo $sql = "SELECT * FROM partidas WHERE partida='".$datos["partida"]."'";
         $Rss=$this->_db->query($sql);
         $rs=$Rss->fetch();
         $id=$rs["id_partida"];
        echo  $sql = "INSERT INTO operacion  VALUES (NULL,$id,'".$datos["monto"]."',now(),'".$datos["descripcion"]."','".$datos["tipo"]."')";
         $this->_db->query($sql);
        
    } 
    public function actualizar($datos)
    {
        
 echo $sql = "UPDATE `partidas` SET `denominacion` = '".$datos["denominacion"]."' WHERE partida ='".$datos["partida"]."' ";
         $this->_db->query($sql);
        
    
        
    } 

public function get_departamentos()
    {
        
       $sql = "SELECT * FROM departamento";
        $rs=$this->_db->query($sql);
        return $rs->fetchall();
    } 


}

?>
