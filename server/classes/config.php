<?
/* 
 * Author: Francisco Javier Henseleit Palma
 * Company: MCAST
 * Configuration Class Pineaple
 */

class Config extends Db {
  public $key;
  private $DB_SERVER; 
  private $DB_SERVER_USERNAME;
  private $DB_SERVER_PASSWORD;
  private $DB_DATABASE;

  function __construct() {
      $this->_setConfig();
  }

  private function _setConfig() {
    $dir = new DirectoryIterator(dirname(__FILE__));
    $config = parse_ini_file($dir -> getPath()."/.config");
    $this->DB_SERVER = $config["SERVER"];
    $this->DB_SERVER_USERNAME = $config["USERNAME"];
    $this->DB_SERVER_PASSWORD = $config["PASSWORD"];
    $this->DB_DATABASE = $config["DATABASE"];
  }

  public function get($var){
      switch($var){
       
       case "DB_SERVER":
        return($this->DB_SERVER);
       break;
       
       case "DB_SERVER_USERNAME":
        return($this->DB_SERVER_USERNAME);
       break;
       
       case "DB_SERVER_PASSWORD":
        return($this->DB_SERVER_PASSWORD);
       break;
       
       case "DB_DATABASE":
        return($this->DB_DATABASE);
       break;
      }
  }
}
?>