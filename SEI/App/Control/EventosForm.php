<?php
use Livro\Control\Page;
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

/**
 * Formulário de atividades
 */
class EventosForm extends Page
{
    private $form;

    /**
     * Construtor da página
     */
    public function __construct()
    {
        parent::__construct();
        // instancia um formulário
        $this->form = new FormWrapper(new Form('form_atividades'));
        $this->form->setTitle('Evento');
        
        // cria os campos do formulário
        $id        = new Entry('id');
        $titulo      = new Entry('nome');
        $descricao      = new Entry('descricao');
        $palestrante        = new Entry('palestrante');
        $minicurriculo          =  new Entry('mini');
        $sala                       = new Entry('sala');

        $hora_i           = new Time('inicio');
        $hora_f           = new Time('fim');
        $cargahoraria           = new Entry('duracao');
        $dia = new Combo('dia_dataDia');
        $tipo     = new Combo('tipo');
        
        
        Transaction::open('sei');
        
        $dias = Dia::all();
        $items = array();
        foreach ($dias as $obj_tipo) {
            $items[$obj_tipo->dataDia] = $obj_tipo->semanaDia.' - '.$obj_tipo->dataDia;
        }
        $dia->addItems($items);
        $tipos = Tipo::all();
        $items = array();
        foreach ($tipos as $obj_tipo) {
            $items[$obj_tipo->id] = $obj_tipo->nome;
        }
        $tipo->addItems($items);
        Transaction::close();
        
        $this->form->addField('Nome', $titulo, '25%');
        $this->form->addField('Descrição', $descricao, '70%');
        $this->form->addField('Palestrante', $palestrante, '70%');
        $this->form->addField('Mini Curriculo', $minicurriculo, '70%');

        $this->form->addField('Sala', $sala, '20%');
        $this->form->addField('Hora de Inicio', $hora_i, '30%');
        $this->form->addField('Hora de Fim', $hora_f, '30%');
        //add dia das atividades
        $this->form->addField('Dia', $dia, '50%');
        $this->form->addField('Tipo', $tipo, '70%');
        
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
           /*  if(is_string($dados->hora_f))
                $dados->hora_f= strtotime($dados->hora_f);
            if(is_string($dados->hora_i))
                $dados->hora_i = strtotime($dados->hora_i); */
            $dados->duracao = strtotime($dados->fim) - strtotime($dados->inicio);
            
            $this->form->setData($dados);
            $atividade = new Evento; // instancia objeto
            $atividade->fromArray2( (array) $dados); // carrega os dados
            $atividade->store(); // armazena o objeto no banco de dados
            $atividade = Evento::last();
            EventoTipo::associate($atividade->id,$dados->tipo,$dados->dia_dataDia);
            EventoSala::associate($atividade->id,$dados->sala,$dados->dia_dataDia);
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
            if (isset($param['id']))
            {
                $id = $param['id']; // obtém a chave
                Transaction::open('sei'); // inicia transação com o BD
                $atividade = Evento::find($id);
                if ($atividade)
                {   
                    unset($atividade->password);
                    $atividade->ids_tipos = $atividade->getIdsGrupos();
                    $this->form->setData($atividade); // lança os dados da atividade no formulário
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
  
}
