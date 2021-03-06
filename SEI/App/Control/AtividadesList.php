<?php
use Livro\Control\Page;
use Livro\Control\Action;
use Livro\Widgets\Form\Form;
use Livro\Widgets\Form\Entry;
use Livro\Widgets\Container\VBox;
use Livro\Widgets\Datagrid\Datagrid;
use Livro\Widgets\Datagrid\DatagridColumn;
use Livro\Widgets\Dialog\Message;
use Livro\Widgets\Dialog\Question;
use Livro\Widgets\Container\Panel;
use Livro\Widgets\Wrapper\FormWrapper;
use Livro\Widgets\Wrapper\DatagridWrapper;
use Livro\Database\Transaction;
use Livro\Database\Repository;
use Livro\Database\Criteria;

/**
 * Listagem de Atividades
 */
class AtividadesList extends Page
{
    private $form;     // formulário de buscas
    private $datagrid; // listagem
    private $loaded;

    /**
     * Construtor da página
     */
    public function __construct()
    {
        parent::__construct();
        
        // instancia um formulário de buscas
        $this->form = new FormWrapper(new Form('form_busca_atividades'));
        $this->form->setTitle('Atividades');
        
        $titulo = new Entry('Titulo');
        $this->form->addField('Titulo', $titulo, '100%');
        $this->form->addAction('Buscar', new Action(array($this, 'onReload')));
        $this->form->addAction('Novo', new Action(array(new AtividadesForm, 'onEdit')));
        
        // instancia objeto Datagrid
        $this->datagrid = new DatagridWrapper(new Datagrid);

        // instancia as colunas da Datagrid
        $titulo   = new DatagridColumn('titulo',         'Titulo', 'center', '40%');
        $sala     = new DatagridColumn('sala',       'Sala',    'left', '20%');
        $horario = new DatagridColumn('hora_i',   'Horario','left', '20%');
        
        

        // adiciona as colunas à Datagrid
        $this->datagrid->addColumn($titulo);
        $this->datagrid->addColumn($sala);
        $this->datagrid->addColumn($horario);
        
        

        $this->datagrid->addAction( 'Editar',  new Action([new AtividadesForm, 'onEdit']), 'id', 'fa fa-edit fa-lg blue');
        $this->datagrid->addAction( 'Excluir',  new Action([$this, 'onDelete']),         'id', 'fa fa-trash fa-lg red');
        
        // monta a página através de uma caixa
        $box = new VBox;
        $box->style = 'display:block';
        $box->add($this->form);
        $box->add($this->datagrid);
        
        parent::add($box);
    }

    /**
     * Carrega a Datagrid com os objetos do banco de dados
     */
    public function onReload()
    {
        Transaction::open('sei'); // inicia transação com o BD
        $repository = new Repository('Atividade');

        // cria um critério de seleção de dados
        $criteria = new Criteria;
        $criteria->setProperty('order', 'titulo');

        // obtém os dados do formulário de buscas
        $dados = $this->form->getData();

        // verifica se o usuário preencheu o formulário
        if ($dados->Titulo)
        {
            // filtra pelo nome do atividade
            $criteria->add('titulo', 'like', "%{$dados->titulo}%");
        }

        // carrega os produtos que satisfazem o critério
        $atividades = $repository->load($criteria);
        $this->datagrid->clear();
        if ($atividades)
        {
            foreach ($atividades as $atividade)
            {
                // adiciona o objeto na Datagrid
                $this->datagrid->addItem($atividade);
            }
        }

        // finaliza a transação
        Transaction::close();
        $this->loaded = true;
    }

    /**
     * Pergunta sobre a exclusão de registro
     */
    public function onDelete($param)
    {
        $titulo = $param['titulo']; // obtém o parâmetro $id
        $action1 = new Action(array($this, 'Delete'));
        $action1->setParameter('titulo', $titulo);
        
        new Question('Deseja realmente excluir o registro?', $action1);
    }

    /**
     * Exclui um registro
     */
    public function Delete($param)
    {
        try
        {
            $titulo = $param['titulo']; // obtém a chave
            Transaction::open('livro'); // inicia transação com o banco 'livro'
            $atividade = Atividade::find($titulo);
            $atividade->delete(); // deleta objeto do banco de dados
            Transaction::close(); // finaliza a transação
            $this->onReload(); // recarrega a datagrid
            new Message('info', "Registro excluído com sucesso");
        }
        catch (Exception $e)
        {
            new Message('error', $e->getMessage());
        }
    }

    /**
     * Exibe a página
     */
    public function show()
    {
         // se a listagem ainda não foi carregada
         if (!$this->loaded)
         {
	        $this->onReload();
         }
         parent::show();
    }
}
