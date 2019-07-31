<?php 
use Livro\Control\Page;
use Livro\Control\Action;
use Livro\Widgets\Form\Form;
use Livro\Widgets\Form\Password;
use Livro\Widgets\Dialog\Message;
use Livro\Widgets\Form\Hidden;
use Livro\Widgets\Form\Entry;
use Livro\Widgets\Form\Combo;
use Livro\Widgets\Form\CheckGroup;
use Livro\Database\Transaction;
use Livro\Widgets\Container\Panel;
use Livro\Widgets\Wrapper\FormWrapper;
use Livro\Widgets\Form\Date;

class PresencaQR extends Page{
    private $form;

    public function __construct(){
        parent::__construct();
        $this->form = new FormWrapper(new Form('form_presenca'));
        $this->form->setTitle('Presença no Evento');

        $cpf = new Entry('cpf');
        $evento = new Entry('evento_nome');
        $eventoid = new Entry('id');

        $this->form->addField('CPF',$cpf,'20%');
        $this->form->addField('Nome',$evento,'20%');
        $this->form->addField('ID',$eventoid,'20%');

        $this->form->addAction(new Action(array($this, 'onPresenca')));

        parent::add($this->form);
    }

    public function onPresenca(){
        
    }
}

?>