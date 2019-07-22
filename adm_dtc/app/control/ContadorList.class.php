<?php
/**
 * ContadorList Listing
 * @author  <your name here>
 */
class ContadorList extends TPage
{
    private $form; // form
    private $datagrid; // listing
    private $pageNavigation;
    private $formgrid;
    private $loaded;
    private $deleteButton;
    
    /**
     * Class constructor
     * Creates the page, the form and the listing
     */
    public function __construct()
    {
        parent::__construct();
        
        // creates the form
        $this->form = new TQuickForm('form_search_Contador');
        $this->form->class = 'tform'; // change CSS class
        
        $this->form->style = 'display: table;width:100%'; // change style
        $this->form->setFormTitle('Contador');
        

        // create the form fields
        $id = new TEntry('id');
        $pagina = new TEntry('pagina');
        $titulo = new TEntry('titulo');
        $publicacao = new TEntry('publicacao');
        $total = new TEntry('total');


        // add the fields
        $this->form->addQuickField('Id', $id,  200 );
        $this->form->addQuickField('Pagina', $pagina,  200 );
        $this->form->addQuickField('Título', $titulo,  200 );
        $this->form->addQuickField('Data da Public.', $publicacao,  200 );
        $this->form->addQuickField('Total', $total,  200 );

        
        // keep the form filled during navigation with session data
        $this->form->setData( TSession::getValue('Contador_filter_data') );
        
        // add the search form actions
        $this->form->addQuickAction(_t('Find'), new TAction(array($this, 'onSearch')), 'fa:search');
        //$this->form->addQuickAction(_t('New'),  new TAction(array('ContadorForm', 'onEdit')), 'bs:plus-sign green');
        
        // creates a Datagrid
        $this->datagrid = new TDataGrid;
        
        $this->datagrid->style = 'width: 100%';
        $this->datagrid->datatable = 'true';
        // $this->datagrid->enablePopover('Popover', 'Hi <b> {name} </b>');
        

        // creates the datagrid columns
        $column_id = new TDataGridColumn('id', 'Id', 'right');
        $column_pagina = new TDataGridColumn('pagina', 'Link', 'center',30);
        $column_titulo = new TDataGridColumn('titulo', 'Título', 'left',250);
        $column_publicacao = new TDataGridColumn('publicacao', 'Data da Public.', 'center',50);
        $column_total = new TDataGridColumn('total', 'Total', 'center',50);
        
        $column_pagina->setTransformer( function($total) {
            $tx = '<a href="http://semedjacunda.com.br/?pg=' .$total . '" target="_blank">
            <img src="app/images/webicon.png"></a>';            
            return new TLabel($tx);
        });
        
        
        
       
        


        // add the columns to the DataGrid
        //$this->datagrid->addColumn($column_id);
        
        $this->datagrid->addColumn($column_publicacao);
        $this->datagrid->addColumn($column_pagina);        
        $this->datagrid->addColumn($column_titulo);        
        $this->datagrid->addColumn($column_total);


        // creates the datagrid column actions
        $order_titulo = new TAction(array($this, 'onReload'));
        $order_titulo->setParameter('order', 'titulo');
        $column_titulo->setAction($order_titulo);
        
        $order_publicacao = new TAction(array($this, 'onReload'));
        $order_publicacao->setParameter('order', 'publicacao');
        $column_publicacao->setAction($order_publicacao);
        
        $order_total = new TAction(array($this, 'onReload'));
        $order_total->setParameter('order', 'total');
        $column_total->setAction($order_total);
        

        // define the transformer method over image
        $column_publicacao->setTransformer( function($value, $object, $row) {
            $date = new DateTime($value);
            return $date->format('d/m/Y');
        });


        
        // create EDIT action
        /*
       
        $action_edit = new TDataGridAction(array('ContadorForm', 'onEdit'));
        $action_edit->setUseButton(TRUE);
        $action_edit->setButtonClass('btn btn-default');
        $action_edit->setLabel(_t('Edit'));
        $action_edit->setImage('fa:pencil-square-o blue fa-lg');
        $action_edit->setField('id');
        $this->datagrid->addAction($action_edit);
        
       */
        
        // create the datagrid model
        $this->datagrid->createModel();
        
        // creates the page navigation
        $this->pageNavigation = new TPageNavigation;
        $this->pageNavigation->setAction(new TAction(array($this, 'onReload')));
        $this->pageNavigation->setWidth($this->datagrid->getWidth());
        


        // vertical box container
        $container = new TVBox;
        $container->style = 'width: 90%';
        // $container->add(new TXMLBreadCrumb('menu.xml', __CLASS__));
        //$container->add($this->form);
        $container->add($this->datagrid);
        $container->add($this->pageNavigation);
        
        parent::add($container);
    }
    
