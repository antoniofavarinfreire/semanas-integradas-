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
use Dompdf\Exception;

class passRecover extends page{
    private $form;

    public function __construct(){
        parent::__construct();

        $this->form = new FormWrapper(new Form('form_recover'));
        $this->form->setTitle('Recuperar Senha');
        
        $login      = new Entry('cpf');
        $code   = new Entry('code');
        $pass = new Password('senha');
        $conf = new Password('conf');

        $login->placeholder    = 'CPF';
        $code->placeholder = 'codigo';
        $pass->placeholder = 'Senha';
        $conf->placeholder = 'Confirma Senha';
        
        $this->form->addField('CPF', $login, '100%');
        $this->form->addField('Codigo de Confirmação',$code, '100%');
        $this->form->addField('Senha', $pass, '100%');
        $this->form->addField('Confirmar Senha', $conf, '100%');

        $this->form->addAction('Trocar Senha', new Action(array($this, 'onChange')));
        
        // adiciona o formulário na página
        parent::add($this->form);
    }

    public function onChange(){ 
        $data = $this->form->getData();
        if($data->code == $this->passcode($data->cpf)){
            try{
                if($data->senha != $data->conf){
                    throw new Exception('Senha e Confirmação estão diferentes');
                }else{
                    $pass =  hash('sha512',$data->senha);
                    Transaction::open('sei');
                    $aux = Transaction::get();
                    $sql = "UPDATE pessoa SET senha='$pass' WHERE cpf='$data->cpf'";
                    $result = $aux->query($sql);
                    if($result){
                        echo "<script language='JavaScript'> window.location = 'index-login.php'; </script>";
                    }
                }
            }catch(Exception $e){
                new Message('error',$e->getMessage());    
            }
        }
    }

    public static function passcode($cpf){
        try{
            Transaction::open('sei');
            $aux = Transaction::get();
            $sql = "SELECT nome FROM pessoa WHERE cpf=$cpf";
            if($cpf == ''){
                throw new Exception('Digite o CPF');
            }
            $result = $aux->query($sql);
            if($result){
                $result = $result->fetchObject(__CLASS__);
                $sql = $cpf  + (int)$result->nome + 152022;
                $sql = (string)$sql;
                return $sql;
            }else{
                throw new Exception('CPF não encontrado');
            }
        }catch(Exception $e){
            new Message('error',$e->getMessage());
        }
    }
}
?>
