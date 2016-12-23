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
	public function consultar()
    {

       		
			
			$this->_view->setJs(array('consultar'));
			$this->_view->setCss(array('consultar'));
        		$this->_view->titulo = 'partidas';


        		
			$partidas=$this->_partida->get_all();

			

			for ($i=0; $i < count($partidas) ; $i++) { 

			$acum_descuentos=0;
       		$acum_aumentos=0;
       		$acum_total=0;
				
			  $aumentos=$this->_partida->get_aumentos_for_partida($partidas[$i]['id_partida']);
			  $descuentos=$this->_partida->get_descuentos_for_partida($partidas[$i]['id_partida']);
			  for ($y=0; $y < count($aumentos) ; $y++) { 
				$acum_aumentos+=$aumentos[$y]["cantidad"];

			  }
			  for ($y=0; $y < count($descuentos) ; $y++) { 
				$acum_descuentos=$descuentos[$y]["cantidad"];
			  }

			$partidas[$i]["saldo_total"]=$acum_aumentos;
			$partidas[$i]['saldo']=($acum_aumentos-$acum_descuentos);


			}

			


			$this->_view->partidas=$partidas;

			$this->_view->renderizar('consultar');
							
			
	}
	
	  public function get_partida_for_partida()
    	{

       		$acum_descuentos=0;
       		$acum_aumentos=0;
			$partida=$this->_partida->get_partida_for_partida($_GET['partida']);
			$aumentos=$this->_partida->get_aumentos_for_partida($partida['id_partida']);
			$descuentos=$this->_partida->get_descuentos_for_partida($partida['id_partida']);

			for ($i=0; $i < count($aumentos) ; $i++) { 
				$acum_aumentos+=$aumentos[$i]["cantidad"];
			}
			for ($i=0; $i < count($descuentos) ; $i++) { 
				$acum_descuentos=$descuentos[$i]["cantidad"];
			}

			$partida['saldo']=($acum_aumentos-$acum_descuentos);

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