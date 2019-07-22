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

/**
 * Formulário de pessoas
 */
class PessoasForm extends Page
{
    private $form;

    /**
     * Construtor da página
     */
    public function __construct()
    {
        parent::__construct();
        // instancia um formulário
        $this->form = new FormWrapper(new Form('form_pessoas'));
        $this->form->setTitle('Pessoa');
        
        // cria os campos do formulário
        $id        = new Entry('id');
        $cpf       = new Entry('cpf');
        $nome      = new Entry('nome');
        $email     = new Entry('email');
        $nasc   = new Date('nascimento');
        $password     = new password('senha');
        $password_check     = new password('password_check');
        $grupo     = new CheckGroup('ids_grupos');
        $grupo->setLayout('horizontal');
        $image = new Entry('imagem_nome');
        
        Transaction::open('sei');
        
        $grupos = Grupo::all();
        $items = array();
        foreach ($grupos as $obj_grupo) {
            $items[$obj_grupo->id] = $obj_grupo->nome;
        }
        $grupo->addItems($items);
        Transaction::close();
        
        $this->form->addField('CPF', $cpf, '30%');
        $this->form->addField('Nome', $nome, '70%');
        $this->form->addField('Email', $email, '70%');
        $this->form->addField('Nascimento',$nasc,'50%');
        $this->form->addField('Insira uma senha', $password, '50%');
        $this->form->addField('Confirme sua senha', $password_check, '50%');

        $this->form->addField('Grupo', $grupo, '70%');
        
        // define alguns atributos para os campos do formulário
        $id->setEditable(false);
        
        $this->form->addAction('Cadastrar', new Action(array($this, 'onSave')));
        
        // adiciona o formulário na página
        parent::add($this->form);
    }

    /**
     * Salva os dados do formulário
     */
    public function onSave()
    {
        try
        {
            // inicia transação com o BD
            Transaction::open('sei');

            $dados = $this->form->getData();
            $pass = $this->password($dados->senha,$dados->password_check);
            if(isset($pass)){
                unset($dados->password_check);
                $dados->senha = $pass;
            }
            /****************teste de insercao de imagem************/
            $imagem = new Imagem;
            $imagem->nome = $dados->cpf;
            $imagem->nome .=".png";
            $imagem->endereco = "shiet";
            $imagem->tipo = "0";
            $imagem->store();
            /*********************/
            $this->form->setData($dados);
            $pessoa = new Pessoa; // instancia objeto
            $pessoa->fromArray( (array) $dados); // carrega os dados
            $pessoa->imagem_nome = $imagem->nome;
            $pessoa->store(); // armazena o objeto no banco de dados
            
            $pessoa->delGrupos();
            if ($dados->ids_grupos) {
                foreach ($dados->ids_grupos as $id_grupo)
                {
                    $pessoa->addGrupo( new Grupo($id_grupo) );
                }
            }
            
            Transaction::close(); // finaliza a transação
            new Message('info', 'Dados armazenados com sucesso');
        }
        catch (Exception $e)
        {
            // exibe a mensagem gerada pela exceção
            new Message('error', $e->getMessage());

            // desfaz todas alterações no banco de dados
            Transaction::rollback();
        }
    }
    
    /**
     * Carrega registro para edição
     */
    public function onEdit($param)
    {
        try
        {
            if (isset($param['cpf']))
            {
                $id = $param['cpf']; // obtém a chave
                Transaction::open('sei'); // inicia transação com o BD
                $pessoa = Pessoa::find2($id);
                //echo $pessoa->cpf;
                if ($pessoa)
                {   
                    unset($pessoa->senha);
                    $pessoa->ids_grupos = $pessoa->getIdsGrupos();
                    $this->form->setData($pessoa); // lança os dados da pessoa no formulário
                }
                Transaction::close(); // finaliza a transação
            }
        }
        catch (Exception $e)		    // em caso de exceção
        {
            // exibe a mensagem gerada pela exceção
            new Message('error', $e->getMessage());
            // desfaz todas alterações no banco de dados
            Transaction::rollback();
        }
    }
    private function password($pass, $check){
       
        if(strcmp($pass, $check)){
            throw new Exception("As senhas fornecidas são diferenrtes"); 
       }else{
           $hash = password_hash($pass,PASSWORD_DEFAULT);
            return $hash;
       }
       
    }
}
