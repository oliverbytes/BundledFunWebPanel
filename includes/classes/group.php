<?php 
require_once(INCLUDES_PATH.DS."config.php");
require_once(CLASSES_PATH.DS."database.php");

class Group extends DatabaseObject{
	
	// TABLE tbl_groups PROPERTIES
	protected static $table_name = T_GROUPS;
	protected static $col_id = C_GROUP_UNIQUE_ID;
	
	// GROUP PROPERTIES
	public $id;
	public $name;
	public $username;
	public $password;
	
	public function create(){
		global $db;
		$sql = "INSERT INTO " . self::$table_name . " (";
		$sql .= C_GROUP_NAME 		.", ";
		$sql .= C_GROUP_USERNAME 	.", ";
		$sql .= C_GROUP_PASSWORD;
		$sql .=") VALUES ('";
		$sql .= $db->escape_string($this->name) 	. "', '";
		$sql .= $db->escape_string($this->username) . "', '";
		$sql .= $db->escape_string($this->password) . "' ";
		$sql .=")";

		if($db->query($sql)){
			$this->id = $db->get_last_id();
			return true;
		}else{
			return false;	
		}
	}
	
	public function update(){
		global $db;
		$sql = "UPDATE " 			. self::$table_name . " SET ";
		$sql .= C_GROUP_NAME 		. "='" . $db->escape_string($this->name) 	. "', ";
		$sql .= C_GROUP_USERNAME 	. "='" . $db->escape_string($this->username). "', ";
		$sql .= C_GROUP_PASSWORD 	. "='" . $db->escape_string($this->password). "' ";
		$sql .="WHERE " . self::$col_id . "=" . $db->escape_string($this->id) 	. "";
		$db->query($sql);
		return ($db->get_affected_rows() == 1) ? true : false;
	}
	
	public function delete(){
		global $db;
		$sql = "DELETE FROM " . self::$table_name . " WHERE " . self::$col_id . "=" . $this->id . "";
		$db->query($sql);
		return ($db->get_affected_rows() == 1) ? true : false;
	}
	
	public static function authenticate($username="", $password=""){
		global $db;
		$username = $db->escape_string($username);
		$password 	= $db->escape_string($password);
		
		$sql = "SELECT * FROM " . self::$table_name;
		$sql .= " WHERE " 	. C_GROUP_USERNAME . " = '" . $username . "'";
		$sql .= " AND " 	. C_GROUP_PASSWORD . " = '" . $password . "'";
		$sql .= " LIMIT 1";

		$result_array = self::get_by_sql($sql);
		
		$errors = new Error();
		$errors->exceptions = "does not exists";

		return !empty($result_array) ? json_encode($result_array) : json_encode(array($errors));
	}
	
	protected static function instantiate($record){
		$this_class = new self;
		$this_class->id 		= $record[C_GROUP_UNIQUE_ID];
		$this_class->name 		= $record[C_GROUP_NAME];
		$this_class->username 	= $record[C_GROUP_USERNAME];
		$this_class->password 	= $record[C_GROUP_PASSWORD];
		return $this_class;
	}
	
	public static function username_exists($username){
		global $db;
		$sql = "SELECT * FROM " . self::$table_name . " WHERE " . C_GROUP_USERNAME . " = '" . $username . "' ";
		$result = $db->query($sql);
		return ($db->get_num_rows($result) == 1) ? true : false;
	}

	public static function get($username){
		global $db;
		$sql = "SELECT * FROM " . self::$table_name . " WHERE " . C_GROUP_USERNAME . " = '" . $username . "' LIMIT 1";
		$result = self::get_by_sql($sql);
		return array_shift($result);
	}

	public static function group_exists($parameter){
		global $db;
		if(is_numeric($parameter)){
			$sql = "SELECT * FROM " . self::$table_name . " WHERE " . self::$col_id . " = '" . $parameter . "' ";
		}else{
			$sql = "SELECT * FROM " . self::$table_name . " WHERE " . C_GROUP_NAME . " = '" . $parameter . "' ";
		}
		$result = $db->query($sql);
		return ($db->get_num_rows($result) == 1) ? true : false;
	}
}

?>