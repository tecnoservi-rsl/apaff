<?php


class partidaController extends Controller
{
	
	private $_partida;
    public function __construct() {
        parent::__construct();
  	 $this->_partida=$this->loadModel('partida');	
       Session::acceso();
      
    }

    public function index()
    {

       
			
			$this->_view->setJs(array('index'));
			$this->_view->setCss(array('css'));
        		$this->_view->titulo = 'partidas';
			$this->_view->renderizar('index');
							
			
	}
	  public function agregar()
    {

       
			
			$this->_view->setJs(array('agregar'));
			$this->_view->setCss(array('agregar'));
        		$this->_view->titulo = 'administrar partidas';
			$this->_view->renderizar('agregar');
							
			
	}
	
	  public function get_partida_for_partida()
    	{

       
			$partida=$this->_partida->get_partida_for_partida($_GET['partida']);
			$aumentos=$this->_partida->get_aumentos_for_partida($partida['id_partida']);
			$descuentos=$this->_partida->get_descuentos_for_partida($partida['id_partida']);

			

			$partida['saldo']=($aumentos['cantidad']-$descuentos["cantidad"]);

			echo json_encode($partida);			
			
	}
	 public function guardar()
    	{

       
			$this->_partida->guardar($_GET);
					
			
	}
	public function actualizar()
    	{

       
			$this->_partida->actualizar($_GET);
					
			
	}
		
	
}


?>