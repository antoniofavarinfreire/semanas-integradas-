<?php
/**
 * Fichaatual Active Record
 * @author  <your-name-here>
 */
class Fichaatual extends TRecord
{
    const TABLENAME = 'fichaatual';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'max'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('inep');
        parent::addAttribute('nomeinstituicao');
        parent::addAttribute('dataservico');
        parent::addAttribute('observacoes');
        parent::addAttribute('tecnicos');
        parent::addAttribute('categorias');
        parent::addAttribute('detalhes');
    }


}
