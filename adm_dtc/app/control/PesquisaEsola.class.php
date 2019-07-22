<?php

error_reporting(0);
 
class PesquisaEsola extends TWindow
{
     private $form; // form
    private $datagrid; // listing
    private $pageNavigation;
    private $formgrid;
    private $loaded;
    
 
    public function __construct()
    {
        parent::__construct();
        parent::setTitle('Busca por Escola');
        parent::setSize(0.8, 550);
        
        // creates the form
        $this->form = new TQuickForm('form_search_Escolas');    
        

      
        $nome = new TEntry('nome');
       


        // add the fields
        
        
      
        $this->form->addQuickField('Nome', $nome,  400 );
      

        
        // keep the form filled during navigation with session data
        $this->form->setData( TSession::getValue('Escolas_filter_data') );
        
        // add the search form actions
        $this->form->addQuickAction(_t('Find'), new TAction(array($this, 'onSearch')), 'fa:search');
        
        
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
        $nome->setCompletion($completar);
        TTransaction::close();
        
        //fim do autocompletar
        
        
        
        
        // creates a Datagrid
        $this->datagrid = new TDataGrid;
        
        $this->datagrid->style = 'width: 100%';
        $this->datagrid->datatable = 'true';
        // $this->datagrid->enablePopover('Popover', 'Hi <b> {name} </b>');
        

        // creates the datagrid columns
        $column_id = new TDataGridColumn('id', 'ID', 'center');
        $column_inep = new TDataGridColumn('inep', 'INEP', 'center');
        $column_nome = new TDataGridColumn('nome', 'NOME', 'left');
        $column_categoria = new TDataGridColumn('categoria', 'CATEGORIA', 'left');


        // add the columns to the DataGrid
        $this->datagrid->addColumn($column_id);
        $this->datagrid->addColumn($column_inep);
        $this->datagrid->addColumn($column_nome);
        $this->datagrid->addColumn($column_categoria);

        
        // create EDIT action
        $action_select = new TDataGridAction(array($this, 'onSelect'));
        $action_select->setUseButton(TRUE);
        $action_select->setButtonClass('btn btn-default');
        $action_select->setLabel(AdiantiCoreTranslator::translate('Select'));
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
        
        TSession::setValue('EscolasSeek_filter_nome',   NULL);
    
        if (isset($data->nome) AND ($data->nome)) {
            $filter = new TFilter('nome', 'like', "%{$data->nome}%"); // create the filter
            TSession::setValue('EscolasSeek_filter_nome',   $filter); // stores the filter in the session
        }
    
        // fill the form with data again
        $this->form->setData($data);
        
        // keep the search data in the session
        TSession::setValue('Escolas_filter_data', $data);
        
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
            
            // creates a repository for Escolas
            $repository = new TRepository('Escolas');
            $limit = 6;
            // creates a criteria
            $criteria = new TCriteria;
            
            // default order
            if (empty($param['order']))
            {
                $param['order'] = 'nome';
                $param['direction'] = 'asc';
            }
            $criteria->setProperties($param); // order, offset
            $criteria->setProperty('limit', $limit);
            
            if (TSession::getValue('EscolasSeek_filter_nome')) {
                $criteria->add(TSession::getValue('EscolasSeek_filter_nome')); // add the session filter
            }



            
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
            $object = Escolas::find($key);
            
            // closes the transaction
            TTransaction::close();
            
            //print_r($object);
            
            $send = new StdClass;
            $send->inep = $object->inep;
            $send->nomeinstituicao = $object->nome;
            
            TForm::sendData('form_fichadtc', $send);
            
            parent::closeWindow(); // closes the window
        }
        catch (Exception $e)
        {
            $send = new StdClass;
            $send->escolas_id = '';
            TForm::sendData('form_fichadtc', $send);
            
            // undo pending operations
            TTransaction::rollback();
        }
    }
    
  
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
