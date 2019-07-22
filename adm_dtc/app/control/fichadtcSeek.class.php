<?php
/**
 * fichadtcSeek Listing
 * @author  <your name here>
 */
class fichadtcSeek extends TWindow
{
    private $form; // form
    private $datagrid; // listing
    private $pageNavigation;
    private $formgrid;
    private $loaded;
    
    /**
     * Class constructor
     * Creates the page, the form and the listing
     */
    public function __construct()
    {
        parent::__construct();
        parent::setTitle( 'Lista de Fichas' );
        parent::setSize(0.8, 640);
        
        // creates the form
        $this->form = new TQuickForm('form_search_fichadtc');
        //$this->form->class = 'tform'; // change CSS class
        
       // $this->form->style = 'display: table;width:100%'; // change style
        //$this->form->setFormTitle('fichadtc');
        

        // create the form fields
        $inep = new TEntry('inep');
        $nomeinstituicao = new TEntry('nomeinstituicao');
        $nomeinstituicao->setSize(500);
        $dataservico = new TDate('dataservico');
        $dataservico->setSize(100);
        $dataservico->setMask('dd/mm/yyyy');
        
        $lb_inep = new TLabel('INEP');
        $lb_escola = new TLabel('ESCOLA');
        $lb_data = new TLabel('DATA');
        
        $this->form->addQuickFields('',array($lb_escola,$nomeinstituicao,$lb_data,$dataservico) );
        
        //Criando o autocompletar das escolas
        
        TTransaction::open('semed');
        $repository = new TRepository('Escolas');
        $objects = $repository->load();
        
        $completar = array();
        foreach ($objects as $object){
         // add the object inside the datagrid
         $completar[] = $object->nome;
         //$this->datagrid->addItem($object);
        }
        $nomeinstituicao->setCompletion($completar);
        TTransaction::close();
        
        //fim do autocompletar
        
        
        
        
        
        
        // keep the form filled during navigation with session data
        $this->form->setData( TSession::getValue('fichadtc_filter_data') );
        
        // add the search form actions
        $this->form->addQuickAction(_t('Find'), new TAction(array($this, 'onSearch')), 'fa:search');
        
        // creates a Datagrid
        $this->datagrid = new TDataGrid;
        
        $this->datagrid->style = 'width: 100%';
        $this->datagrid->datatable = 'true';
        // $this->datagrid->enablePopover('Popover', 'Hi <b> {name} </b>');
        

        // creates the datagrid columns
        $column_inep = new TDataGridColumn('inep', 'INEP', 'center');
        $column_nomeinstituicao = new TDataGridColumn('nomeinstituicao', 'Nome da Instituição', 'left');
        $column_dataservico = new TDataGridColumn('dataservico', 'Data', 'center');
        $column_tecnicos = new TDataGridColumn('tecnicos', 'Técnicos', 'left');
        $column_categorias = new TDataGridColumn('categorias', 'Categorias', 'left');


        // add the columns to the DataGrid
        $this->datagrid->addColumn($column_inep);
        $this->datagrid->addColumn($column_nomeinstituicao);
        $this->datagrid->addColumn($column_dataservico);
        $this->datagrid->addColumn($column_tecnicos);
        $this->datagrid->addColumn($column_categorias);


        // creates the datagrid column actions
        $order_inep = new TAction(array($this, 'onReload'));
        $order_inep->setParameter('order', 'inep');
        $column_inep->setAction($order_inep);
        
        $order_nomeinstituicao = new TAction(array($this, 'onReload'));
        $order_nomeinstituicao->setParameter('order', 'nomeinstituicao');
        $column_nomeinstituicao->setAction($order_nomeinstituicao);
        
        $order_dataservico = new TAction(array($this, 'onReload'));
        $order_dataservico->setParameter('order', 'dataservico');
        $column_dataservico->setAction($order_dataservico);
        

        // define the transformer method over image
        $column_dataservico->setTransformer( function($value, $object, $row) {
            $date = new DateTime($value);
            $date = TDate::date2br($value);
            return $date;
        });


        
        // create EDIT action
        $action_select = new TDataGridAction(array('fichatecnica', 'onEdit'));
        $action_select->setUseButton(TRUE);
        $action_select->setButtonClass('btn btn-default');
        $action_select->setLabel('');
        $action_select->setImage('fa:check-circle-o green');
        $action_select->setField('id');
        $this->datagrid->addAction($action_select);
        
        // create the datagrid model
        $this->datagrid->createModel();
        
        // creates the page navigation
        $this->pageNavigation = new TPageNavigation;
        $this->pageNavigation->setAction(new TAction(array($this, 'onReload')));
        $this->pageNavigation->setWidth($this->datagrid->getWidth());
        
        // vertical box container
        $container = new TVBox;
        $container->style = 'width: 100%';
        $container->add($this->form);
        $container->add($this->datagrid);
        $container->add($this->pageNavigation);
        
        parent::add($container);
    }
    
