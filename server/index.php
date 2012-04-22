<?

if (array_key_exists('g', $_POST) || array_key_exists('r', $_POST)) {

	class Server { 
		public function __construct() {
			include "classes/db.php";
			$this->Db = new Db();
		}

		public function reply() {
			

		}

		public function query($_POST) {

			switch ($_POST['r']) {
				case 'getList':
					$this->getList($_POST['pos'],$_POST['elv'],$_POST['ph'],$_POST['water']);
					break;
				
				default:
					# code...
					break;
			}
		}

		private function getList($pos,$elv,$ph,$water) {
			if (is_numeric($elv) && is_array($pos)) {
			$arr = array();
			$query = "SELECT * 
					FROM  `cult` 
					INNER JOIN distric ON cult.ID_CUL = distric.`ID_DIS` 
					WHERE  `LAT_1_DIS` >=".$pos['lat']." AND  `LAT_2_DIS` <=".$pos['lat']."
					AND  `ELEVATION_LOW_CUL` <=".$elv."	AND  `ELEVATION_HIGH_CUL` >= ".$elv;
					if ($ph != "null") {
					$query = $query." AND SOIL_PH_MIN_CUL <= ".$ph." AND SOIL_PH_MAX_CUL >= ".$ph;
					}
					if ($water != "null") {
					$query = $query." AND  `PRECIPITATION_MIN_CUL` <= ".$water." AND `PRECIPITATION_MAX_CUL` >= ".$water;
					}
			$query = $this->Db->exeQ($query);
			while ($r = $this->Db->fetch_array($query)) {
				$arr[] = $r;
				
			}
			echo json_encode($arr);
			}
		}

		private function getData() {

		}

		public function newCult() {



		}

	}

	$serv = new Server();
	$serv->query($_POST);
}


?>