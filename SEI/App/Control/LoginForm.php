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
        
        $this->form->addField('Login', $login, '100%');
        $this->form->addField('Senha', $password, '100%');
        $this->form->addAction('Login', new Action(array($this, 'onLogin')));
        $this->form->addAction('Esqueci Minha Senha', new Action(array(new passRecover ,'onChange')));
        
        // adiciona o formulário na página
        parent::add($this->form);
    }
    
    /**
     * Login
     */
    public function onLost(){
        
    }

    public function onLogin($param)
    {
        try {
            $data = $this->form->getData();
            if (!empty($data->login) AND !empty($data->password)){
                Transaction::open('sei'); // inicia transação com o BD
                $autorized = $this->logon($data->login, $data->password);
                
                if($autorized){
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

    /**
     * Logout
     */
    
    public function logon($cpf,$pass){
        Transaction::open('sei');
        $aux = Transaction::get();
        $pass =  password_hash($pass,PASSWORD_DEFAULT);
        $sql  = "SELECT count(*) FROM pessoa WHERE cpf='$cpf' AND senha='$pass'";
        $result = $aux->query($sql);
        if($result){
            session_start();
            $_SESSION['cpf'] = $cpf;
            $sql  = "SELECT grupo_id FROM pessoa_has_grupo WHERE pessoa_cpf='$cpf'";
            $result = $aux->query($sql);
            $gg = array();
            if($result){
                while($row = $result->fetchObject(__CLASS__)){
                    $gg[] = $row->grupo_id;
                }
            }
            $_SESSION['tipo'] = $gg;
            return True;
        }else{
            throw new Exception('Usuário ou Senha invalidos');
            return false;
        }

    }
    
    public function onLogout($param)
    {   
        session_start();
        unset($_SESSION["cpf"]);
        echo "<script language='JavaScript'> window.location = 'index-login.php'; </script>";
    }
}
