<?php
namespace SGE\Session;

/**
 * Gerencia o registro da seção
 *
 */
class Session
{
    /**
     * inicializa uma seção
     */
    public function __construct()
    {
        if (!session_id())
        {
            session_start();
        }
    }

    /**
     * Armazena uma variável na seção
     * @param $var     = Nome da variável
     * @param $value = Valor
     */
    public static function setValue($var, $value)
    {
        $_SESSION[$var] = $value;
    }

    /**
     * Retorna uma variável da seção
     * @param $var = Nome da variável
     */
    public static function getValue($var)
    {
        if (isset($_SESSION[$var]))
        {
            return $_SESSION[$var];
        }
    }

    /**
     * Destrói os dados de uma seção
     */
    public static function freeSession()
    {
        $_SESSION = array();
        session_destroy();
    }
}
