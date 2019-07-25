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
    private $datagrid4;

    public function __construct(){
        parent::__construct();

        $this->datagrid1 = new DatagridWrapper(new Datagrid);
        $this->datagrid1->setTitle('Evento em Detalhes');

        $nome = new DatagridColumn('nome','Nome','center','30%');
        $inicio = new DatagridColumn('inicio','Inicio','center','20%');
        $fim = new DatagridColumn('fim','Termino','center','10%');
        $dia = new DatagridColumn('dia_dataDia','Dia','center','10%');
        
        $this->datagrid1->addColumn($nome);
        $this->datagrid1->addColumn($dia);
        $this->datagrid1->addColumn($inicio);
        $this->datagrid1->addColumn($fim);
        
        $this->datagrid3 = new DatagridWrapper(new Datagrid);
        $this->datagrid3->setTitle('Descricao');

        $descricao= new DatagridColumn('descricao','Descrição', 'left','90%');

        $this->datagrid3->addColumn($descricao);

        $this->datagrid2 = new DatagridWrapper(new Datagrid);
        $this->datagrid2->setTitle('Sala');

        $sala = new DatagridColumn('nome','Sala','center','10%');
        $descricao= new DatagridColumn('descricao','Descrição', 'center','90%');

        $this->datagrid2->addColumn($sala);
        $this->datagrid2->addColumn($descricao);
        
        $box = new VBox;
        $box->style = 'display:block';
        $box->add($this->datagrid1);
        $box->add($this->datagrid3);
        $box->add($this->datagrid2);
        
        parent::add($box);
    }

    public function onShow(){

    }
}
