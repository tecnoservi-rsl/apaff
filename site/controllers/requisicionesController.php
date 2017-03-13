<?php


class requisicionesController extends Controller
{
	
	private $_requisicion;
    public function __construct() {
        parent::__construct();
  	 $this->_requisicion=$this->loadModel('requisiciones');	
       Session::acceso();
      
    }

    public function index()
    {

       
			
			$this->_view->setJs(array('index'));
			$this->_view->setCss(array('css'));
        		$this->_view->titulo = 'requisiciones';
			$this->_view->renderizar('index');
							
			
	}

	  
	  public function agregar()
    {

       
			
			$this->_view->setJs(array('agregar'));
			$this->_view->setCss(array('agregar'));
        		$this->_view->titulo = 'administrar requisiciones';
			$this->_view->renderizar('agregar');
							
			
	}

	public function guardar_requisicion(){
		echo json_encode($this->_requisicion->guardar_requisicion($_REQUEST));
	}

	public function guardar_requisicion_detalles(){
		echo json_encode($this->_requisicion->guardar_requisicion_detalles($_REQUEST));
	}
	
	
	public function consultar()
    {
			$this->_view->setJs(array('consultar'));
			$this->_view->setCss(array('consultar'));
        	$this->_view->titulo = 'Requisiciones';


        		
			$requisiciones=$this->_requisicion->get_requisiciones_departamentos();

			$this->_view->requisiciones=$requisiciones;

			$this->_view->renderizar('consultar');
							
			
	}

	public function get_requisiciones_peticiones(){
		echo json_encode($this->_requisicion->get_requisiciones_peticiones($_REQUEST["requisicion"]));
	}
}


?>