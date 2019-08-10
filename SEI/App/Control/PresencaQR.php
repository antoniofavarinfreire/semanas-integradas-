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
        $eventoid = new Entry('id');

        $this->form->addField('CPF',$cpf,'20%');
        $this->form->addField('ID',$eventoid,'20%');

        $this->form->addAction('Dar Presença',new Action(array($this, 'onPresenca')));

        parent::add($this->form);
    }

    public function onPresenca(){
        try{
            if(!in_array(1,$_SESSION['tipo'])){
                throw new Exception('Usuário não permitido a executar esta operação');
            }else{
                $data = $this->form->getData();
                Transaction::open('sei');
                $aux = Transaction::get();
                $sql = "UPDATE FROM pessoa_has_evento SET presenca='s' WHERE evento_id=$data->id AND pessoa_cpf='$data->cpf'";
                $aux->query($sql);
            }
        }catch(Exception $e){
            new Messege('error', $e->getMessage());
        }    
    }
}

?>