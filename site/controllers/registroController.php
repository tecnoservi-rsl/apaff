<?php

class registroController extends Controller
{
    private $_registro;
    
    public function __construct() {
        parent::__construct();
        
        $this->_registro = $this->loadModel('registro');
    }
    
    public function index()
{
			$this->_view->area_l="apagada";
		//$this->_view->area_r="apagada";

             
           
        
        $this->_view->titulo = 'Registro';
       	//$this->_view->setJs(array('js','validate'));
        $this->_view->setJs(array('js'));
        $this->_view->setCss(array('index'));
        
       
       $this->_view->renderizar('index', 'registro');
     
}
 


public function renderizarinicio(){


     $this->_view->renderizar('index', 'login');


   }



public function guardar_departamentos(){

                                                  
       $this->_registro->guardar_departamentos($_REQUEST);
       $this->_view->renderizar('index', 'registro');    
 }






}

?>
