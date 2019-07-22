<?php
use Livro\Database\Record;
use Livro\Database\Criteria;
use Livro\Database\Repository;
use Livro\Database\Transaction;

class Pessoa extends Record
{
    const TABLENAME = 'pessoa';
    // @param [$cpf] cpf do da pessoa Description
    public static function find2($cpf)
    {
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM pessoa WHERE cpf=$cpf";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            return $result->fetchObject(__CLASS__);
        }
    }

    public static function delete2($cpf)
    {
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "DELETE FROM pessoa_has_grupo WHERE pessoa_cpf=$cpf";
        Transaction::log($sql);
        $result = $aux->exec($sql);
        $sql = "DELETE FROM pessoa WHERE cpf=$cpf";
        Transaction::log($sql);
        $result = $aux->exec($sql);
        return $result;
    }
    /* private $cidade; */
    /**
     * Retorna a cidade.
     * Executado sempre se for acessada a propriedade "->cidade"
     */
   /*  public function get_cidade()
    {
        if (empty($this->cidade))
            $this->cidade = new Cidade($this->id_cidade);
        
        return $this->cidade;
    } */
    
    /**
     * Retorna o nome da cidade.
     * Executado sempre se for acessada a propriedade "->nome_cidade"
     */
   /*  public function get_nome_cidade()
    {
        if (empty($this->cidade))
            $this->cidade = new Cidade($this->id_cidade);
        
        return $this->cidade->nome;
    } */
    
    /**
     * Adiciona um grupo à pessoa
     */
    public function addGrupo(Grupo $grupo)
    {
        $pg = new PessoaGrupo;
        $pg->grupo_id = $grupo->id;
        $pg->pessoa_cpf = $this->cpf;
        $pg->store();
    }
    
    /**
     * Exclui os grupos da pessoa
     */
    public function delGrupos()
    {
	    $criteria = new Criteria;
	    $criteria->add('pessoa_cpf', '=', $this->cpf);
	    
	    $repo = new Repository('PessoaGrupo');
	    return $repo->delete($criteria);
    }
    
    /**
     * Retorna os grupos da pessoa
     */
    public function getGrupos()
    {
        $grupos = array();
	    $criteria = new Criteria;
	    $criteria->add('pessoa_cpf', '=', $this->cpf);
	    
	    $repo = new Repository('PessoaGrupo');
	    $vinculos = $repo->load($criteria);
	    if ($vinculos) {
	        foreach ($vinculos as $vinculo) {
	            $grupos[] = new Grupo($vinculo->grupo_id);
	        }
	    }
	    return $grupos;
    }
    
    /**
     * Retorna os ID's de grupos da pessoa
     */
    public function getIdsGrupos()
    {
        $grupos_ids = array();
	    $grupos = $this->getGrupos();
	    if ($grupos) {
	        foreach ($grupos as $grupo) {
	            $grupos_ids[] = $grupo->id;
	        }
	    }
	    
	    return $grupos_ids;
    }
    
    /**
     * Retorna as contas em aberto
     */
    /* public function getContasEmAberto()
    {
        return Conta::getByPessoa($this->id);
    } */
    
    /**
     * Retorna o total em débitos
     */
   /*  public function totalDebitos()
    {
        return Conta::debitosPorPessoa($this->id);
    } */
}
