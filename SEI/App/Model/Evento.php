<?php
use Livro\Database\Record;
use Livro\Database\Criteria;
use Livro\Database\Repository;
use Livro\Database\Transaction;

class Evento extends Record
{
    const TABLENAME = 'evento';

    public static function getlike($str){

        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM evento WHERE nome LIKE '%$str%'";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            return $result->fetchObject(__CLASS__);
        }

    }

    public static function last(){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM evento ORDER BY id DESC LIMIT 1";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            return $result->fetchObject(__CLASS__);
        }else{
            return array("id"=>1);
        }
    }
    
    public function fromArray2($dados){
        $aux = array(
            "nome"=>$dados['nome'],
            "descricao"=>$dados['descricao'],
            "duracao"=>$dados['duracao'],
            "palestrante"=>$dados['palestrante'],
            "mini"=>$dados['mini'],
            "inicio"=>$dados['inicio'],
            "fim"=>$dados['fim'],
            "dia_dataDia"=>$dados['dia_dataDia']
        );
        $this->data = $aux;
    }

    public function verify(){
        if(empty($this->data['nome'])){
            throw new Exception('Nome não preenchido');
        }
        if(empty($this->data['descricao'])){
            throw new Exception('Descricao não preenchida');
        }
        if(empty($this->data['palestrante'])){
            throw new Exception('Palestrante não preenchido');
        }
        if(empty($this->data['mini'])){
            throw new Exception('Mini Curriculo não preenchido');
        }
        if(empty($this->data['sala'])){
            throw new Exception('Sala não preenchida');
        }
        if(empty($this->data['inicio'])){
            throw new Exception('Hora de Inicio não preenchida');
        }
        if(empty($this->data['fim'])){
            throw new Exception('Hora de Termino não preenchida');
        }
        if(empty($this->data['dia_dataDia'])){
            throw new Exception('Dia não preenchido');
        }
        if(empty($this->data['tipo'])){
            throw new Exception('Tipo não preenchido');
        }
        if(!empty($this->data['sala'])){
            $sala = strtoupper($this->data['sala']);
            $this->data['sala'] = $sala;
            $sala = Sala::find2($sala);
            if($sala){
                if(!$this->timeCheck()){
                    throw new Exception('Esta Sala Já esta sendo utilizada por outro evento Nesta Data e Horário');
                }
            }else{
                throw new Exception('Esta Sala não existe ou Não esta disponivel para Receber um evento');
            }
        }
    }

    public function timeCheck(){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sala = $this->data['sala'];
        $dia = $this->data['dia_dataDia'];
        $inicio = $this->data['inicio'];
        $fim = $this->data['fim'];
        $id = $this->data['id'];
        if($this->data['id'] != ""){
            $sql = "SELECT * FROM evento e JOIN evento_has_sala es ON e.id = es.evento_id WHERE es.evento_dia_dataDia='$dia' AND es.sala_nome='$sala' AND (e.inicio <= '$fim' AND e.fim >= '$inicio') AND e.id<>$id ";
        }
        if($this->data['id'] == ""){
            $sql = "SELECT * FROM evento e JOIN evento_has_sala es ON e.id = es.evento_id WHERE es.evento_dia_dataDia='$dia' AND es.sala_nome='$sala' AND (e.inicio <= '$fim' AND e.fim >= '$inicio')";
        }
        $result = $aux->query($sql);
        if($result->rowCount() > 0){
            return false;
        }
        return true;
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
     * Adiciona um grupo à atividade
     */
    public function addTipo(Tipo $tipo)
    {
        $pg = new AtividadeTipo;
        $pg->tipo_id = $tipo->id;
        $pg->evento_id = $this->id;
        $pg->store();
    }
    
    /**
     * Exclui os tipos da atividade
     */
    public function delTipos()
    {
	    $criteria = new Criteria;
	    $criteria->add('evento_id', '=', $this->id);
	    
	    $repo = new Repository('AtividadeTipo');
	    return $repo->delete($criteria);
    }
    
    /**
     * Retorna os tipos da atividade
     */
    public function getTipos()
    {
        $tipos = array();
	    $criteria = new Criteria;
	    $criteria->add('evento_id', '=', $this->id);
	    
	    $repo = new Repository('AtividadeTipo');
	    $vinculos = $repo->load($criteria);
	    if ($vinculos) {
	        foreach ($vinculos as $vinculo) {
	            $tipos[] = new Grupo($vinculo->id_tipo);
	        }
	    }
	    return $tipos;
    }
    
    /**
     * Retorna os ID's de tipos da atividade
     */
    public function getIdsTipos()
    {
        $tipos_ids = array();
	    $tipos = $this->getTipos();
	    if ($tipos) {
	        foreach ($tipos as $tipo) {
	            $tipos_ids[] = $tipo->id;
	        }
	    }
	    
	    return $tipos_ids;
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
