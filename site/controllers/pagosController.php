<?php

class pagosController extends Controller
{
    private $_pagos;
    
    public function __construct() {
        parent::__construct();
        
        $this->_pagos = $this->loadModel('pagos');
    }
    
    public function index()
{
			$this->_view->area_l="apagada";
		//$this->_view->area_r="apagada";
        
           
        
        $this->_view->titulo = 'Pagos';
        $this->_view->setJs(array('js','validar_for'));
        $this->_view->setCss(array('index'));
        
       
       $this->_view->renderizar('index', 'pagos');
     
}
 


public function renderizarinicio(){


     $this->_view->renderizar('index', 'pagos');


   }



public function guardar_pagos(){
         
       

       echo $this->_pagos->guardar_pagos($_REQUEST);
       //$this->_view->renderizar('index', 'pagos');    
}

public function listado() {
      $this->_view->setJs(array('js'));
      $this->_view->setCss(array('listado'));
      $this->_view->titulo = 'Pagos';
      $this->_view->renderizar('listado');      
}

public function buscar_pagos(){
  echo json_encode($this->_pagos->getPagos($_REQUEST['nombre']));
}

public function eliminar_pago(){
  echo json_encode($this->_pagos->eliminar_pago($_REQUEST['id_pago']));
}

public function editar_proveedor(){
  echo json_encode($this->_pagos->editar_proveedor($_REQUEST));
}


}

?>
