<?php
/**
 * UniversitariosForm Form List
 * @author  <your name here>
 */
class UniversitariosForm extends TPage
{
    protected $form; // form
    protected $datagrid; // datagrid
    protected $pageNavigation;
    protected $loaded;
    
    /**
     * Form constructor
     * @param $param Request
     */
    public function __construct( $param )
    {
        parent::__construct();
        
        // creates the form
        $this->form = new TQuickForm('form_Universitarios');
        $this->form->class = 'tform'; // change CSS class
        $this->form = new BootstrapFormWrapper($this->form);
        $this->form->style = 'display: table;width:100%'; // change style
        $this->form->setFormTitle('Universitarios');
        


        // create the form fields
        $id = new TEntry('id');
        $ncarteira = new TEntry('ncarteira');
        $nome = new TEntry('nome');
        $curso = new TEntry('curso');
        $universidade = new TEntry('universidade');
        $segunda = new TEntry('segunda');
        $terca = new TEntry('terca');
        $quarta = new TEntry('quarta');
        $quinta = new TEntry('quinta');
        $sexta = new TEntry('sexta');
        $sabado = new TEntry('sabado');
        $telefone1 = new TEntry('telefone1');
        $telefone2 = new TEntry('telefone2');
        $observacoes = new TText('observacoes');
        $espera = new TEntry('espera');
        
        // add the fields
        /*
        $this->form->addQuickField('Id', $id,  100 );
        $this->form->addQuickField('Ncarteira', $ncarteira,  200 );
        $this->form->addQuickField('Nome', $nome,  200 );
        $this->form->addQuickField('Curso', $curso,  200 );
        $this->form->addQuickField('Universidade', $universidade,  200 );
        $this->form->addQuickField('Segunda', $segunda,  100 );
        $this->form->addQuickField('Terca', $terca,  100 );
        $this->form->addQuickField('Quarta', $quarta,  100 );
        $this->form->addQuickField('Quinta', $quinta,  100 );
        $this->form->addQuickField('Sexta', $sexta,  100 );
        $this->form->addQuickField('Sabado', $sabado,  100 );
        $this->form->addQuickField('Telefone1', $telefone1,  200 );
        $this->form->addQuickField('Telefone2', $telefone2,  200 );
        $this->form->addQuickField('Observacoes', $observacoes,  200 );
        $this->form->addQuickField('Espera', $espera,  100 );
        
        */




        /** samples
         $this->form->addQuickFields('Date', array($date1, new TLabel('to'), $date2)); // side by side fields
         $fieldX->addValidation( 'Field X', new TRequiredValidator ); // add validation
         $fieldX->setSize( 100, 40 ); // set size
         **/
         
        // create the form actions
        $this->form->addQuickAction(_t('Save'), new TAction(array($this, 'onSave')), 'fa:floppy-o');
        $this->form->addQuickAction(_t('New'),  new TAction(array($this, 'onClear')), 'bs:plus-sign green');
        
        // creates a Datagrid
        $this->datagrid = new TDataGrid;
        ##LIST_DECORATOR##
        $this->datagrid->style = 'width: 100%';
        $this->datagrid->setHeight(320);
        // $this->datagrid->datatable = 'true';
        // $this->datagrid->enablePopover('Popover', 'Hi <b> {name} </b>');
        

        // creates the datagrid columns
        $column_id = new TDataGridColumn('id', 'Id', 'left');
        $column_ncarteira = new TDataGridColumn('ncarteira', 'Ncarteira', 'left');
        $column_nome = new TDataGridColumn('nome', 'Nome', 'left');
        $column_curso = new TDataGridColumn('curso', 'Curso', 'left');
        $column_universidade = new TDataGridColumn('universidade', 'Universidade', 'left');
        $column_segunda = new TDataGridColumn('segunda', 'Segunda', 'left');
        $column_terca = new TDataGridColumn('terca', 'Terca', 'left');
        $column_quarta = new TDataGridColumn('quarta', 'Quarta', 'left');
        $column_quinta = new TDataGridColumn('quinta', 'Quinta', 'left');
        $column_sexta = new TDataGridColumn('sexta', 'Sexta', 'left');
        $column_sabado = new TDataGridColumn('sabado', 'Sabado', 'left');
        $column_telefone1 = new TDataGridColumn('telefone1', 'Telefone1', 'left');
        $column_telefone2 = new TDataGridColumn('telefone2', 'Telefone2', 'left');
        $column_observacoes = new TDataGridColumn('observacoes', 'Observacoes', 'left');
        $column_espera = new TDataGridColumn('espera', 'Espera', 'left');


        // add the columns to the DataGrid
       // $this->datagrid->addColumn($column_id);
        $this->datagrid->addColumn($column_ncarteira);
        $this->datagrid->addColumn($column_nome);
        $this->datagrid->addColumn($column_curso);
        $this->datagrid->addColumn($column_universidade);
       /*
        $this->datagrid->addColumn($column_segunda);
        $this->datagrid->addColumn($column_terca);
        $this->datagrid->addColumn($column_quarta);
        $this->datagrid->addColumn($column_quinta);
        $this->datagrid->addColumn($column_sexta);
        $this->datagrid->addColumn($column_sabado);
        $this->datagrid->addColumn($column_telefone1);
        $this->datagrid->addColumn($column_telefone2);
        $this->datagrid->addColumn($column_observacoes);
        $this->datagrid->addColumn($column_espera);
        */

        
        // creates two datagrid actions
        $action1 = new TDataGridAction(array($this, 'onEdit'));
        $action1->setUseButton(TRUE);
        $action1->setButtonClass('btn btn-default');
        $action1->setLabel('');
        $action1->setImage('fa:pencil-square-o blue fa-lg');
        $action1->setField('id');
        
        $action2 = new TDataGridAction(array($this, 'onDelete'));
        $action2->setUseButton(TRUE);
        $action2->setButtonClass('btn btn-default');
        $action2->setLabel('');
        $action2->setImage('fa:trash-o red fa-lg');
        $action2->setField('id');
        
        // add the actions to the datagrid
        $this->datagrid->addAction($action1);
        $this->datagrid->addAction($action2);
        
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
        $container->add(TPanelGroup::pack('Universitários', $this->form));
        $container->add($this->datagrid);
        $container->add($this->pageNavigation);
        
        parent::add($container);
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
            
            // creates a repository for Universitarios
            $repository = new TRepository('Universitarios');
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
            
            if (TSession::getValue('Universitarios_filter'))
            {
                // add the filter stored in the session to the criteria
                $criteria->add(TSession::getValue('Universitarios_filter'));
            }
            
            // load the objects according to criteria
            $objects = $repository->load($criteria, FALSE);
            
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
            new TMessage('error', '<b>Error</b> ' . $e->getMessage());
            
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
        new TQuestion(TAdiantiCoreTranslator::translate('Do you really want to delete ?'), $action);
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
            $object = new Universitarios($key, FALSE); // instantiates the Active Record
            $object->delete(); // deletes the object from the database
            TTransaction::close(); // close the transaction
            $this->onReload( $param ); // reload the listing
            new TMessage('info', TAdiantiCoreTranslator::translate('Record deleted')); // success message
        }
        catch (Exception $e) // in case of exception
        {
            new TMessage('error', '<b>Error</b> ' . $e->getMessage()); // shows the exception error message
            TTransaction::rollback(); // undo all pending operations
        }
    }
    
    /**
     * Save form data
     * @param $param Request
     */
    public function onSave( $param )
    {
        try
        {
            TTransaction::open('semed'); // open a transaction
            
            /**
            // Enable Debug logger for SQL operations inside the transaction
            TTransaction::setLogger(new TLoggerSTD); // standard output
            TTransaction::setLogger(new TLoggerTXT('log.txt')); // file
            **/
            
            $this->form->validate(); // validate form data
            
            $object = new Universitarios;  // create an empty object
            $data = $this->form->getData(); // get form data as array
            $object->fromArray( (array) $data); // load the object with data
            $object->store(); // save the object
            
            // get the generated id
            $data->id = $object->id;
            
            $this->form->setData($data); // fill form data
            TTransaction::close(); // close the transaction
            
            new TMessage('info', TAdiantiCoreTranslator::translate('Record saved')); // success message
            $this->onReload(); // reload the listing
        }
        catch (Exception $e) // in case of exception
        {
            new TMessage('error', $e->getMessage()); // shows the exception error message
            $this->form->setData( $this->form->getData() ); // keep form data
            TTransaction::rollback(); // undo all pending operations
        }
    }
    
    /**
     * Clear form data
     * @param $param Request
     */
    public function onClear( $param )
    {
        $this->form->clear(TRUE);
    }
    
    /**
     * Load object to form data
     * @param $param Request
     */
    public function onEdit( $param )
    {
        try
        {
            if (isset($param['key']))
            {
                $key = $param['key'];  // get the parameter $key
                TTransaction::open('semed'); // open a transaction
                $object = new Universitarios($key); // instantiates the Active Record
                $this->form->setData($object); // fill the form
                TTransaction::close(); // close the transaction
            }
            else
            {
                $this->form->clear(TRUE);
            }
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
        if (!$this->loaded AND (!isset($_GET['method']) OR $_GET['method'] !== 'onReload') )
        {
            $this->onReload( func_get_arg(0) );
        }
        parent::show();
    }
}
