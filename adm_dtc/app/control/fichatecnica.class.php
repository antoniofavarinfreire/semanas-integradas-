<?php
/**
 * fichatecnica Registration
 * @author  <your name here>
 */
class fichatecnica extends TPage
{
    private $form;
    private $datagrid;
    private $pageNavigation;
    private $loaded;
    
    /**
     * Class constructor
     * Creates the page and the registration form
     */
    function __construct()
    {
        parent::__construct();
        
        // creates the form
        $this->form = new TForm('form_fichadtc');
        
        try
        {
            // TUIBuilder object
            $ui = new TUIBuilder(500,500);
            $ui->setController($this);
            $ui->setForm($this->form);
            
            // reads the xml form
            $ui->parseFile('app/forms/fichatecnica.form.xml');
            
            // get the interface widgets
            $fields = $ui->getWidgets();
            // look for the TDataGrid object
            foreach ($fields as $name => $field)
            {
                if ($field instanceof TDataGrid)
                {
                    $this->datagrid = $field;
                    $this->pageNavigation = $this->datagrid->getPageNavigation();
                }
            }
            
            // add the TUIBuilder panel inside the TForm object
            $this->form->add($ui);
            // set form fields from interface fields
            $this->form->setFields($ui->getFields());     
            
        }
        catch (Exception $e)
        {
            new TMessage('error', $e->getMessage());
        }
   
        $bt_busca = new TSeekButton('inep');
        $bt_busca->setSize(100);
        $local_componente = $ui->getWidget( 'lbseek' ); // lê o frame
        $local_componente->clearChildren(); // limpa o conteúdo do frame
        $local_componente->add($bt_busca); // adiciona o THtmlEditor
        
        $this->form->addField($bt_busca);
        
        $minhadata = $ui->getWidget('dataservico');
        $minhadata->setMask('dd/mm/yyyy');
        
        $data=date('d/m/Y');
        $minhadata->setValue($data);
        
       

        
        
        $obj = new PesquisaEsola;
        $action = new TAction(array($obj, 'onReload'));
        $action->setParameter('inep','form_fichadtc'); 
        $bt_busca->setAction($action);
        
         
        $bt_listar=new TButton('action1'); 
        $bt_listar->setAction(new TAction(array('fichadtcSeek', 'onReload')), 'Listar'); 
        $bt_listar->setImage('ico_datagrid.png'); 
         
        $bt_listarlocal = $ui->getWidget('lb_listar');
        $bt_listarlocal->add($bt_listar);
        
        $this->form->addField($bt_listar);
        
        // add the form to the page
        parent::add($this->form);
    }
    
    
    
    
    function onReload($param){
    
    }

    function salvar_dados()
    {
        try
        {
            // open a transaction with database 'semed'
            TTransaction::open('semed');
            
            // get the form data into an active record fichadtc
            $object = $this->form->getData('fichadtc');
            
            
            //Técnicos
            $tx_tecnicos = '';
            
            if($object->rd_adriano[0]){
             $tx_tecnicos .= 'Adriano;';
            }
            
            if($object->rd_danilo[0]){
             $tx_tecnicos .= 'Danilo;';
            }
            
            if($object->rd_herlan[0]){
             $tx_tecnicos .= 'Herlan;';
            }
            
            if($object->rd_benilson[0]){
             $tx_tecnicos .= 'Benilson;';
            }
            
            if($object->rd_wathson[0]){
             $tx_tecnicos .= 'Wathson;';
            }
            
            if($object->rd_jonnathan[0]){
             $tx_tecnicos .= 'Jonnathan;';
            }
            
            if($object->rd_izaque[0]){
             $tx_tecnicos .= 'Izaque;';
            }
            
            if($object->rd_uelque[0]){
             $tx_tecnicos .= 'Uelque;';
            }
            $object->tecnicos = $tx_tecnicos;  
            
                        
            //Categorias
            $tx_servicos = '';
            
            if($object->rd_virus[0]){
              $tx_servicos .= 'Vírus;';
             }
             
            if($object->rd_sistema[0]){
              $tx_servicos .= 'Sistema;';
             }
             
            if($object->rd_software[0]){
              $tx_servicos .= 'Software;';
             }
             
            if($object->rd_rede[0]){
              $tx_servicos .= 'Rede;';
             }
             
            if($object->rd_impressoras[0]){
              $tx_servicos .= 'Impressoras;';
             }
             
            if($object->rd_internet[0]){
              $tx_servicos .= 'Internet;';
             }
             
            if($object->rd_equipamentos[0]){
              $tx_servicos .= 'Equipamentos;';
             }
             
            if($object->rd_outros[0]){
              $tx_servicos .= 'Outros;';
             }
             
            $object->categorias = $tx_servicos;
            
            $object->dataservico = TDate::date2us($object->dataservico);
            //$object->agendado = TDate::date2us($object->agendado);            
            $object->emergencial = $object->emergencial[0];
            
            // form validation
            $this->form->validate();
            
            // stores the object
            $object->store();
            
            $object->dataservico = TDate::date2br($object->dataservico);
            
            // set the data back to the form
            $this->form->setData($object);
            
            // close the transaction
            TTransaction::close();
            
            // shows the success message
            new TMessage('info', TAdiantiCoreTranslator::translate('Record saved'));
            // reload the listing
        }
        catch (Exception $e) // in case of exception
        {
            // shows the exception error message
            new TMessage('error', '<b>Error</b> ' . $e->getMessage());
            // undo all pending operations
            TTransaction::rollback();
        }
    }


