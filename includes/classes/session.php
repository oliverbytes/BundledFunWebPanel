<?php 
error_reporting(E_ALL);

class Session{
	
	private $logged_in;
	public $group_unique_id;
	
	function __construct(){
		session_start();
		$this->check_login();
	}

	private function check_login(){
		if(isset($_SESSION[C_GROUP_UNIQUE_ID])){
			$this->group_unique_id = $_SESSION[C_GROUP_UNIQUE_ID];
			$this->logged_in = true;
		}else{
			unset($this->group_unique_id);
			$this->logged_in = false;
		}
	}
	
	public function is_logged_in(){
		return $this->logged_in;
	}
	
	public function login($group){
		if($group){
			$this->group_unique_id = $_SESSION[C_GROUP_UNIQUE_ID] = $group->id;
		}
	}
	
	public function logout(){
		unset($_SESSION[C_GROUP_UNIQUE_ID]);
		unset($this->user_unique_id);
		unset($this->user_level);
		unset($this->last_position_loaded);
		$this->logged_in = false;
	}
}
$session = new Session();

?>