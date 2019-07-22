<?php
use Livro\Control\Page;
use Livro\Control\Action;
use Livro\Widgets\Form\Form;
use Livro\Widgets\Form\Entry;
use Livro\Widgets\Form\Password;
use Livro\Widgets\Wrapper\FormWrapper;
use Livro\Widgets\Container\Panel;
use Livro\Widgets\Dialog\Message;

use Livro\Database\Transaction;
use Livro\Database\Repository;
use Livro\Database\Criteria;


use Livro\Session\Session;

/**
 * Formulário de Login
 */
class LoginForm extends Page
{
    private $form; // formulário
    
    /**
     * Construtor da página
     */
    public function __construct()
    {
        parent::__construct();

        // instancia um formulário
        $this->form = new FormWrapper(new Form('form_login'));
        $this->form->setTitle('Login');
        
        $login      = new Entry('login');
        $password   = new Password('password');
        
        $login->placeholder    = 'admin';
        $password->placeholder = 'admin';
        
        $this->form->addField('Login',    $login,    200);
        $this->form->addField('Senha',    $password, 200);
        $this->form->addAction('Login', new Action(array($this, 'onLogin')));
        
        // adiciona o formulário na página
        parent::add($this->form);
    }
    
    /**
     * Login
     */
    public function onLogin($param)
    {
        try {
            $data = $this->form->getData();
            if (isset($data->login) AND isset($data->password)){
                Transaction::open('sei'); // inicia transação com o BD
                $repository = new Repository('Pessoa');
    
                // cria um critério de seleção de dados
                $criteria = new Criteria;
                $criteria->setProperty('order', 'cpf');
    
                
    
            // verifica se o usuário preencheu o formulário
            
    
                // filtra pelo nome do pessoa
                $criteria->add('cpf',"like", "%{$data->login}%",null);
                $pessoas = $repository->load($criteria);
                $autorized = $this->auth($pessoas,$data);
                if($autorized){
                    Session::setValue('logged', TRUE);
                    Session::setValue('user', $pessoas->cpf);
                    Session::setValue('message', "Seja Bem-vindo".$user->nome );
                    echo "<script language='JavaScript'> window.location = 'index.php'; </script>";
                }
            
            }else{
                    throw new Exception("Os campos não podem estar vazios!"); 
                }
        } catch (Exception $e) {
            new Message('error',$e->getMessage());
            Session::setValue('logged', FALSE);
            Transaction::rollback();
        }
        
           

    }
    

    public function auth($pessoas,$data){
        if($pessoas){
            $user = $pessoas[0];
            $hash = $user->password;
            
            if(password_verify($data->password,$hash)){
               return true;
            }else{
                throw new Exception("A senha esta incorreta!"); 
            }
        }else{
            throw new Exception("Usuário não cadastrado!"); 
        }
        
        
    }

    /**
     * Logout
     */
    

    
    public function onLogout($param)
    {   
        new Session;
        if (Session::getValue('logged')) {
            Session::setValue('logged', FALSE);
            Session::setValue('user', '');
            Session::setValue('message', '' );
            Session::freeSession();
        
        }
        
        
           
        
        
        

        echo "<script language='JavaScript'> window.location = 'index-login.php'; </script>";
    }
}
