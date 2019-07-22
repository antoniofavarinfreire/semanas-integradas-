<?php
/**
 * servicosinternos Form List
 * @author  <your name here>
 */
class servicosinternos extends TPage
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
        $this->form = new TQuickForm('form_fichadtc');
        $this->form->class = 'tform'; // change CSS class
        
        $this->form->style = 'display: table;width:100%'; // change style
        $this->form->setFormTitle('Ficha de Serviços Internos - SEMED');
        


        // create the form fields
        $id = new TEntry('id');
        $inep = new THidden('inep');
        $nomeinstituicao = new THidden('nomeinstituicao');
        $dataservico = new TDate('dataservico');
        $observacoes = new TEntry('observacoes');
        $tecnicos = new TCheckGroup('tecnicos');
        $categorias = new THidden('categorias');
        $detalhes = new TText('detalhes');
        
        
        $id->setEditable(false);
        
        $tecnicos->addItems(array('1'=>'Adriano', '2'=>'Danilo','3'=>'Herlan','4'=>'Uelque'));
        $tecnicos->setLayout('horizontal');
        
        $dataservico->setMask('dd/mm/yyyy');
        
        
        //Criando o autocompletar das escolas
        TTransaction::open('semed');
        
        $repository = new TRepository('fichadtc');
        
        $criteria = new TCriteria;
        
        $criteria->add(new TFilter('inep', '=', '98003135'));
        $criteria->add(new TFilter('dataservico', '>', '2018-01-01'));
        
        $objects = $repository->load($criteria, FALSE);
        $completar = array();
        foreach ($objects as $object){
         // add the object inside the datagrid
         $completar[] = $object->observacoes;
         
        }
        
        $observacoes->setCompletion($completar);
        //$nomeinstituicao->setCompletion($completar);
        TTransaction::close();
        
        $observacoes->forceUpperCase();


        // add the fields
        $this->form->addQuickField('ID', $id,  40 );
        $this->form->addQuickField('INEP', $inep,  200 );
        $this->form->addQuickField('Nomeinstituicao', $nomeinstituicao,  200 );
        $this->form->addQuickField('Data do Serviço', $dataservico,  100 , new TRequiredValidator);
        $this->form->addQuickField('Departamento - Pessoa Atendida', $observacoes,  '70%' , new TRequiredValidator);
        $this->form->addQuickField('Técnicos', $tecnicos,  200 );
        $this->form->addQuickField('Categorias', $categorias,  200 );
        $this->form->addQuickField('Problema Solucionado', $detalhes,  '90%' , new TRequiredValidator);




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
        $column_id = new TDataGridColumn('id', 'ID', 'left',20);
        $column_inep = new TDataGridColumn('inep', 'INEP', 'left');
        $column_nomeinstituicao = new TDataGridColumn('nomeinstituicao', 'Nomeinstituicao', 'left');
        $column_dataservico = new TDataGridColumn('dataservico', 'Data', 'left',60);
        $column_observacoes = new TDataGridColumn('observacoes', 'Dpto./Pessoa', 'left');
        $column_tecnicos = new TDataGridColumn('tecnicos', 'Técnicos', 'left');
        $column_categorias = new TDataGridColumn('categorias', 'Categorias', 'left');
        $column_detalhes = new TDataGridColumn('detalhes', 'Problema Solucionado', 'left');


        // add the columns to the DataGrid
        //$this->datagrid->addColumn($column_id);
        //$this->datagrid->addColumn($column_inep);
        //$this->datagrid->addColumn($column_nomeinstituicao);
        $this->datagrid->addColumn($column_dataservico);
        $this->datagrid->addColumn($column_observacoes);
        $this->datagrid->addColumn($column_tecnicos);
        //$this->datagrid->addColumn($column_categorias);
        $this->datagrid->addColumn($column_detalhes);

        
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
        $container->add($this->form);
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
            
            // creates a repository for fichadtc
            $repository = new TRepository('fichadtc');
            $limit = 6;
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
            
            // no escape strings
            $criteria = new TCriteria;
            $criteria->add(new TFilter('dataservico', '>=', '2018-01-01'));
            $criteria->add(new TFilter('inep', '=', '98003135'));
            //echo $criteria->dump(); // (birthdate <= date(now()) - '2 years'::interval)
            
            if (TSession::getValue('fichadtc_filter'))
            {
                // add the filter stored in the session to the criteria
                $criteria->add(TSession::getValue('fichadtc_filter'));
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
                    $object->dataservico = TDate::date2br($object->dataservico); 
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
            $object = new fichadtc($key, FALSE); // instantiates the Active Record
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
                     
            $this->form->validate(); // validate form data
            
            $object = new fichadtc;  // create an empty object
            $data = $this->form->getData(); // get form data as array
            $object->fromArray( (array) $data); // load the object with data
            $tx = '';
            
            $tecnicos = array('Adriano','Danilo','Herlan','Uelque');
            foreach($object->tecnicos as $tecs)
            {
             $tx .= $tecnicos[$tecs-1] . ';';
            }
                        
            $object->inep = '98003135';
            $object->nomeinstituicao = 'SEMED - Secretaria Municipal de Educação';
            $object->categorias = 'Outros';
            $object->tecnicos = $tx;
      
            $object->dataservico = TDate::date2us($object->dataservico);
            
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
                $object = new fichadtc($key); // instantiates the Active Record
                $object->dataservico = TDate::date2br($object->dataservico);
                
                $arr = explode(';', $object->tecnicos);
                $tecnicos = array();     
                foreach($arr as $valor) {
                 if($valor=='Adriano'){$tecnicos[] = 1;}
                 if($valor=='Danilo') {$tecnicos[] = 2;}
                 if($valor=='Herlan') {$tecnicos[] = 3;}
                 if($valor=='Uelque') {$tecnicos[] = 4;}
                }
                
                
                $object->tecnicos = $tecnicos;
                
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
