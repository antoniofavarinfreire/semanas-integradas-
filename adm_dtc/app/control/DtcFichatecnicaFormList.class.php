<?php
/**
 * DtcFichatecnicaFormList Form List
 * @author  <your name here>
 */
class DtcFichatecnicaFormList extends TPage
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
        $this->form = new TQuickForm('form_DtcFichatecnica');
        $this->form->class = 'tform'; // change CSS class
        
        $this->form->style = 'display: table;width:100%'; // change style
        $this->form->setFormTitle('DTC - Ficha Técnica');
        
        $panel    = new TPanel(400,650);
        $notebook = new TNotebook(500,650);


        // create the form fields
        $id = new TEntry('id');
        $id->setSize(50);
        $id->setEditable(false);
        
        $Instituicao = new TEntry('Instituição');
        $Instituicao->setSize(350);
        
        $data = new TDate('data');
        $data->setMask('dd/mm/yyyy');
        $data->setSize(85);
        
        $observacoes = new TEntry('observacoes');
        $observacoes->setSize(400);
        
        $tecnicos = new TText('tecnicos');
        $tecnicos->setSize(510,60);
        
        $agendado = new TDate('agendado');
        $agendado->setMask('dd/mm/yyyy');
        $agendado->setSize(85);
        
        $emergencial = new TCheckGroup('emergencial');
        $items = array();
        $items[0] = ' Emergencial';
        $emergencial->addItems($items);
        
        $virus = new TCheckGroup('virus');
        $items = array();
        $items[0] = ' Vírus';
        $virus->addItems($items);
        
        
        $sistema = new TCheckGroup('sistema');
        $items = array();
        $items[0] = ' Sistema';
        $sistema->addItems($items);
        
        
        $software = new TCheckGroup('software');
        $items = array();
        $items[0] = ' Software';
        $software->addItems($items);
        
        
        
        $rede = new TCheckGroup('rede');
        $items = array();
        $items[0] = ' Rede';
        $rede->addItems($items);
        
        
        $impressora = new TCheckGroup('impressora');
        $items = array();
        $items[0] = ' Impressora';
        $impressora->addItems($items);
        
        $internet = new TCheckGroup('internet');
        $items = array();
        $items[0] = ' Internet';
        $internet->addItems($items);
        
        
        
        $equipamentos = new TCheckGroup('equipamentos');
        $items = array();
        $items[0] = ' Equipamentos';
        $equipamentos->addItems($items);
        
        
        $detalhes = new TText('detalhes');
        $detalhes->setSize(550);
        
        
        
        $lb = new TLabel('ID');
        $panel->put($lb,5,10);
        $panel->put($id          ,5,30);
        
        $lb = new TLabel('Nome da Instituição');
        $panel->put($lb,80,10);
        $panel->put($Instituicao ,80,30);
        
        $lb = new TLabel('Data');
        $panel->put($lb,450,10);
        $panel->put($data        ,450,30);
              
        $lb = new TLabel('Observação');
        $panel->put($lb,580,10);
        $panel->put($observacoes ,580,30);
        
        
        //------Técnicos ----------------------------
        $cb_tecnicos = new TCombo('cb_tecnicos');
        $cb_tecnicos->setSize(510);
        $frame = new TFrame;
        $frame->setLegend('Técnicos que executaram o serviço');
        $frame->style = 'display:table;width:850px';
        $panel->put($frame,0,80);
        $table = new TTable;
        $frame->add($table);
        $row = $table->addRow();
        $row->addCell($cb_tecnicos);
        $row = $table->addRow();
        $row->addCell($tecnicos);
        //-------------------------------------------
        
        
        $lb = new TLabel('Agendado');
        $panel->put($lb,5,280);
        $panel->put($agendado    ,5,300);
        $panel->put($emergencial ,150,300);
        
        
        //----Problemas Comuns-----------
        
        $frame2 = new TFrame;
        $frame2->setLegend('Categoria dos Serviços Executados');
        $tabela2 = new TTable;
        $frame2->add($tabela2);
        
        $row = $tabela2->addRow();
        $row->addCell($virus);
        $row->addCell($rede);
        $row->addCell($internet);
        $row = $tabela2->addRow();
        $row->addCell($sistema);
        $row->addCell($impressora);
        $row->addCell($equipamentos);
        $row->addCell($software);
        
        $panel->put($frame2       ,5,340);
        $frame2->style = 'display:table;width:520px';
        
        //-------------------------------
        
        $lb = new TLabel('Detalhes do Serviço');
        $panel->put($lb,5,480);
        $panel->put($detalhes,5,500);
        


        /* add the fields
        $this->form->addQuickField('ID', $id,  100 );
        $this->form->addQuickField('Instituicao', $Instituição,  200 , new TRequiredValidator);
        $this->form->addQuickField('Data', $data,  100 , new TRequiredValidator);
        $this->form->addQuickField('Observações', $observacoes,  200 );
        $this->form->addQuickField('Técnicos', $tecnicos,  200 );
        $this->form->addQuickField('Agendado', $agendado,  100 );
        $this->form->addQuickField('Emergencial', $emergencial,  100 );
        $this->form->addQuickField('Vírus', $virus,  100 );
        $this->form->addQuickField('Sistema Operacional', $sistema,  100 );
        $this->form->addQuickField('Software', $software,  100 );
        $this->form->addQuickField('Rede', $rede,  100 );
        $this->form->addQuickField('Impressora', $impressora,  100 );
        $this->form->addQuickField('Internet', $internet,  100 );
        $this->form->addQuickField('Equipamentos', $equipamentos,  100 );
        $this->form->addQuickField('Detalhes', $detalhes,  200 );


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
        $column_id = new TDataGridColumn('id', 'ID', 'left');
        $column_Instituicao = new TDataGridColumn('Instituição', 'Instituicao', 'left');
        $column_data = new TDataGridColumn('data', 'Data', 'left');
        $column_observacoes = new TDataGridColumn('observacoes', 'Observações', 'left');
        $column_tecnicos = new TDataGridColumn('tecnicos', 'Técnicos', 'left');
        $column_agendado = new TDataGridColumn('agendado', 'Agendado', 'left');
        $column_emergencial = new TDataGridColumn('emergencial', 'Emergencial', 'left');
        $column_virus = new TDataGridColumn('virus', 'Vírus', 'left');
        $column_sistema = new TDataGridColumn('sistema', 'Sistema Operacional', 'left');
        $column_software = new TDataGridColumn('software', 'Software', 'left');
        $column_rede = new TDataGridColumn('rede', 'Rede', 'left');
        $column_impressora = new TDataGridColumn('impressora', 'Impressora', 'left');
        $column_internet = new TDataGridColumn('internet', 'Internet', 'left');
        $column_equipamentos = new TDataGridColumn('equipamentos', 'Equipamentos', 'left');
        $column_detalhes = new TDataGridColumn('detalhes', 'Detalhes', 'left');


        // add the columns to the DataGrid
        $this->datagrid->addColumn($column_id);
        $this->datagrid->addColumn($column_Instituicao);
        $this->datagrid->addColumn($column_data);
        /*
        $this->datagrid->addColumn($column_observacoes);
        $this->datagrid->addColumn($column_tecnicos);
        $this->datagrid->addColumn($column_agendado);
        $this->datagrid->addColumn($column_emergencial);
        $this->datagrid->addColumn($column_virus);
        $this->datagrid->addColumn($column_sistema);
        $this->datagrid->addColumn($column_software);
        $this->datagrid->addColumn($column_rede);
        $this->datagrid->addColumn($column_impressora);
        $this->datagrid->addColumn($column_internet);
        $this->datagrid->addColumn($column_equipamentos);
        $this->datagrid->addColumn($column_detalhes);
        */

        
        // creates two datagrid actions
        $action1 = new TDataGridAction(array($this, 'onEdit'));
        $action1->setUseButton(TRUE);
        $action1->setButtonClass('btn btn-default');
        $action1->setLabel(_t('Edit'));
        $action1->setImage('fa:pencil-square-o blue fa-lg');
        $action1->setField('id');
        
        $action2 = new TDataGridAction(array($this, 'onDelete'));
        $action2->setUseButton(TRUE);
        $action2->setButtonClass('btn btn-default');
        $action2->setLabel(_t('Delete'));
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
        
        $notebook->appendPage('Ficha Técnica',$panel);
        $notebook->appendPage('Listagem de Dados',$this->datagrid);
        
        $container->add($notebook);
        
        //$container->add($panel);
        //$container->add($this->form);
        //$container->add($this->datagrid);
        //$container->add($this->pageNavigation);
        
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
            
            // creates a repository for DtcFichatecnica
            $repository = new TRepository('DtcFichatecnica');
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
            
            if (TSession::getValue('DtcFichatecnica_filter'))
            {
                // add the filter stored in the session to the criteria
                $criteria->add(TSession::getValue('DtcFichatecnica_filter'));
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
            $object = new DtcFichatecnica($key, FALSE); // instantiates the Active Record
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
            
            $object = new DtcFichatecnica;  // create an empty object
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
                $object = new DtcFichatecnica($key); // instantiates the Active Record
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
