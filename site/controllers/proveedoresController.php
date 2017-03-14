<?php

class proveedoresController extends Controller
{
    private $_proveedores;
    
    public function __construct() {
        parent::__construct();
        
        $this->_proveedores = $this->loadModel('proveedores');
    }
    
    public function index()
{
			$this->_view->area_l="apagada";
		//$this->_view->area_r="apagada";
        
           
        
        $this->_view->titulo = 'Proveedores';
        $this->_view->setJs(array('js'));
        $this->_view->setCss(array('index'));
        
       
       $this->_view->renderizar('index', 'proveedores');
     
}
 


public function renderizarinicio(){


     $this->_view->renderizar('index', 'proveedores');


   }



public function guardar_proveedores(){
                                                  
       $this->_proveedores->guardar_proveedores($_REQUEST);
       $this->_view->renderizar('index', 'proveedores');    
}

public function listado() {
      $this->_view->setJs(array('js'));
      $this->_view->setCss(array('listado'));
      $this->_view->titulo = 'Proveedores';
      $this->_view->renderizar('listado');      
}

public function buscar_proveedores(){
  echo json_encode($this->_proveedores->getProveedores($_REQUEST['nombre_proveedor']));
}

public function eliminar_proveedor(){
  echo json_encode($this->_proveedores->eliminar_proveedor($_REQUEST['id_proveedor']));
}

public function editar_proveedor(){
  echo json_encode($this->_proveedores->editar_proveedor($_REQUEST));
}


}

?>