    /**
     * Inline record editing
     * @param $param Array containing:
     *              key: object ID value
     *              field name: object attribute to be updated
     *              value: new attribute content 
     */
    public function onInlineEdit($param)
    {
        try
        {
            // get the parameter $key
            $field = $param['field'];
            $key   = $param['key'];
            $value = $param['value'];
            
            TTransaction::open('semed'); // open a transaction with database
            $object = new Contador($key); // instantiates the Active Record
            $object->{$field} = $value;
            $object->store(); // update the object in the database
            TTransaction::close(); // close the transaction
            
            $this->onReload($param); // reload the listing
            new TMessage('info', "Record Updated");
        }
        catch (Exception $e) // in case of exception
        {
            new TMessage('error', '<b>Error</b> ' . $e->getMessage()); // shows the exception error message
            TTransaction::rollback(); // undo all pending operations
        }
    }
    
    /**
     * Register the filter in the session
     */
    public function onSearch()
    {
        // get the search form data
        $data = $this->form->getData();
        
        // clear session filters
        TSession::setValue('ContadorList_filter_id',   NULL);
        TSession::setValue('ContadorList_filter_pagina',   NULL);
        TSession::setValue('ContadorList_filter_titulo',   NULL);
        TSession::setValue('ContadorList_filter_publicacao',   NULL);
        TSession::setValue('ContadorList_filter_total',   NULL);

        if (isset($data->id) AND ($data->id)) {
            $filter = new TFilter('id', 'like', "%{$data->id}%"); // create the filter
            TSession::setValue('ContadorList_filter_id',   $filter); // stores the filter in the session
        }


        if (isset($data->pagina) AND ($data->pagina)) {
            $filter = new TFilter('pagina', 'like', "%{$data->pagina}%"); // create the filter
            TSession::setValue('ContadorList_filter_pagina',   $filter); // stores the filter in the session
        }


        if (isset($data->titulo) AND ($data->titulo)) {
            $filter = new TFilter('titulo', 'like', "%{$data->titulo}%"); // create the filter
            TSession::setValue('ContadorList_filter_titulo',   $filter); // stores the filter in the session
        }


        if (isset($data->publicacao) AND ($data->publicacao)) {
            $filter = new TFilter('publicacao', 'like', "%{$data->publicacao}%"); // create the filter
            TSession::setValue('ContadorList_filter_publicacao',   $filter); // stores the filter in the session
        }


        if (isset($data->total) AND ($data->total)) {
            $filter = new TFilter('total', 'like', "%{$data->total}%"); // create the filter
            TSession::setValue('ContadorList_filter_total',   $filter); // stores the filter in the session
        }

        
        // fill the form with data again
        $this->form->setData($data);
        
        // keep the search data in the session
        TSession::setValue('Contador_filter_data', $data);
        
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
            
            // creates a repository for Contador
            $repository = new TRepository('Contador');
            $limit = 10;
            // creates a criteria
            $criteria = new TCriteria;
            
            // default order
            if (empty($param['order']))
            {
                $param['order'] = 'id';
                $param['direction'] = 'asc';
            }
            $criteria->setProperties($param); // order, offset
            $criteria->setProperty('limit', $limit);
            

            if (TSession::getValue('ContadorList_filter_id')) {
                $criteria->add(TSession::getValue('ContadorList_filter_id')); // add the session filter
            }


            if (TSession::getValue('ContadorList_filter_pagina')) {
                $criteria->add(TSession::getValue('ContadorList_filter_pagina')); // add the session filter
            }


            if (TSession::getValue('ContadorList_filter_titulo')) {
                $criteria->add(TSession::getValue('ContadorList_filter_titulo')); // add the session filter
            }


            if (TSession::getValue('ContadorList_filter_publicacao')) {
                $criteria->add(TSession::getValue('ContadorList_filter_publicacao')); // add the session filter
            }


            if (TSession::getValue('ContadorList_filter_total')) {
                $criteria->add(TSession::getValue('ContadorList_filter_total')); // add the session filter
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
                $i = 0;
                // iterate the collection of active records
                foreach ($objects as $object)
                {
                     
                    
                    // add the object inside the datagrid
                    $this->datagrid->addItem($object);
                    $i++;
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
     * Ask before deletion
     */
    public function onDelete($param)
    {
        // define the delete action
        $action = new TAction(array($this, 'Delete'));
        $action->setParameters($param); // pass the key parameter ahead
        
        // shows a dialog to the user
        new TQuestion(AdiantiCoreTranslator::translate('Do you really want to delete ?'), $action);
    }
    
    /**
     * Delete a record
     */
    public function Delete($param)
    {
        try
        {
            $key=$param['key']; // get the parameter $key
            TTransaction::open('semed'); // open a transaction with database
            $object = new Contador($key, FALSE); // instantiates the Active Record
            $object->delete(); // deletes the object from the database
            TTransaction::close(); // close the transaction
            $this->onReload( $param ); // reload the listing
            new TMessage('info', AdiantiCoreTranslator::translate('Record deleted')); // success message
        }
        catch (Exception $e) // in case of exception
        {
            new TMessage('error', $e->getMessage()); // shows the exception error message
            TTransaction::rollback(); // undo all pending operations
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
