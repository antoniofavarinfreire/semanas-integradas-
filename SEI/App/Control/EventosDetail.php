<?php
use Livro\Control\Page;
use Livro\Widgets\Datagrid\Datagrid;
use Livro\Widgets\Datagrid\DatagridColumn;
use Livro\Widgets\Wrapper\DatagridWrapper;
use Livro\Control\Action;
use Livro\Widgets\Form\Form;
use Livro\Widgets\Form\Password;
use Livro\Widgets\Dialog\Message;
use Livro\Widgets\Form\Entry;
use Livro\Widgets\Form\Time;
use Livro\Widgets\Form\Combo;
use Livro\Widgets\Form\CheckGroup;
use Livro\Database\Transaction;
use Livro\Widgets\Container\Panel;
use Livro\Widgets\Wrapper\FormWrapper;
use Livro\Widgets\Container\VBox;

class EventosDetail extends Page{
    private $datagrid1;
    private $datagrid2;
    private $datagrid3;

    public function __construct(){
        parent::__construct();

        $this->datagrid1 = new DatagridWrapper(new Datagrid);
        

        $nome = new DatagridColumn('nome','Nome','center','30%');
        $inicio = new DatagridColumn('inicio','Inicio','center','20%');
        $dura = new DatagridColumn('duracao','Termino','center','10%');
        $dia = new DatagridColumn('dia_dia','Dia','center','10%');
        
        $this->datagrid1->addColumn($nome);
        $this->datagrid1->addColumn($dia);
        $this->datagrid1->addColumn($inicio);
        $this->datagrid1->addColumn($dura);
        
        $this->datagrid2 = new DatagridWrapper(new Datagrid);
        

        $descricao= new DatagridColumn('descricao','Descrição', 'left','90%');

        $this->datagrid2->addColumn($descricao);
    
        $this->datagrid3 = new DatagridWrapper(new Datagrid);
        

        $nome = new DatagridColumn('nome', 'Nome', 'center', '25%');
        $cpf = new DatagridColumn('cpf', 'CPF', 'center', '25%');
        $data = new DatagridColumn('dataInsc','Data da Inscrição','center', '25%');
        $hora = new DatagridColumn('hora', 'Hora','center','25%' );


        $this->datagrid3->addColumn($nome);
        $this->datagrid3->addColumn($cpf);
        $this->datagrid3->addColumn($data);
        $this->datagrid3->addColumn($hora);


        
        $box = new VBox;
        $box->style = 'display:block';
        $box->add($this->datagrid1);
        $box->add($this->datagrid2);
        $box->add($this->datagrid3);

        parent::add($box);
    }

    public function onShow($param){
        Transaction::open('sei');
        $evento = Evento::find($param['id']);
        $lista = Lista::list($param['id']);
        $this->datagrid1->addItem($evento);
        $this->datagrid2->addItem($evento);
        foreach ($lista as $part){
            $this->datagrid3->addItem($part);
        }
    }
}
