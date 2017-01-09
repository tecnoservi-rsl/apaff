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
	  public function v_debito()
    {

       
			
			$this->_view->setJs(array('v_debito'));
			$this->_view->setCss(array(''));
        		$this->_view->titulo = 'dibitos';
        		$this->_view->_partidas = $this->_partida->get_all();


			$this->_view->renderizar('v_debito');
							
			
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
       		
				
			  $aumentos=$this->_partida->get_operacion_for_partida($partidas[$i]['id_partida']);
			  

			 for ($y=0; $y < count($aumentos) ; $y++) { 

				if ($aumentos[$y]['tipo']=="aum") {
					$acum_aumentos+=$aumentos[$y]["cantidad"];
				}else{

					$acum_descuentos+=$aumentos[$y]["cantidad"];
				}
				

			}
			  

			$partidas[$i]["saldo_total"]=$acum_aumentos;
			$partidas[$i]['saldo']=($acum_aumentos-$acum_descuentos);
			$partidas[$i]["porciento"]=($acum_aumentos-$acum_descuentos)/($acum_aumentos/100);




			}

			


			$this->_view->partidas=$partidas;

			$this->_view->renderizar('consultar');
							
			
	}
	
	  public function get_partida_for_partida()
    	{

       		$acum_descuentos=0;
       		$acum_aumentos=0;
			$partida=$this->_partida->get_partida_for_partida($_GET['partida']);
			$aumentos=$this->_partida->get_operacion_for_partida($partida['id_partida']);
			

			for ($i=0; $i < count($aumentos) ; $i++) { 

				if ($aumentos[$i]['tipo']=="aum") {
					$acum_aumentos+=$aumentos[$i]["cantidad"];
				}else{

					$acum_descuentos+=$aumentos[$i]["cantidad"];
				}
				

			}
			

			$partida['saldo']=($acum_aumentos-$acum_descuentos);

			echo json_encode($partida);			
			
	}
	 public function guardar()
    	{

       print_r($_GET);
			$this->_partida->guardar($_GET);
					
			
	}
	 public function guardar_operacion()
    	{

       print_r($_GET);
			$this->_partida->guardar_operacion($_GET);
					
			
	}
	public function actualizar()
    	{

       
			$this->_partida->actualizar($_GET);
					
			
	}
	  public function get_partida_all()
    	{

       		
	$partida=$this->_partida->get_partida_for_partida($_GET['partida']);
			
	$partida['operacion']=$this->_partida->get_operacion_for_partida($partida['id_partida']);
	
			
	echo json_encode($partida);			
			
	}
		
	
}


?>