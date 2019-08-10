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
use Livro\Widgets\Dialog\Question;
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
    private $loaded;

    public function __construct()
    {
        parent::__construct();
        $this->form = new FormWrapper(new Form('form_pessoa_info'));
        $this->form->setTitle('Informacão e Status');

        $cpf       = new Entry('cpf');
        $nome      = new Entry('nome');
        $email     = new Entry('email');
        $nasc   = new Entry('nascimento');
        $password     = new Password('senha');
        $password_check     = new Password('password_check');
        
        $cpf->setEditable(FALSE);
        $nome->setEditable(FALSE);
        $email->setEditable(FALSE);
        $nasc->setEditable(FALSE);

        $this->form->addField('CPF', $cpf, '30%');
        $this->form->addField('Nome', $nome, '70%');
        $this->form->addField('Email', $email, '70%');
        $this->form->addField('Nascimento',$nasc,'50%');
        $this->form->addField('Insira uma senha', $password, '50%');
        $this->form->addField('Confirme sua senha', $password_check, '50%');

        $this->form->addAction('Alterar', new Action(array($this, 'onSave')), 'fa:save green');
        
        $this->datagrid = new DatagridWrapper(new Datagrid);

        $nome = new DatagridColumn('nome','Nome','center','25%');
        $dia = new DatagridColumn('dia','Dia','center','15%');
        $inicio = new DatagridColumn('inicio','Inicio','center','15%');
        $dura = new DatagridColumn('dura','Duração','center','15%');
        $local = new DatagridColumn('local','Local','center','15%');
        $presenca = new DatagridColumn('presenca','Presença','center','15%');

        $this->datagrid->addColumn($nome);
        $this->datagrid->addColumn($dia);
        $this->datagrid->addColumn($inicio);
        $this->datagrid->addColumn($dura);
        $this->datagrid->addColumn($local);
        $this->datagrid->addColumn($presenca);
        

        $this->datagrid->addAction('Cancelar', new Action([$this, 'onDelete']), 'id', 'fa fa-trash fa-lg red');
        
        parent::add($this->form);
        parent::add($this->datagrid);
    }

    public static function pospresenca(){
        new Message('info','Presença Confirmada Com Sucesso');
    }

    public function onLoad(){
        
        Transaction::open('sei');
        if(session_status() !== PHP_SESSION_ACTIVE) session_start();
        $pessoa = Pessoa::find2($_SESSION['cpf']);
        $d = new DateTime($pessoa->nascimento);
        $pessoa->nascimento = (string)($d->format('d/m/Y'));
        $pessoa->senha = "";
        $this->form->setData($pessoa);
        $eventos = ListaEventos::list($_SESSION['cpf']);
        foreach ($eventos as $e){
            $d = new DateTime($e->dia);
            $e->dia  = (string)($d->format('d/m/Y'));
            $this->datagrid->addItem($e);
        }

    }

    public function onSave(){
        try{
            $data = $this->form->getData();
            if($data->senha == $data->password_check && $data->senha != ''){
                $pass = hash('sha512',$data->senha);
                $cpf = $_SESSION['cpf'];
                $result = Pessoa::changePass($cpf,$pass);
                if($result){
                    new Message('info','Alteração de Senha Feita com Sucesso');
                }else{
                    throw new Exception('Erro Inserção');    
                }
            }else{
                throw new Exception('Preencha igualmente os Campos de Senha');
            }   
        }catch(Exception $e){
            new Message('error',$e->getMessage());
        }
    }

    public function show(){
         // se a listagem ainda não foi carregada
         if (!$this->loaded)
         {
	        $this->onLoad();
         }
         parent::show();
    }

    public function onDelete($param){
        $id = $param['id']; // obtém o parâmetro $id
        $action1 = new Action(array($this, 'Delete'));
        $action1->setParameter('id', $id);
        
        new Question('Deseja realmente cancelar sua inscrição no evento?', $action1);
    }

    public function delete($param){
        try
        {
            $id = $param['id']; // obtém a chave
            Transaction::open('sei'); // inicia transação com o banco 'livro'
            $cpf = $_SESSION['cpf'];
            $sql = "DELETE FROM pessoa_has_evento WHERE evento_id=$id and pessoa_cpf='$cpf' ";
            Transaction::get()->query($sql);
            $this->onReload(); // recarrega a datagrid
            new Message('info', "Inscrição no Evento cancelada com sucesso");
        }
        catch (Exception $e)
        {
            new Message('error', $e->getMessage());
        }
    }
}

?>