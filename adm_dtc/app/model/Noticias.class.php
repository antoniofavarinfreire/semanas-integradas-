<?php
/**
 * Noticias Active Record
 * @author  <your-name-here>
 */
class Noticias extends TRecord
{
    const TABLENAME = 'noticias';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'max'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('fotoMobile');
        parent::addAttribute('tituloMobile');
        parent::addAttribute('larguraMobile');
        parent::addAttribute('alturaMobile');
        parent::addAttribute('arquivo');
        parent::addAttribute('fotoDesktop');
        parent::addAttribute('alturaDesktop');
        parent::addAttribute('larguraDesktop');
        parent::addAttribute('tituloDesktop');
        parent::addAttribute('datapublicacao');
        parent::addAttribute('visivel');
    }
}
