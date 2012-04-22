<?
class Db extends Server {
    public $key;
    function __construct() {
        include "classes/config.php";
        $this->Config = new Config();
    }


    public function conectara_bd() {
        $con = mysql_connect(
        $this->Config->get("DB_SERVER"),
        $this->Config->get("DB_SERVER_USERNAME"),
        $this->Config->get("DB_SERVER_PASSWORD")
        ) or die 
        ("if you are reading this, something went REALLY wrong");        
        mysql_select_db($this->Config->get("DB_DATABASE",$this->key),$con) or die ("Error en DB");
        return $con;
    }

    public function desconectar_db()
    {
        mysql_close();
    }

    public function fetch_array($array)   
    {
        return mysql_fetch_array($array);
    }

    public function query($query) 
    {
        return mysql_query($query);   
    }

    public function escape_string($string) 
    {
        return mysql_escape_string($string);
    }

    public function insert_id() {
        return mysql_insert_id();   
    }

    public function close() 
    {
        return mysql_close();  
    }

    public function connect() 
    {
        return mysql_connect($this->Config->get("DB_SERVER"),$this->config->get("DB_SERVER_USERNAME"),$this->Config->get("DB_SERVER_PASSWORD")) or die ("ERROR CRITICO: Por favor contactarse con <a href='http://support.mcast.cl'>plataforma soporte MCAST</a>");
    }

    public function select_db($CON) 
    {
        return mysql_select_db($this->Config->get("DB_SERVER"),$CON);
    }

    public function errno() 
    {
        return mysql_errno();
    }
	
	public function exeQ($querry) {
        try {
            $this->conectara_bd();
            $a = $this->query($querry) or die ($this->errno());
            $this->desconectar_db();
            return $a;
        } catch( Exception $e ) { 
            echo( $e->getMessage());
            return false;
        }    
    }

}
?>