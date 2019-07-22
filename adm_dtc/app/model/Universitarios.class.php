<?php
/**
 * Universitarios Active Record
 * @author  <your-name-here>
 */
class Universitarios extends TRecord
{
    const TABLENAME = 'universitarios';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'max'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('ncarteira');
        parent::addAttribute('nome');
        parent::addAttribute('curso');
        parent::addAttribute('universidade');
        parent::addAttribute('segunda');
        parent::addAttribute('terca');
        parent::addAttribute('quarta');
        parent::addAttribute('quinta');
        parent::addAttribute('sexta');
        parent::addAttribute('sabado');
        parent::addAttribute('telefone1');
        parent::addAttribute('telefone2');
        parent::addAttribute('observacoes');
        parent::addAttribute('espera');
    }


}