    function novo($param = NULL)
    {
        try
        {
            // open a transaction with database 'semed'
            TTransaction::open('semed');
            
            // creates a repository for fichadtc
            $repository = new TRepository('fichadtc');
            $limit = 10;
            // creates a criteria
            $criteria = new TCriteria;
            $criteria->setProperties($param); // order, offset
            $criteria->setProperty('limit', $limit);
            
            if (TSession::getValue('fichadtc_filter'))
            {
                // add the filter stored in the session to the criteria
                $criteria->add(TSession::getValue('fichadtc_filter'));
            }
            
            // load the objects according to criteria
            $objects = $repository->load($criteria);
            
            if ($objects)
            {
                // iterate the collection of active records
                foreach ($objects as $object)
                {
                    // add the object inside the datagrid
               
                }
            }
            
            // reset the criteria for record count
            $criteria->resetProperties();
            $count= $repository->count($criteria);
            
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
    
    
    function excluir($param)
    {
        // get the parameter $key
        $key=$param['key'];
        
        // define two actions
        $action = new TAction(array($this, 'Delete'));
        
        // define the action parameters
        $action->setParameter('key', $key);
        
        // shows a dialog to the user
        new TQuestion(TAdiantiCoreTranslator::translate('Do you really want to delete ?'), $action);
    }
    
    /**
     * method Delete()
     * Delete a record
     */
   function Deletar($param)
    {
        try
        {
            // get the parameter $key
            $key=$param['id'];
            
            // open a transaction with database 'semed'
            TTransaction::open('semed');
            
            // instantiates object fichadtc
            $object = new fichadtc($key);
            
            // deletes the object from the database
            $object->delete();
            
            // close the transaction
            TTransaction::close();
            
            // reload the listing
            $this->onReload();
            // shows the success message
            new TMessage('info', TAdiantiCoreTranslator::translate('Record deleted'));
        }
        catch (Exception $e) // in case of exception
        {
            // shows the exception error message
            new TMessage('error', '<b>Error</b> ' . $e->getMessage());
            // undo all pending operations
            TTransaction::rollback();
        }
    }
    
   
    
    
    public function onEdit($param){
     // open a transaction with database 'semed'
     TTransaction::open('semed');
     $key = $param['key'];
     $object = new Fichadtc($key);
     
     $arr = explode(';', $object->tecnicos);
     
     foreach($arr as $valor) {
      if($valor=='Adriano')  {$object->rd_adriano   = array(1);}
      if($valor=='Danilo')   {$object->rd_danilo    = array(1);}
      if($valor=='Herlan')   {$object->rd_herlan    = array(1);}
      if($valor=='Uelque')   {$object->rd_uelque    = array(1);}
      if($valor=='Benilson') {$object->rd_benilson  = array(1);}
      if($valor=='Wathson')  {$object->rd_wathson   = array(1);}
      if($valor=='Jonnathan'){$object->rd_jonnathan = array(1);}
      if($valor=='Izaque')   {$object->rd_izaque    = array(1);}
     }
     
     $arr = explode(';', $object->categorias);
     
     foreach($arr as $valor) {
      if($valor=='Vírus')       {$object->rd_virus         = array(1);}
      if($valor=='Sistema')     {$object->rd_sistema       = array(1);}
      if($valor=='Software')    {$object->rd_software      = array(1);}
      if($valor=='Impressoras') {$object->rd_impressoras   = array(1);}
      if($valor=='Internet')    {$object->rd_internet      = array(1);}
      if($valor=='Equipamentos'){$object->rd_equipamentos  = array(1);}
      if($valor=='Outros')      {$object->rd_outros        = array(1);}      
     }
     
     $object->dataservico = TDate::date2br($object->dataservico); 
     
  
     
     $this->form->setData($object);
     TTransaction::close();
    }
    
    function imprimeFicha($param) {
     
     try
       {
        $data = $this->form->getData();
        $this->form->validate();
        
        //print_r($data);
            
        $designer = new TPDFDesigner;
        $designer->fromXml('app/reports/ficha_pronta.pdf.xml');
        //$designer->replace('{name}', $data->name );
        $designer->generate();
        
        
            
      
        $designer->gotoAnchorXY('tx_nomeinstituicao');
        $designer->SetFontColorRGB('#000000');
        $designer->SetFont('Arial', 'B', 14);
        $designer->Write(20,utf8_decode($data->nomeinstituicao));
        
        $designer->gotoAnchorXY('tx_data');
        $designer->SetFontColorRGB('#000000');
        $designer->SetFont('Arial', 'B', 14);
        //$data->dataservico = TDate::date2br($data->dataservico);
        $designer->Write(20,utf8_decode($data->dataservico));
        
        $designer->gotoAnchorXY('tx_observacao');
        $designer->SetFontColorRGB('#000000');
        $designer->Write(20,utf8_decode($data->observacoes));
        
        $designer->gotoAnchorXY('tx_detalhes');
        $designer->SetFont('Arial', 'B', 12);
        $designer->SetFontColorRGB('#000000');
        //$designer->Write(20,utf8_decode($data->detalhes));       
        $designer->MultiCell(550, 15, utf8_decode($data->detalhes), 0, 'left', 0);
        
        // Lista de Técnicos
        
        if($data->rd_adriano[0]){
         $designer->gotoAnchorXY('tx_adriano');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_danilo[0]){
         $designer->gotoAnchorXY('tx_danilo');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_herlan[0]){
         $designer->gotoAnchorXY('tx_herlan');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_uelque[0]){
         $designer->gotoAnchorXY('tx_uelque');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_benilson[0]){
         $designer->gotoAnchorXY('tx_benilson');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_jonnathan[0]){
         $designer->gotoAnchorXY('tx_jonnathan');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_izaque[0]){
         $designer->gotoAnchorXY('tx_izaque');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_wathson[0]){
         $designer->gotoAnchorXY('tx_wathson');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
         
        // ----------------------------------------
        
        
        // Lista de Categorias
        
        if($data->rd_virus[0]){
         $designer->gotoAnchorXY('tx_virus');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }    
        
        if($data->rd_sistema[0]){
         $designer->gotoAnchorXY('tx_sistemaoperacional');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_software[0]){
         $designer->gotoAnchorXY('tx_software');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_rede[0]){
         $designer->gotoAnchorXY('tx_rede');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
    
        if($data->rd_impressoras[0]){
         $designer->gotoAnchorXY('tx_impressoras');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_internet[0]){
         $designer->gotoAnchorXY('tx_internet');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_equipamentos[0]){
         $designer->gotoAnchorXY('tx_equipamentos');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
        
        if($data->rd_outros[0]){
         $designer->gotoAnchorXY('tx_outros');
         $designer->SetFont('Arial', 'B', 12);
         $designer->SetFontColorRGB('#000000');
         $designer->Write(20,utf8_decode('X'));
        }
       
       //--------------------------------------------
        
            
        $file = 'app/output/fichaTecnica.pdf';
        
        unlink($file);
        
        
        
            
        if (!file_exists($file) OR is_writable($file))
         {
          $designer->save($file);

           parent::openFile($file);             
           
          /* 
           $window = TWindow::create('Ficha Técnica', 0.9, 0.9);
           
          
           $iframe = new TElement('iframe');
           $iframe->src = $file;
           $iframe->style = 'width:100%; height:100%;border:0px;';           
           $window->add($iframe);
           
           
           $window->show();
           
           */
          }
        else
         {
          throw new Exception(_t('Permission denied') . ': ' . $file);
         }
          
         //new TMessage('info', 'Report generated. Please, enable popups in the browser (just in the web).');
        }
        catch (Exception $e) // in case of exception
        {
            new TMessage('error', '<b>Error</b> ' . $e->getMessage());
        }
    }
    
    static function hora_atual()
    {
    
     $diasemana = array('Domingo', 'Segunda-Feira', 'Terça-Feira', 'Quarta-Feira', 'Quinta-Feira', 'Sexta-Feira', 'Sabado');
     $data = date('Y-m-d');
     $diasemana_numero = date('w', strtotime($data));
     //echo $diasemana[$diasemana_numero];
     $hora = date('H:i:s A');
     $tx = $diasemana[$diasemana_numero] . ', ' . $hora;
     TScript::create("$('input[name=observacoes]' ).val('$tx');");                       
    
    }
    /**
     * method show()
     * Shows the page
     */
    function show()
    {
        // check if the datagrid is already loaded
        if (!$this->loaded)
        {
            $this->novo();
        }
        parent::show();
    }

}