    /**
     * Register the filter in the session
     */
    public function onSearch()
    {
        // get the search form data
        $data = $this->form->getData();
        
        // clear session filters
        TSession::setValue('fichadtcSeek_filter_nomeinstituicao',   NULL);
        TSession::setValue('fichadtcSeek_filter_dataservico',   NULL);

        

        if (isset($data->nomeinstituicao) AND ($data->nomeinstituicao)) {
            $filter = new TFilter('nomeinstituicao', 'like', "%{$data->nomeinstituicao}%"); // create the filter
            TSession::setValue('fichadtcSeek_filter_nomeinstituicao',   $filter); // stores the filter in the session
        }


        if (isset($data->dataservico) AND ($data->dataservico)) {
            $data->dataservico = TDate::date2us($data->dataservico);
            $filter = new TFilter('dataservico', 'like', "%{$data->dataservico}%"); // create the filter
            TSession::setValue('fichadtcSeek_filter_dataservico',   $filter); // stores the filter in the session
            $data->dataservico = TDate::date2br($data->dataservico);
        }

        
        // fill the form with data again
        $this->form->setData($data);
        
        // keep the search data in the session
        TSession::setValue('fichadtc_filter_data', $data);
        
        $param=array();
        $param['offset']    =0;
        $param['first_page']=1;
        $this->onReload($param);
    }
    
    /**
     * Load the datagrid with data
     */
    public function onReload($param = NULL)
    {
        try
        {
            // open a transaction with database 'semed'
            TTransaction::open('semed');
            
            // creates a repository for fichadtc
            $repository = new TRepository('fichadtc');
            $limit = 6;
            // creates a criteria
            $criteria = new TCriteria;
            
            $criteria->add(new TFilter("date_format(dataservico,'%Y-%m-%d')", 'between', '2018-01-01','2018-12-30'));
            
            // default order
            if (empty($param['order']))
            {
                $param['order'] = 'id';
                $param['direction'] = 'asc';
            }
            $criteria->setProperties($param); // order, offset
            $criteria->setProperty('limit', $limit);
          
            if (TSession::getValue('fichadtcSeek_filter_nomeinstituicao')) {
                $criteria->add(TSession::getValue('fichadtcSeek_filter_nomeinstituicao')); // add the session filter
            }
            /*
            if (TSession::getValue('fichadtcSeek_filter_dataservico')) {
                $criteria->add(TSession::getValue('fichadtcSeek_filter_dataservico')); // add the session filter
            }
            */
            // load the objects according to criteria
            $objects = $repository->load($criteria, FALSE);
            
            if (is_callable($this->transformCallback))
            {
                call_user_func($this->transformCallback, $objects, $param);
            }
            
            $this->datagrid->clear();
            if ($objects)
            {
                // iterate the collection of active records
                foreach ($objects as $object)
                {
                    // add the object inside the datagrid
                    $this->datagrid->addItem($object);
                }
            }
            
            // reset the criteria for record count
            $criteria->resetProperties();
            $count= $repository->count($criteria);
            
            $this->pageNavigation->setCount($count); // count of records
            $this->pageNavigation->setProperties($param); // order, page
            $this->pageNavigation->setLimit($limit); // limit
            
            // close the transaction
            TTransaction::close();
            $this->loaded = true;
        }
        catch (Exception $e) // in case of exception
        {
            // shows the exception error message
            new TMessage('error', $e->getMessage());
            // undo all pending operations
            TTransaction::rollback();
        }
    }
    
    /**
     * Executed when the user chooses the record
     */
    public static function onSelect($param)
    {
        try
        {
            $key = $param['key'];
            TTransaction::open('semed');
            
            // load the active record
            $object = fichadtc::find($key);
            
            // closes the transaction
            TTransaction::close();
            
            $send = new StdClass;
            $send->id = $object->id;
            TForm::sendData('fichatecnica', $send);
            
            parent::closeWindow(); // closes the window
        }
        catch (Exception $e)
        {
            $send = new StdClass;
            $send->id = '';
            TForm::sendData('fichatecnica', $send);
            
            // undo pending operations
            TTransaction::rollback();
        }
    }
    
    /**
     * method show()
     * Shows the page
     */
    public function show()
    {
        // check if the datagrid is already loaded
        if (!$this->loaded AND (!isset($_GET['method']) OR !(in_array($_GET['method'],  array('onReload', 'onSearch')))) )
        {
            if (func_num_args() > 0)
            {
                $this->onReload( func_get_arg(0) );
            }
            else
            {
                $this->onReload();
            }
        }
        parent::show();
    }
}
