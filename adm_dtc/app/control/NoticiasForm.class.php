<?php
/**
 * NoticiasForm Form List
 * @author  <your name here>
 */
class NoticiasForm extends TPage
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
        $this->form = new TQuickForm('form_Noticias');
        $this->form->class = 'tform'; // change CSS class
        $this->form = new BootstrapFormWrapper($this->form);
        $this->form->style = 'display: table;width:100%'; // change style
        $this->form->setFormTitle('Noticias');
        


        // create the form fields
        $id = new THidden('id');
        $fotoMobile = new TEntry('fotoMobile');
        $tituloMobile = new TEntry('tituloMobile');
        $larguraMobile = new TEntry('larguraMobile');
        $alturaMobile = new TEntry('alturaMobile');
        $arquivo = new TEntry('arquivo');
        $fotodesktop = new TEntry('fotoDesktop');
        $alturaDesktop = new TEntry('alturaDesktop');
        $larguraDesktop = new TEntry('larguraDesktop');
        $tituloDesktop = new TEntry('tituloDesktop');
        $datapublicacao = new TDate('datapublicacao');
        $visivel = new TCombo('visivel');
        
        $items = array(0=>'Sim',1=>'Não');
        $visivel->addItems($items);


        // add the fields
        $this->form->addQuickField('Id',                 $id,             100 );
        $this->form->addQuickField('Foto Celular',       $fotoMobile,     200 );
        $this->form->addQuickField('Título Celular',     $tituloMobile,   200 );
        $this->form->addQuickField('Largura Celular',    $larguraMobile,  100 );
        $this->form->addQuickField('Altura Celular',     $alturaMobile,   100 );
        $this->form->addQuickField('Arquivo da Página',  $arquivo,        200 );
        $this->form->addQuickField('Foto Desktop',       $fotodesktop,    200 );
        $this->form->addQuickField('Largura Desktop',    $larguraDesktop, 100 );
        $this->form->addQuickField('Altura Desktop',     $alturaDesktop,  100 );
        $this->form->addQuickField('Título Desktop',     $tituloDesktop,  200 );
        $this->form->addQuickField('Data da Publicação', $datapublicacao, 100 );
        $this->form->addQuickField('Visível',            $visivel,        100 );




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
        $column_fotoMobile = new TDataGridColumn('fotoMobile', 'Foto Celular', 'left');
        $column_tituloMobile = new TDataGridColumn('tituloMobile', 'Título Celular', 'left');
        $column_larguraMobile = new TDataGridColumn('larguraMobile', 'Largura Celular', 'left');
        $column_alturaMobile = new TDataGridColumn('alturaMobile', 'Altura Celular', 'left');
        $column_arquivo = new TDataGridColumn('arquivo', 'Arquivo da Página', 'left');
        $column_fotodesktop = new TDataGridColumn('fotoDesktop', 'Foto Desktop', 'left');
        $column_alturaDesktop = new TDataGridColumn('alturaDesktop', 'Altura Desktop', 'center');
        $column_larguraDesktop = new TDataGridColumn('larguraDesktop', 'Largura Desktop', 'center');
        $column_tituloDesktop = new TDataGridColumn('tituloDesktop', 'Título Desktop', 'left');
        $column_datapublicacao = new TDataGridColumn('datapublicacao', 'Data Public.', 'center');
        $column_visivel = new TDataGridColumn('visivel', 'Visivel', 'center');
        
        $column_arquivo->width = '20%';
        $column_tituloMobile->width = '60%';
        $column_datapublicacao->width = '10%';
        $column_visivel->width = '10%';


        // add the columns to the DataGrid
        //$this->datagrid->addColumn($column_id);
        //$this->datagrid->addColumn($column_fotoMobile);
        //$this->datagrid->addColumn($column_tituloMobile);
        //$this->datagrid->addColumn($column_larguraMobile);
        //this->datagrid->addColumn($column_alturaMobile);
        $this->datagrid->addColumn($column_arquivo);
        //$this->datagrid->addColumn($column_fotodesktop);
        //$this->datagrid->addColumn($column_alturaDesktop);
        //$this->datagrid->addColumn($column_larguraDesktop);
        $this->datagrid->addColumn($column_tituloDesktop);
        $this->datagrid->addColumn($column_datapublicacao);
        $this->datagrid->addColumn($column_visivel);

        
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
        $container->add(TPanelGroup::pack('Notícias', $this->form));
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
            
            // creates a repository for Noticias
            $repository = new TRepository('Noticias');
            $limit = 20;
            // creates a criteria
            $criteria = new TCriteria;
            
            // default order
            if (empty($param['order']))
            {
                $param['order'] = 'datapublicacao';
                $param['direction'] = 'desc';
            }
            $criteria->setProperties($param); // order, offset
            $criteria->setProperty('limit', $limit);
            
            if (TSession::getValue('Noticias_filter'))
            {
                // add the filter stored in the session to the criteria
                $criteria->add(TSession::getValue('Noticias_filter'));
            }
            
            // load the objects according to criteria
            $objects = $repository->load($criteria, FALSE);
            
            $this->datagrid->clear();
            if ($objects)
            {
                // iterate the collection of active records
                foreach ($objects as $object)
                {
                   if($object->visivel==0){
                     $object->visivel='Sim';
                   }else{ $object->visivel='Não';}
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
            $object = new Noticias($key, FALSE); // instantiates the Active Record
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
            
            $object = new Noticias;  // create an empty object
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
                $object = new Noticias($key); // instantiates the Active Record
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
