<?php
/**
 * DtcFichatecnica Active Record
 * @author  <your-name-here>
 */
class DtcFichatecnica extends TRecord
{
    const TABLENAME = 'dtc_fichatecnica';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'max'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('instituicao');
        parent::addAttribute('data');
        parent::addAttribute('observacoes');
        parent::addAttribute('tecnicos');
        parent::addAttribute('agendado');
        parent::addAttribute('emergencial');
        parent::addAttribute('virus');
        parent::addAttribute('sistema');
        parent::addAttribute('software');
        parent::addAttribute('rede');
        parent::addAttribute('impressora');
        parent::addAttribute('internet');
        parent::addAttribute('equipamentos');
        parent::addAttribute('detalhes');
    }


}
