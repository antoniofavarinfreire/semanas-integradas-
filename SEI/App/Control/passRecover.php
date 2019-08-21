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
use Livro\Widgets\Form\Date;

class passRecover extends page{
    private $form;

    public function __construct(){
        parent::__construct();

        $this->form = new FormWrapper(new Form('form_recover'));
        $this->form->setTitle('Resetar Senha');
        
        $login      = new Entry('cpf');
        $code   = new Date('nasc');

        $login->placeholder    = 'CPF';
        $code->placeholder = 'Data de Nascimento';
        
        $this->form->addField('CPF', $login, '100%');
        $this->form->addField('Data de Nascimento',$code, '100%');

        $this->form->addAction('Resetar', new Action(array($this, 'onChange')));
        
        // adiciona o formulário na página
        parent::add($this->form);
    }

    public function onChange(){ 
        $data = $this->form->getData();
        $cpf = $data->cpf;
        $nasc = $data->nasc;
        if(!empty($cpf)&&(!empty($nasc))){
            Transaction::open('sei');
            $aux = Transaction::get();
            $sql = "SELECT * FROM pessoa WHERE cpf='$cpf' AND nascimento='$nasc'";
            $result = $aux->query($sql);
            if($result->rowCount()>0){
                if(Pessoa::changePass($cpf,$nasc)){
                    new Message('info','Sua nova senha é seu ano de nascimento seguido dos 3 primeiros digitos do seu CPF. Ex: 2019123');
                }
            }
        }else{
            throw new Exception('Preencha dos Dois Campos');
        }
    }

}
?>
