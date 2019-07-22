<?php

use Livro\Control\Page;
use Livro\Control\Action;
use Livro\Widgets\Form\Form;
use Livro\Widgets\Form\Password;
use Livro\Widgets\Dialog\Message;
use Livro\Widgets\Form\Entry;
use Livro\Widgets\Form\Combo;
use Livro\Widgets\Form\CheckGroup;
use Livro\Database\Transaction;
use Livro\Widgets\Container\Panel;
use Livro\Widgets\Wrapper\FormWrapper;
use Livro\Widgets\Form\Date;
use Livro\Widgets\Form\Button;
use Livro\Database\Repository;
use Livro\Database\Criteria;
use Livro\Widgets\Wrapper\DatagridWrapper;
use Livro\Widgets\Datagrid\DatagridColumn;
use Livro\Widgets\Datagrid\Datagrid;

Class DashboardView extends Page{

    private $form;
    private $datagrid;

    public function __construct()
    {
        parent::__construct();
        
        $this->form = new FormWrapper(new Form('form_pessoa_info'));
        $this->form->setTitle('Informacão e Status');

        $cpf       = new Entry('cpf');
        $nome      = new Entry('nome');
        $email     = new Entry('email');
        $nasc   = new Date('nascimento');
        $password     = new Password('senha');
        $password_check     = new Password('password_check');
        
        $cpf->setEditable(FALSE);

        $this->form->addField('CPF', $cpf, '30%');
        $this->form->addField('Nome', $nome, '70%');
        $this->form->addField('Email', $email, '70%');
        $this->form->addField('Nascimento',$nasc,'50%');
        $this->form->addField('Insira uma senha', $password, '50%');
        $this->form->addField('Confirme sua senha', $password_check, '50%');

        $this->form->addAction('Alterar', new Action(array($this, 'onSave')), 'fa:save green');
        
        $this->datagrid = new DatagridWrapper(new Datagrid);

        $sala = new DatagridColumn('sala','Sala','center','10%');
        $nome = new DatagridColumn('nome','Nome','center','10%');
        $inicio = new DatagridColumn('inicio','Inicio','center','10%');
        $fim = new DatagridColumn('fim','Termino','center','10%');
        $dia = new DatagridColumn('dia_dataDia','Dia','center','10%');

        $this->datagrid->addColumn($sala);
        $this->datagrid->addColumn($nome);
        $this->datagrid->addColumn($inicio);
        $this->datagrid->addColumn($fim);
        $this->datagrid->addColumn($dia);
        
        $this->datagrid->addAction('Cancelar', new Action([$this, 'onDelete']), 'id', 'fa fa-trash fa-lg red');
        
        parent::add($this->form);
        parent::add($this->datagrid);
    }

    public function onSave(){
        Transaction::open('sei');
        $pessoa = Pessoa::find2('07013980943');
        $pessoa->senha = "";
        $this->form->setData($pessoa);
        $eventos = Lista::list($pessoa->cpf);
          
    }

    public function onDelete($param){
        echo "Deleta";
    }

   
}

?>